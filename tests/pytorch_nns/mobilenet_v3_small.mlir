#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<() -> ()>
#map4 = affine_map<(d0, d1, d2, d3) -> ()>
#map5 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1) -> (d1, d0)>
#map8 = affine_map<(d0, d1) -> (0, d1)>
#map9 = affine_map<(d0, d1) -> (d1)>
#map10 = affine_map<(d0, d1) -> ()>
module attributes {torch.debug_module_name = "MobileNetV3"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_0 = arith.constant dense<-0.009494e+00> : tensor<1000x1024xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_2 = arith.constant dense<0.020922e+00> : tensor<1024x576xf32>
    %cst_3 = arith.constant dense<-0.013012e+00> : tensor<576x96x1x1xf32>
    %cst_4 = arith.constant dense<-0.001885e+00> : tensor<96x576x1x1xf32>
    %cst_5 = arith.constant dense<-0.002164e+00> : tensor<576x144x1x1xf32>
    %cst_6 = arith.constant dense<-0.016178e+00> : tensor<144x576x1x1xf32>
    %cst_7 = arith.constant dense<-0.003873e+00> : tensor<576x1x5x5xf32>
    %cst_8 = arith.constant dense<0.011599e+00> : tensor<576x96x1x1xf32>
    %cst_9 = arith.constant dense<-0.004580e+00> : tensor<96x576x1x1xf32>
    %cst_10 = arith.constant dense<0.008174e+00> : tensor<576x144x1x1xf32>
    %cst_11 = arith.constant dense<0.007857e+00> : tensor<144x576x1x1xf32>
    %cst_12 = arith.constant dense<-0.008043e+00> : tensor<576x1x5x5xf32>
    %cst_13 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_15 = arith.constant dense<0.004290e+00> : tensor<576x96x1x1xf32>
    %cst_16 = arith.constant dense<0.003249e+00> : tensor<96x288x1x1xf32>
    %cst_17 = arith.constant dense<0.018519e+00> : tensor<288x72x1x1xf32>
    %cst_18 = arith.constant dense<-0.016736e+00> : tensor<72x288x1x1xf32>
    %cst_19 = arith.constant dense<0.005395e+00> : tensor<288x1x5x5xf32>
    %cst_20 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_22 = arith.constant dense<0.005436e+00> : tensor<288x48x1x1xf32>
    %cst_23 = arith.constant dense<0.001834e+00> : tensor<48x144x1x1xf32>
    %cst_24 = arith.constant dense<-0.002064e+00> : tensor<144x40x1x1xf32>
    %cst_25 = arith.constant dense<-0.008459e+00> : tensor<40x144x1x1xf32>
    %cst_26 = arith.constant dense<0.002915e+00> : tensor<144x1x5x5xf32>
    %cst_27 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_29 = arith.constant dense<0.015870e+00> : tensor<144x48x1x1xf32>
    %cst_30 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_32 = arith.constant dense<0.006330e+00> : tensor<48x120x1x1xf32>
    %cst_33 = arith.constant dense<-0.006128e+00> : tensor<120x32x1x1xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_35 = arith.constant dense<-0.005150e+00> : tensor<32x120x1x1xf32>
    %cst_36 = arith.constant dense<-0.000854e+00> : tensor<120x1x5x5xf32>
    %cst_37 = arith.constant dense<1.000000e+00> : tensor<120xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<120xf32>
    %cst_39 = arith.constant dense<-0.003395e+00> : tensor<120x40x1x1xf32>
    %cst_40 = arith.constant dense<0.028387e+00> : tensor<40x240x1x1xf32>
    %cst_41 = arith.constant dense<0.000542e+00> : tensor<240x64x1x1xf32>
    %cst_42 = arith.constant dense<0.005613e+00> : tensor<64x240x1x1xf32>
    %cst_43 = arith.constant dense<-0.014529e+00> : tensor<240x1x5x5xf32>
    %cst_44 = arith.constant dense<0.000449e+00> : tensor<240x40x1x1xf32>
    %cst_45 = arith.constant dense<0.001041e+00> : tensor<40x240x1x1xf32>
    %cst_46 = arith.constant dense<-0.008863e+00> : tensor<240x64x1x1xf32>
    %cst_47 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_48 = arith.constant dense<0.008498e+00> : tensor<64x240x1x1xf32>
    %cst_49 = arith.constant dense<-0.007435e+00> : tensor<240x1x5x5xf32>
    %cst_50 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_52 = arith.constant dense<0.011112e+00> : tensor<240x40x1x1xf32>
    %cst_53 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_55 = arith.constant dense<0.011333e+00> : tensor<40x96x1x1xf32>
    %cst_56 = arith.constant dense<0.003120e+00> : tensor<96x24x1x1xf32>
    %cst_57 = arith.constant dense<-0.005233e+00> : tensor<24x96x1x1xf32>
    %cst_58 = arith.constant dense<-0.019245e+00> : tensor<96x1x5x5xf32>
    %cst_59 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_60 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_61 = arith.constant dense<0.000197e+00> : tensor<96x24x1x1xf32>
    %cst_62 = arith.constant dense<0.004838e+00> : tensor<24x88x1x1xf32>
    %cst_63 = arith.constant dense<0.005759e+00> : tensor<88x1x3x3xf32>
    %cst_64 = arith.constant dense<1.000000e+00> : tensor<88xf32>
    %cst_65 = arith.constant dense<0.000000e+00> : tensor<88xf32>
    %cst_66 = arith.constant dense<-0.008740e+00> : tensor<88x24x1x1xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_68 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_69 = arith.constant dense<0.014875e+00> : tensor<24x72x1x1xf32>
    %cst_70 = arith.constant dense<0.002181e+00> : tensor<72x1x3x3xf32>
    %cst_71 = arith.constant dense<1.000000e+00> : tensor<72xf32>
    %cst_72 = arith.constant dense<0.000000e+00> : tensor<72xf32>
    %cst_73 = arith.constant dense<0.001201e+00> : tensor<72x16x1x1xf32>
    %cst_74 = arith.constant dense<0.011767e+00> : tensor<16x16x1x1xf32>
    %cst_75 = arith.constant dense<-0.008067e+00> : tensor<16x8x1x1xf32>
    %cst_76 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_77 = arith.constant dense<0.015139e+00> : tensor<8x16x1x1xf32>
    %cst_78 = arith.constant dense<0.018624e+00> : tensor<16x1x3x3xf32>
    %cst_79 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_80 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_81 = arith.constant dense<0.006419e+00> : tensor<16x3x3x3xf32>
    %cst_82 = arith.constant 0.000000e+00 : f32
    %cst_83 = arith.constant 1.000000e-03 : f64
    %cst_84 = arith.constant 3.000000e+00 : f32
    %cst_85 = arith.constant 6.000000e+00 : f32
    %cst_86 = arith.constant 6.400000e+01 : f32
    %cst_87 = arith.constant 4.000000e+00 : f32
    %c6_i64 = arith.constant 6 : i64
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x16x16x16xf32>
    %1 = linalg.fill ins(%cst_82 : f32) outs(%0 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_81 : tensor<1x3x34x34xf32>, tensor<16x3x3x3xf32>) outs(%1 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_79, %cst_80, %cst_80, %cst_79 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%2 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x16x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x16x16x16xf32>
    %7 = tensor.empty() : tensor<i64>
    %8 = linalg.fill ins(%c6_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %9 = tensor.empty() : tensor<f32>
    %10 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%8 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %347 = arith.sitofp %in : i64 to f32
      linalg.yield %347 : f32
    } -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %10 : tensor<1x16x16x16xf32>, tensor<f32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x16x16x16xf32>
    %12 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x16x16xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %4 : tensor<1x16x16x16xf32>, tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x16x16xf32>
    %padded_88 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x16x16x16xf32> to tensor<1x16x18x18xf32>
    %14 = tensor.empty() : tensor<1x16x8x8xf32>
    %15 = linalg.fill ins(%cst_82 : f32) outs(%14 : tensor<1x16x8x8xf32>) -> tensor<1x16x8x8xf32>
    %collapsed = tensor.collapse_shape %cst_78 [[0, 1], [2], [3]] : tensor<16x1x3x3xf32> into tensor<16x3x3xf32>
    %16 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_88, %collapsed : tensor<1x16x18x18xf32>, tensor<16x3x3xf32>) outs(%15 : tensor<1x16x8x8xf32>) -> tensor<1x16x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %17 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %cst_79, %cst_80, %cst_80, %cst_79 : tensor<1x16x8x8xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%16 : tensor<1x16x8x8xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x16x8x8xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<1x16x8x8xf32>) outs(%14 : tensor<1x16x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x16x8x8xf32>
    %19 = tensor.empty() : tensor<1x16x1x1xf32>
    %20 = linalg.fill ins(%cst_82 : f32) outs(%19 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %21 = tensor.empty() : tensor<8x8xf32>
    %22 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%18, %21 : tensor<1x16x8x8xf32>, tensor<8x8xf32>) outs(%20 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_86 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x1x1xf32>
    %24 = tensor.empty() : tensor<1x8x1x1xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_76 : tensor<8xf32>) outs(%24 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%23, %cst_77 : tensor<1x16x1x1xf32>, tensor<8x16x1x1xf32>) outs(%25 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x8x1x1xf32>) outs(%24 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x8x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_80 : tensor<16xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%27, %cst_75 : tensor<1x8x1x1xf32>, tensor<16x8x1x1xf32>) outs(%28 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x1x1xf32>
    %31 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x1x1xf32>
    %32 = linalg.fill ins(%c1_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %33 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%32 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %347 = arith.sitofp %in : i64 to f32
      linalg.yield %347 : f32
    } -> tensor<f32>
    %34 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %31 : tensor<f32>, tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x16x1x1xf32>
    %35 = linalg.fill ins(%c0_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %36 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%35 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %347 = arith.sitofp %in : i64 to f32
      linalg.yield %347 : f32
    } -> tensor<f32>
    %37 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %34 : tensor<f32>, tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x16x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %18 : tensor<1x16x1x1xf32>, tensor<1x16x8x8xf32>) outs(%14 : tensor<1x16x8x8xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x16x8x8xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %cst_74 : tensor<1x16x8x8xf32>, tensor<16x16x1x1xf32>) outs(%15 : tensor<1x16x8x8xf32>) -> tensor<1x16x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_79, %cst_80, %cst_80, %cst_79 : tensor<1x16x8x8xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%39 : tensor<1x16x8x8xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x16x8x8xf32>
    %41 = tensor.empty() : tensor<1x72x8x8xf32>
    %42 = linalg.fill ins(%cst_82 : f32) outs(%41 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_73 : tensor<1x16x8x8xf32>, tensor<72x16x1x1xf32>) outs(%42 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_71, %cst_72, %cst_72, %cst_71 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%43 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x72x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x72x8x8xf32>) outs(%41 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x72x8x8xf32>
    %padded_89 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x72x8x8xf32> to tensor<1x72x10x10xf32>
    %46 = tensor.empty() : tensor<1x72x4x4xf32>
    %47 = linalg.fill ins(%cst_82 : f32) outs(%46 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    %collapsed_90 = tensor.collapse_shape %cst_70 [[0, 1], [2], [3]] : tensor<72x1x3x3xf32> into tensor<72x3x3xf32>
    %48 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_89, %collapsed_90 : tensor<1x72x10x10xf32>, tensor<72x3x3xf32>) outs(%47 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_71, %cst_72, %cst_72, %cst_71 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%48 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x72x4x4xf32>
    %50 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<1x72x4x4xf32>) outs(%46 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x72x4x4xf32>
    %51 = tensor.empty() : tensor<1x24x4x4xf32>
    %52 = linalg.fill ins(%cst_82 : f32) outs(%51 : tensor<1x24x4x4xf32>) -> tensor<1x24x4x4xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%50, %cst_69 : tensor<1x72x4x4xf32>, tensor<24x72x1x1xf32>) outs(%52 : tensor<1x24x4x4xf32>) -> tensor<1x24x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %54 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_67, %cst_68, %cst_68, %cst_67 : tensor<1x24x4x4xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%53 : tensor<1x24x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x24x4x4xf32>
    %55 = tensor.empty() : tensor<1x88x4x4xf32>
    %56 = linalg.fill ins(%cst_82 : f32) outs(%55 : tensor<1x88x4x4xf32>) -> tensor<1x88x4x4xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_66 : tensor<1x24x4x4xf32>, tensor<88x24x1x1xf32>) outs(%56 : tensor<1x88x4x4xf32>) -> tensor<1x88x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_64, %cst_65, %cst_65, %cst_64 : tensor<1x88x4x4xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%57 : tensor<1x88x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x88x4x4xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x88x4x4xf32>) outs(%55 : tensor<1x88x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x88x4x4xf32>
    %padded_91 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x88x4x4xf32> to tensor<1x88x6x6xf32>
    %collapsed_92 = tensor.collapse_shape %cst_63 [[0, 1], [2], [3]] : tensor<88x1x3x3xf32> into tensor<88x3x3xf32>
    %60 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_91, %collapsed_92 : tensor<1x88x6x6xf32>, tensor<88x3x3xf32>) outs(%56 : tensor<1x88x4x4xf32>) -> tensor<1x88x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %61 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_64, %cst_65, %cst_65, %cst_64 : tensor<1x88x4x4xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%60 : tensor<1x88x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x88x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x88x4x4xf32>) outs(%55 : tensor<1x88x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x88x4x4xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_62 : tensor<1x88x4x4xf32>, tensor<24x88x1x1xf32>) outs(%52 : tensor<1x24x4x4xf32>) -> tensor<1x24x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_67, %cst_68, %cst_68, %cst_67 : tensor<1x24x4x4xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%63 : tensor<1x24x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x24x4x4xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %54 : tensor<1x24x4x4xf32>, tensor<1x24x4x4xf32>) outs(%51 : tensor<1x24x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x24x4x4xf32>
    %66 = tensor.empty() : tensor<1x96x4x4xf32>
    %67 = linalg.fill ins(%cst_82 : f32) outs(%66 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_61 : tensor<1x24x4x4xf32>, tensor<96x24x1x1xf32>) outs(%67 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_59, %cst_60, %cst_60, %cst_59 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%68 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x96x4x4xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x96x4x4xf32>) outs(%66 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x96x4x4xf32>) outs(%66 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x96x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %10 : tensor<1x96x4x4xf32>, tensor<f32>) outs(%66 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x96x4x4xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x96x4x4xf32>) outs(%66 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x4x4xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %69 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%66 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_93 = tensor.pad %74 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x8x8xf32>
    %75 = tensor.empty() : tensor<1x96x2x2xf32>
    %76 = linalg.fill ins(%cst_82 : f32) outs(%75 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %collapsed_94 = tensor.collapse_shape %cst_58 [[0, 1], [2], [3]] : tensor<96x1x5x5xf32> into tensor<96x5x5xf32>
    %77 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_93, %collapsed_94 : tensor<1x96x8x8xf32>, tensor<96x5x5xf32>) outs(%76 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %78 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %cst_59, %cst_60, %cst_60, %cst_59 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%77 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x96x2x2xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x96x2x2xf32>) outs(%75 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x2x2xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x96x2x2xf32>) outs(%75 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x96x2x2xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %10 : tensor<1x96x2x2xf32>, tensor<f32>) outs(%75 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x96x2x2xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x96x2x2xf32>) outs(%75 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x2x2xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %78 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%75 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x2x2xf32>
    %84 = tensor.empty() : tensor<1x96x1x1xf32>
    %85 = linalg.fill ins(%cst_82 : f32) outs(%84 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %86 = tensor.empty() : tensor<2x2xf32>
    %87 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%83, %86 : tensor<1x96x2x2xf32>, tensor<2x2xf32>) outs(%85 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_87 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x1x1xf32>
    %89 = tensor.empty() : tensor<1x24x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_68 : tensor<24xf32>) outs(%89 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_57 : tensor<1x96x1x1xf32>, tensor<24x96x1x1xf32>) outs(%90 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x24x1x1xf32>) outs(%89 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x24x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_60 : tensor<96xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_56 : tensor<1x24x1x1xf32>, tensor<96x24x1x1xf32>) outs(%93 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %96 : tensor<f32>, tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x96x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %97 : tensor<f32>, tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x96x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %83 : tensor<1x96x1x1xf32>, tensor<1x96x2x2xf32>) outs(%75 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x2x2xf32>
    %100 = tensor.empty() : tensor<1x40x2x2xf32>
    %101 = linalg.fill ins(%cst_82 : f32) outs(%100 : tensor<1x40x2x2xf32>) -> tensor<1x40x2x2xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_55 : tensor<1x96x2x2xf32>, tensor<40x96x1x1xf32>) outs(%101 : tensor<1x40x2x2xf32>) -> tensor<1x40x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x40x2x2xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%102 : tensor<1x40x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x40x2x2xf32>
    %104 = tensor.empty() : tensor<1x240x2x2xf32>
    %105 = linalg.fill ins(%cst_82 : f32) outs(%104 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_52 : tensor<1x40x2x2xf32>, tensor<240x40x1x1xf32>) outs(%105 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_50, %cst_51, %cst_51, %cst_50 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%106 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x240x2x2xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %10 : tensor<1x240x2x2xf32>, tensor<f32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %107 : tensor<1x240x2x2xf32>, tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %padded_95 = tensor.pad %112 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x240x2x2xf32> to tensor<1x240x6x6xf32>
    %collapsed_96 = tensor.collapse_shape %cst_49 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %113 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_95, %collapsed_96 : tensor<1x240x6x6xf32>, tensor<240x5x5xf32>) outs(%105 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_50, %cst_51, %cst_51, %cst_50 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%113 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x240x2x2xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %10 : tensor<1x240x2x2xf32>, tensor<f32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %114 : tensor<1x240x2x2xf32>, tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %120 = tensor.empty() : tensor<1x240x1x1xf32>
    %121 = linalg.fill ins(%cst_82 : f32) outs(%120 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %122 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%119, %86 : tensor<1x240x2x2xf32>, tensor<2x2xf32>) outs(%121 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %123 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_87 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x1x1xf32>
    %124 = tensor.empty() : tensor<1x64x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_47 : tensor<64xf32>) outs(%124 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%123, %cst_48 : tensor<1x240x1x1xf32>, tensor<64x240x1x1xf32>) outs(%125 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x64x1x1xf32>) outs(%124 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x64x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51 : tensor<240xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_46 : tensor<1x64x1x1xf32>, tensor<240x64x1x1xf32>) outs(%128 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %131 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %132 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %119 : tensor<1x240x1x1xf32>, tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_45 : tensor<1x240x2x2xf32>, tensor<40x240x1x1xf32>) outs(%101 : tensor<1x40x2x2xf32>) -> tensor<1x40x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x40x2x2xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%135 : tensor<1x40x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x40x2x2xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %103 : tensor<1x40x2x2xf32>, tensor<1x40x2x2xf32>) outs(%100 : tensor<1x40x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x40x2x2xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_44 : tensor<1x40x2x2xf32>, tensor<240x40x1x1xf32>) outs(%105 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_50, %cst_51, %cst_51, %cst_50 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%138 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x240x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %10 : tensor<1x240x2x2xf32>, tensor<f32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %139 : tensor<1x240x2x2xf32>, tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %padded_97 = tensor.pad %144 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x240x2x2xf32> to tensor<1x240x6x6xf32>
    %collapsed_98 = tensor.collapse_shape %cst_43 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %145 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_97, %collapsed_98 : tensor<1x240x6x6xf32>, tensor<240x5x5xf32>) outs(%105 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %146 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %cst_50, %cst_51, %cst_51, %cst_50 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%145 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x240x2x2xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %148 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %10 : tensor<1x240x2x2xf32>, tensor<f32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %146 : tensor<1x240x2x2xf32>, tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %152 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%151, %86 : tensor<1x240x2x2xf32>, tensor<2x2xf32>) outs(%121 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_87 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x1x1xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_42 : tensor<1x240x1x1xf32>, tensor<64x240x1x1xf32>) outs(%125 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x64x1x1xf32>) outs(%124 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x64x1x1xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_41 : tensor<1x64x1x1xf32>, tensor<240x64x1x1xf32>) outs(%128 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %157 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x1x1xf32>
    %159 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %158 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x1x1xf32>
    %160 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %159 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x240x1x1xf32>
    %161 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %151 : tensor<1x240x1x1xf32>, tensor<1x240x2x2xf32>) outs(%104 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x240x2x2xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%161, %cst_40 : tensor<1x240x2x2xf32>, tensor<40x240x1x1xf32>) outs(%101 : tensor<1x40x2x2xf32>) -> tensor<1x40x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x40x2x2xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%162 : tensor<1x40x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x40x2x2xf32>
    %164 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %137 : tensor<1x40x2x2xf32>, tensor<1x40x2x2xf32>) outs(%100 : tensor<1x40x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x40x2x2xf32>
    %165 = tensor.empty() : tensor<1x120x2x2xf32>
    %166 = linalg.fill ins(%cst_82 : f32) outs(%165 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%164, %cst_39 : tensor<1x40x2x2xf32>, tensor<120x40x1x1xf32>) outs(%166 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_37, %cst_38, %cst_38, %cst_37 : tensor<1x120x2x2xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%167 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x120x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x120x2x2xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %10 : tensor<1x120x2x2xf32>, tensor<f32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x120x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %168 : tensor<1x120x2x2xf32>, tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %padded_99 = tensor.pad %173 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x120x2x2xf32> to tensor<1x120x6x6xf32>
    %collapsed_100 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %174 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_99, %collapsed_100 : tensor<1x120x6x6xf32>, tensor<120x5x5xf32>) outs(%166 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_37, %cst_38, %cst_38, %cst_37 : tensor<1x120x2x2xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%174 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x120x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x120x2x2xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %10 : tensor<1x120x2x2xf32>, tensor<f32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x120x2x2xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %175 : tensor<1x120x2x2xf32>, tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %181 = tensor.empty() : tensor<1x120x1x1xf32>
    %182 = linalg.fill ins(%cst_82 : f32) outs(%181 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %183 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %86 : tensor<1x120x2x2xf32>, tensor<2x2xf32>) outs(%182 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_87 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x1x1xf32>
    %185 = tensor.empty() : tensor<1x32x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_34 : tensor<32xf32>) outs(%185 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_35 : tensor<1x120x1x1xf32>, tensor<32x120x1x1xf32>) outs(%186 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x32x1x1xf32>) outs(%185 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x32x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_38 : tensor<120xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x120x1x1xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_33 : tensor<1x32x1x1xf32>, tensor<120x32x1x1xf32>) outs(%189 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %191 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %192 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x120x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %193 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x120x1x1xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %180 : tensor<1x120x1x1xf32>, tensor<1x120x2x2xf32>) outs(%165 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x120x2x2xf32>
    %196 = tensor.empty() : tensor<1x48x2x2xf32>
    %197 = linalg.fill ins(%cst_82 : f32) outs(%196 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%195, %cst_32 : tensor<1x120x2x2xf32>, tensor<48x120x1x1xf32>) outs(%197 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_30, %cst_31, %cst_31, %cst_30 : tensor<1x48x2x2xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%198 : tensor<1x48x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x48x2x2xf32>
    %200 = tensor.empty() : tensor<1x144x2x2xf32>
    %201 = linalg.fill ins(%cst_82 : f32) outs(%200 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    %202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %cst_29 : tensor<1x48x2x2xf32>, tensor<144x48x1x1xf32>) outs(%201 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%202 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x144x2x2xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x2x2xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %10 : tensor<1x144x2x2xf32>, tensor<f32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %203 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %padded_101 = tensor.pad %208 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x144x2x2xf32> to tensor<1x144x6x6xf32>
    %collapsed_102 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<144x1x5x5xf32> into tensor<144x5x5xf32>
    %209 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_101, %collapsed_102 : tensor<1x144x6x6xf32>, tensor<144x5x5xf32>) outs(%201 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%209 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x144x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x2x2xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %10 : tensor<1x144x2x2xf32>, tensor<f32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %210 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %216 = tensor.empty() : tensor<1x144x1x1xf32>
    %217 = linalg.fill ins(%cst_82 : f32) outs(%216 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %218 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%215, %86 : tensor<1x144x2x2xf32>, tensor<2x2xf32>) outs(%217 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_87 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x1x1xf32>
    %220 = tensor.empty() : tensor<1x40x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_54 : tensor<40xf32>) outs(%220 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%219, %cst_25 : tensor<1x144x1x1xf32>, tensor<40x144x1x1xf32>) outs(%221 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x40x1x1xf32>) outs(%220 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x40x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_28 : tensor<144xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_24 : tensor<1x40x1x1xf32>, tensor<144x40x1x1xf32>) outs(%224 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %227 : tensor<f32>, tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %228 : tensor<f32>, tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %215 : tensor<1x144x1x1xf32>, tensor<1x144x2x2xf32>) outs(%200 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x144x2x2xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_23 : tensor<1x144x2x2xf32>, tensor<48x144x1x1xf32>) outs(%197 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_30, %cst_31, %cst_31, %cst_30 : tensor<1x48x2x2xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%231 : tensor<1x48x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x48x2x2xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %199 : tensor<1x48x2x2xf32>, tensor<1x48x2x2xf32>) outs(%196 : tensor<1x48x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x48x2x2xf32>
    %234 = tensor.empty() : tensor<1x288x2x2xf32>
    %235 = linalg.fill ins(%cst_82 : f32) outs(%234 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_22 : tensor<1x48x2x2xf32>, tensor<288x48x1x1xf32>) outs(%235 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %237 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_20, %cst_21, %cst_21, %cst_20 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%236 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x288x2x2xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x288x2x2xf32>) outs(%234 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x288x2x2xf32>) outs(%234 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x288x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %10 : tensor<1x288x2x2xf32>, tensor<f32>) outs(%234 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x288x2x2xf32>
    %241 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x288x2x2xf32>) outs(%234 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %237 : tensor<1x288x2x2xf32>, tensor<1x288x2x2xf32>) outs(%234 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x2x2xf32>
    %padded_103 = tensor.pad %242 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x288x2x2xf32> to tensor<1x288x6x6xf32>
    %243 = tensor.empty() : tensor<1x288x1x1xf32>
    %244 = linalg.fill ins(%cst_82 : f32) outs(%243 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %collapsed_104 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %245 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_103, %collapsed_104 : tensor<1x288x6x6xf32>, tensor<288x5x5xf32>) outs(%244 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %246 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_20, %cst_21, %cst_21, %cst_20 : tensor<1x288x1x1xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%245 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x288x1x1xf32>
    %247 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x1x1xf32>
    %248 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x288x1x1xf32>
    %249 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %10 : tensor<1x288x1x1xf32>, tensor<f32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x288x1x1xf32>
    %250 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x1x1xf32>
    %251 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %246 : tensor<1x288x1x1xf32>, tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x1x1xf32>
    %252 = tensor.empty() : tensor<1x1xf32>
    %253 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %252 : tensor<1x288x1x1xf32>, tensor<1x1xf32>) outs(%244 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %254 = tensor.empty() : tensor<1x72x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_72 : tensor<72xf32>) outs(%254 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x72x1x1xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %cst_18 : tensor<1x288x1x1xf32>, tensor<72x288x1x1xf32>) outs(%255 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x72x1x1xf32>) outs(%254 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x72x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21 : tensor<288xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%257, %cst_17 : tensor<1x72x1x1xf32>, tensor<288x72x1x1xf32>) outs(%258 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %261 : tensor<f32>, tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x288x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %262 : tensor<f32>, tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x288x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %251 : tensor<1x288x1x1xf32>, tensor<1x288x1x1xf32>) outs(%243 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x288x1x1xf32>
    %265 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%264, %cst_16 : tensor<1x288x1x1xf32>, tensor<96x288x1x1xf32>) outs(%85 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %266 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %cst_59, %cst_60, %cst_60, %cst_59 : tensor<1x96x1x1xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%265 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x96x1x1xf32>
    %267 = tensor.empty() : tensor<1x576x1x1xf32>
    %268 = linalg.fill ins(%cst_82 : f32) outs(%267 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %269 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_15 : tensor<1x96x1x1xf32>, tensor<576x96x1x1xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %270 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%269 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x576x1x1xf32>
    %271 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %272 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %10 : tensor<1x576x1x1xf32>, tensor<f32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %275 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %270 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %padded_105 = tensor.pad %275 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x576x1x1xf32> to tensor<1x576x5x5xf32>
    %collapsed_106 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<576x1x5x5xf32> into tensor<576x5x5xf32>
    %276 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_105, %collapsed_106 : tensor<1x576x5x5xf32>, tensor<576x5x5xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %277 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%276 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x576x1x1xf32>
    %278 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %279 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %280 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %10 : tensor<1x576x1x1xf32>, tensor<f32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %282 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %277 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %283 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %252 : tensor<1x576x1x1xf32>, tensor<1x1xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%283, %cst_11 : tensor<1x576x1x1xf32>, tensor<144x576x1x1xf32>) outs(%224 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %285 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_14 : tensor<576xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x576x1x1xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%285, %cst_10 : tensor<1x144x1x1xf32>, tensor<576x144x1x1xf32>) outs(%286 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %289 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %290 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %282 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%292, %cst_9 : tensor<1x576x1x1xf32>, tensor<96x576x1x1xf32>) outs(%85 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_59, %cst_60, %cst_60, %cst_59 : tensor<1x96x1x1xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%293 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x96x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %266 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x1x1xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_8 : tensor<1x96x1x1xf32>, tensor<576x96x1x1xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%296 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x576x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %300 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %10 : tensor<1x576x1x1xf32>, tensor<f32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %301 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %302 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %297 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %padded_107 = tensor.pad %302 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_82 : f32
    } : tensor<1x576x1x1xf32> to tensor<1x576x5x5xf32>
    %collapsed_108 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<576x1x5x5xf32> into tensor<576x5x5xf32>
    %303 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_107, %collapsed_108 : tensor<1x576x5x5xf32>, tensor<576x5x5xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %304 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%303 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x576x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %10 : tensor<1x576x1x1xf32>, tensor<f32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %309 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %304 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %310 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %252 : tensor<1x576x1x1xf32>, tensor<1x1xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %cst_6 : tensor<1x576x1x1xf32>, tensor<144x576x1x1xf32>) outs(%224 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x144x1x1xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%312, %cst_5 : tensor<1x144x1x1xf32>, tensor<576x144x1x1xf32>) outs(%286 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %315 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %316 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %309 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %319 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%318, %cst_4 : tensor<1x576x1x1xf32>, tensor<96x576x1x1xf32>) outs(%85 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_59, %cst_60, %cst_60, %cst_59 : tensor<1x96x1x1xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%319 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x96x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %295 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x96x1x1xf32>
    %322 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%321, %cst_3 : tensor<1x96x1x1xf32>, tensor<576x96x1x1xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %323 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%322 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %in_111: f32, %in_112: f32, %in_113: f32, %out: f32):
      %347 = arith.truncf %cst_83 : f64 to f32
      %348 = arith.addf %in_113, %347 : f32
      %349 = math.rsqrt %348 : f32
      %350 = arith.subf %in, %in_112 : f32
      %351 = arith.mulf %350, %349 : f32
      %352 = arith.mulf %351, %in_110 : f32
      %353 = arith.addf %352, %in_111 : f32
      linalg.yield %353 : f32
    } -> tensor<1x576x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %10 : tensor<1x576x1x1xf32>, tensor<f32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x576x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %328 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %323 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%267 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x576x1x1xf32>
    %329 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %252 : tensor<1x576x1x1xf32>, tensor<1x1xf32>) outs(%268 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %collapsed_109 = tensor.collapse_shape %329 [[0], [1, 2, 3]] : tensor<1x576x1x1xf32> into tensor<1x576xf32>
    %330 = tensor.empty() : tensor<576x1024xf32>
    %331 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<1024x576xf32>) outs(%330 : tensor<576x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<576x1024xf32>
    %332 = tensor.empty() : tensor<1x1024xf32>
    %333 = linalg.fill ins(%cst_82 : f32) outs(%332 : tensor<1x1024xf32>) -> tensor<1x1024xf32>
    %334 = linalg.matmul ins(%collapsed_109, %331 : tensor<1x576xf32>, tensor<576x1024xf32>) outs(%333 : tensor<1x1024xf32>) -> tensor<1x1024xf32>
    %335 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%334, %cst_1 : tensor<1x1024xf32>, tensor<1024xf32>) outs(%332 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x1024xf32>
    %336 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%335 : tensor<1x1024xf32>) outs(%332 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.addf %in, %cst_84 : f32
      linalg.yield %347 : f32
    } -> tensor<1x1024xf32>
    %337 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%336 : tensor<1x1024xf32>) outs(%332 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.cmpf ugt, %in, %cst_82 : f32
      %348 = arith.select %347, %in, %cst_82 : f32
      linalg.yield %348 : f32
    } -> tensor<1x1024xf32>
    %338 = linalg.generic {indexing_maps = [#map8, #map10, #map6], iterator_types = ["parallel", "parallel"]} ins(%337, %10 : tensor<1x1024xf32>, tensor<f32>) outs(%332 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.cmpf ult, %in, %in_110 : f32
      %348 = arith.select %347, %in, %in_110 : f32
      linalg.yield %348 : f32
    } -> tensor<1x1024xf32>
    %339 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%338 : tensor<1x1024xf32>) outs(%332 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %347 = arith.divf %in, %cst_85 : f32
      linalg.yield %347 : f32
    } -> tensor<1x1024xf32>
    %340 = linalg.generic {indexing_maps = [#map8, #map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%339, %335 : tensor<1x1024xf32>, tensor<1x1024xf32>) outs(%332 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.mulf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x1024xf32>
    %341 = tensor.empty() : tensor<1024x1000xf32>
    %342 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1024xf32>) outs(%341 : tensor<1024x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1000xf32>
    %343 = tensor.empty() : tensor<1x1000xf32>
    %344 = linalg.fill ins(%cst_82 : f32) outs(%343 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %345 = linalg.matmul ins(%340, %342 : tensor<1x1024xf32>, tensor<1024x1000xf32>) outs(%344 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %346 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%345, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%343 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_110: f32, %out: f32):
      %347 = arith.addf %in, %in_110 : f32
      linalg.yield %347 : f32
    } -> tensor<1x1000xf32>
    return %346 : tensor<1x1000xf32>
  }
}
