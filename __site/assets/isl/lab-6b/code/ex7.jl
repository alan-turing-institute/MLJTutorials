# This file was generated, do not modify it. # hide
using PyPlot
ioff() # hide

figure(figsize=(8,6))
plot(y, ls="none", marker="o")

xticks(fontsize=12); yticks(fontsize=12)
xlabel("Index", fontsize=14), ylabel("Salary", fontsize=14)

savefig(joinpath(@OUTPUT, "ISL-lab-6-g1.svg")) # hide