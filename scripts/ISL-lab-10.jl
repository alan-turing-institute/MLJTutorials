# ## Getting started

using MLJ, RDatasets, Random

data = dataset("datasets", "USArrests")
names(data)

# Let's have a look at the mean and standard deviation of each feature:

describe(data, :mean, :std)

# ## PCA pipeline
#
# PCA is usually best done after standardization:

@load PCA pkg=MultivariateStats

@pipeline StdPCA(std = Standardizer(),
                 pca = PCA())

spca_mdl = StdPCA()
spca = machine(spca_mdl, X)
fit!(spca)

W = transform(spca, X);

# W is the PCA'd data; here we've used default settings for PCA and it has recovered 2 components:

schema(W).names

# Let's inspect the fit:

r = report(spca).reports[1]
cumsum(r.principalvars ./ r.tvar)

# In the second line we look at the explained variance with 1 then 2 PCA features and it seems that with 2 we completely recover all  of the variance.
# In other words the actual dimension of the data is 2 and, indeed,

using LinearAlgebra
rank(MLJ.matrix(X))

# ## K-Means Clustering

# **ONGOING**
