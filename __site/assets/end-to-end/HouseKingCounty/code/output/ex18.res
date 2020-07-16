XGBoostRegressor(
    num_round = 100,
    booster = "gbtree",
    disable_default_eval_metric = 0,
    eta = 0.3,
    gamma = 0.0,
    max_depth = 6,
    min_child_weight = 1.0,
    max_delta_step = 0.0,
    subsample = 1.0,
    colsample_bytree = 1.0,
    colsample_bylevel = 1.0,
    lambda = 1.0,
    alpha = 0.0,
    tree_method = "auto",
    sketch_eps = 0.03,
    scale_pos_weight = 1.0,
    updater = "auto",
    refresh_leaf = 1,
    process_type = "default",
    grow_policy = "depthwise",
    max_leaves = 0,
    max_bin = 256,
    predictor = "cpu_predictor",
    sample_type = "uniform",
    normalize_type = "tree",
    rate_drop = 0.0,
    one_drop = 0,
    skip_drop = 0.0,
    feature_selector = "cyclic",
    top_k = 0,
    tweedie_variance_power = 1.5,
    objective = "reg:linear",
    base_score = 0.5,
    eval_metric = "rmse",
    seed = 0) @956