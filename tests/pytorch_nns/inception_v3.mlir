#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "Inception3"} {
    func.func @forward(%arg0: tensor<1x3x299x299xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<-0.009627e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<-0.007937e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.005265e+00> : tensor<192x2048x1x1xf32>
    %cst_2 = arith.constant dense<-0.000318e+00> : tensor<384x384x3x1xf32>
    %cst_3 = arith.constant dense<0.018170e+00> : tensor<384x384x1x3xf32>
    %cst_4 = arith.constant dense<-0.001271e+00> : tensor<384x448x3x3xf32>
    %cst_5 = arith.constant dense<-0.013088e+00> : tensor<448x2048x1x1xf32>
    %cst_6 = arith.constant dense<0.015968e+00> : tensor<384x384x3x1xf32>
    %cst_7 = arith.constant dense<-0.005686e+00> : tensor<384x384x1x3xf32>
    %cst_8 = arith.constant dense<0.017318e+00> : tensor<384x2048x1x1xf32>
    %cst_9 = arith.constant dense<-0.010085e+00> : tensor<320x2048x1x1xf32>
    %cst_10 = arith.constant dense<0.000014e+00> : tensor<192x1280x1x1xf32>
    %cst_11 = arith.constant dense<-0.006796e+00> : tensor<384x384x3x1xf32>
    %cst_12 = arith.constant dense<0.009928e+00> : tensor<384x384x1x3xf32>
    %cst_13 = arith.constant dense<0.000186e+00> : tensor<384x448x3x3xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_15 = arith.constant dense<1.000000e+00> : tensor<448xf32>
    %cst_16 = arith.constant dense<-0.003139e+00> : tensor<448x1280x1x1xf32>
    %cst_17 = arith.constant dense<0.001169e+00> : tensor<384x384x3x1xf32>
    %cst_18 = arith.constant dense<-0.011135e+00> : tensor<384x384x1x3xf32>
    %cst_19 = arith.constant dense<-0.001306e+00> : tensor<384x1280x1x1xf32>
    %cst_20 = arith.constant dense<0.005475e+00> : tensor<320x1280x1x1xf32>
    %cst_21 = arith.constant dense<-0.010599e+00> : tensor<192x192x3x3xf32>
    %cst_22 = arith.constant dense<0.000516e+00> : tensor<192x192x7x1xf32>
    %cst_23 = arith.constant dense<0.003818e+00> : tensor<192x192x1x7xf32>
    %cst_24 = arith.constant dense<0.004106e+00> : tensor<192x768x1x1xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_26 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_27 = arith.constant dense<0.007830e+00> : tensor<320x192x3x3xf32>
    %cst_28 = arith.constant dense<0.006686e+00> : tensor<192x768x1x1xf32>
    %cst_29 = arith.constant dense<0.003181e+00> : tensor<192x768x1x1xf32>
    %cst_30 = arith.constant dense<-0.007143e+00> : tensor<192x192x1x7xf32>
    %cst_31 = arith.constant dense<0.009960e+00> : tensor<192x192x7x1xf32>
    %cst_32 = arith.constant dense<0.009353e+00> : tensor<192x192x1x7xf32>
    %cst_33 = arith.constant dense<-0.005373e+00> : tensor<192x192x7x1xf32>
    %cst_34 = arith.constant dense<0.000783e+00> : tensor<192x768x1x1xf32>
    %cst_35 = arith.constant dense<-0.014078e+00> : tensor<192x192x7x1xf32>
    %cst_36 = arith.constant dense<0.001216e+00> : tensor<192x192x1x7xf32>
    %cst_37 = arith.constant dense<-0.007565e+00> : tensor<192x768x1x1xf32>
    %cst_38 = arith.constant dense<-0.003957e+00> : tensor<192x768x1x1xf32>
    %cst_39 = arith.constant dense<-0.014726e+00> : tensor<192x768x1x1xf32>
    %cst_40 = arith.constant dense<-0.004872e+00> : tensor<192x160x1x7xf32>
    %cst_41 = arith.constant dense<0.010749e+00> : tensor<160x160x7x1xf32>
    %cst_42 = arith.constant dense<0.011834e+00> : tensor<160x160x1x7xf32>
    %cst_43 = arith.constant dense<0.008710e+00> : tensor<160x160x7x1xf32>
    %cst_44 = arith.constant dense<0.013681e+00> : tensor<160x768x1x1xf32>
    %cst_45 = arith.constant dense<0.001362e+00> : tensor<192x160x7x1xf32>
    %cst_46 = arith.constant dense<-0.021455e+00> : tensor<160x160x1x7xf32>
    %cst_47 = arith.constant dense<-0.000254e+00> : tensor<160x768x1x1xf32>
    %cst_48 = arith.constant dense<0.009691e+00> : tensor<192x768x1x1xf32>
    %cst_49 = arith.constant dense<-0.011992e+00> : tensor<192x768x1x1xf32>
    %cst_50 = arith.constant dense<0.003587e+00> : tensor<192x160x1x7xf32>
    %cst_51 = arith.constant dense<-0.005421e+00> : tensor<160x160x7x1xf32>
    %cst_52 = arith.constant dense<-0.020882e+00> : tensor<160x160x1x7xf32>
    %cst_53 = arith.constant dense<-0.002383e+00> : tensor<160x160x7x1xf32>
    %cst_54 = arith.constant dense<-0.003153e+00> : tensor<160x768x1x1xf32>
    %cst_55 = arith.constant dense<0.012251e+00> : tensor<192x160x7x1xf32>
    %cst_56 = arith.constant dense<-0.001270e+00> : tensor<160x160x1x7xf32>
    %cst_57 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_58 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_59 = arith.constant dense<0.019007e+00> : tensor<160x768x1x1xf32>
    %cst_60 = arith.constant dense<0.013847e+00> : tensor<192x768x1x1xf32>
    %cst_61 = arith.constant dense<0.007663e+00> : tensor<192x768x1x1xf32>
    %cst_62 = arith.constant dense<0.013216e+00> : tensor<192x128x1x7xf32>
    %cst_63 = arith.constant dense<-0.008596e+00> : tensor<128x128x7x1xf32>
    %cst_64 = arith.constant dense<-0.001667e+00> : tensor<128x128x1x7xf32>
    %cst_65 = arith.constant dense<-0.002516e+00> : tensor<128x128x7x1xf32>
    %cst_66 = arith.constant dense<0.009680e+00> : tensor<128x768x1x1xf32>
    %cst_67 = arith.constant dense<-0.007711e+00> : tensor<192x128x7x1xf32>
    %cst_68 = arith.constant dense<0.004841e+00> : tensor<128x128x1x7xf32>
    %cst_69 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_70 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_71 = arith.constant dense<0.003338e+00> : tensor<128x768x1x1xf32>
    %cst_72 = arith.constant dense<0.002912e+00> : tensor<192x768x1x1xf32>
    %cst_73 = arith.constant dense<-0.002140e+00> : tensor<96x96x3x3xf32>
    %cst_74 = arith.constant dense<0.003579e+00> : tensor<96x64x3x3xf32>
    %cst_75 = arith.constant dense<0.012739e+00> : tensor<64x288x1x1xf32>
    %cst_76 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_77 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_78 = arith.constant dense<-0.012242e+00> : tensor<384x288x3x3xf32>
    %cst_79 = arith.constant dense<-0.002216e+00> : tensor<64x288x1x1xf32>
    %cst_80 = arith.constant dense<0.008934e+00> : tensor<96x96x3x3xf32>
    %cst_81 = arith.constant dense<0.007513e+00> : tensor<96x64x3x3xf32>
    %cst_82 = arith.constant dense<0.001264e+00> : tensor<64x288x1x1xf32>
    %cst_83 = arith.constant dense<0.011018e+00> : tensor<64x48x5x5xf32>
    %cst_84 = arith.constant dense<-0.000524e+00> : tensor<48x288x1x1xf32>
    %cst_85 = arith.constant dense<0.011265e+00> : tensor<64x288x1x1xf32>
    %cst_86 = arith.constant dense<-0.012549e+00> : tensor<64x256x1x1xf32>
    %cst_87 = arith.constant dense<0.005692e+00> : tensor<96x96x3x3xf32>
    %cst_88 = arith.constant dense<-0.002898e+00> : tensor<96x64x3x3xf32>
    %cst_89 = arith.constant dense<0.008855e+00> : tensor<64x256x1x1xf32>
    %cst_90 = arith.constant dense<-0.018515e+00> : tensor<64x48x5x5xf32>
    %cst_91 = arith.constant dense<-0.005716e+00> : tensor<48x256x1x1xf32>
    %cst_92 = arith.constant dense<-0.025674e+00> : tensor<64x256x1x1xf32>
    %cst_93 = arith.constant dense<0.000947e+00> : tensor<32x192x1x1xf32>
    %cst_94 = arith.constant dense<-0.006760e+00> : tensor<96x96x3x3xf32>
    %cst_95 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_96 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_97 = arith.constant dense<-0.013421e+00> : tensor<96x64x3x3xf32>
    %cst_98 = arith.constant dense<0.004486e+00> : tensor<64x192x1x1xf32>
    %cst_99 = arith.constant dense<-0.020886e+00> : tensor<64x48x5x5xf32>
    %cst_100 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_101 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_102 = arith.constant dense<0.008580e+00> : tensor<48x192x1x1xf32>
    %cst_103 = arith.constant dense<-0.000641e+00> : tensor<64x192x1x1xf32>
    %cst_104 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_105 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_106 = arith.constant dense<0.009955e+00> : tensor<192x80x3x3xf32>
    %cst_107 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_108 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_109 = arith.constant dense<-0.000750e+00> : tensor<80x64x1x1xf32>
    %cst_110 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_111 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_112 = arith.constant dense<-0.009994e+00> : tensor<64x32x3x3xf32>
    %cst_113 = arith.constant dense<-0.009550e+00> : tensor<32x32x3x3xf32>
    %cst_114 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_115 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_116 = arith.constant dense<-0.011686e+00> : tensor<32x3x3x3xf32>
    %cst_117 = arith.constant 0.000000e+00 : f32
    %cst_118 = arith.constant -3.40282347E+38 : f32
    %cst_119 = arith.constant 1.000000e-03 : f64
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst_120 = arith.constant 9.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_121 = arith.constant 6.400000e+01 : f32
    %0 = tensor.empty() : tensor<1x32x149x149xf32>
    %1 = linalg.fill ins(%cst_117 : f32) outs(%0 : tensor<1x32x149x149xf32>) -> tensor<1x32x149x149xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%arg0, %cst_116 : tensor<1x3x299x299xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x149x149xf32>) -> tensor<1x32x149x149xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x32x149x149xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x149x149xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x149x149xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x32x149x149xf32>) outs(%0 : tensor<1x32x149x149xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x32x149x149xf32>
    %6 = tensor.empty() : tensor<1x32x147x147xf32>
    %7 = linalg.fill ins(%cst_117 : f32) outs(%6 : tensor<1x32x147x147xf32>) -> tensor<1x32x147x147xf32>
    %8 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%5, %cst_113 : tensor<1x32x149x149xf32>, tensor<32x32x3x3xf32>) outs(%7 : tensor<1x32x147x147xf32>) -> tensor<1x32x147x147xf32>
    cf.assert %3, "training is not supported for now"
    %9 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x32x147x147xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%8 : tensor<1x32x147x147xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x147x147xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<1x32x147x147xf32>) outs(%6 : tensor<1x32x147x147xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x32x147x147xf32>
    %padded = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x32x147x147xf32> to tensor<1x32x149x149xf32>
    %11 = tensor.empty() : tensor<1x64x147x147xf32>
    %12 = linalg.fill ins(%cst_117 : f32) outs(%11 : tensor<1x64x147x147xf32>) -> tensor<1x64x147x147xf32>
    %13 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_112 : tensor<1x32x149x149xf32>, tensor<64x32x3x3xf32>) outs(%12 : tensor<1x64x147x147xf32>) -> tensor<1x64x147x147xf32>
    cf.assert %3, "training is not supported for now"
    %14 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x147x147xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%13 : tensor<1x64x147x147xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x147x147xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x147x147xf32>) outs(%11 : tensor<1x64x147x147xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x147x147xf32>
    %16 = tensor.empty() : tensor<1x64x73x73xf32>
    %17 = linalg.fill ins(%cst_118 : f32) outs(%16 : tensor<1x64x73x73xf32>) -> tensor<1x64x73x73xf32>
    %18 = tensor.empty() : tensor<3x3xf32>
    %19 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%15, %18 : tensor<1x64x147x147xf32>, tensor<3x3xf32>) outs(%17 : tensor<1x64x73x73xf32>) -> tensor<1x64x73x73xf32>
    %20 = tensor.empty() : tensor<1x80x73x73xf32>
    %21 = linalg.fill ins(%cst_117 : f32) outs(%20 : tensor<1x80x73x73xf32>) -> tensor<1x80x73x73xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%19, %cst_109 : tensor<1x64x73x73xf32>, tensor<80x64x1x1xf32>) outs(%21 : tensor<1x80x73x73xf32>) -> tensor<1x80x73x73xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x80x73x73xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%22 : tensor<1x80x73x73xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x80x73x73xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x80x73x73xf32>) outs(%20 : tensor<1x80x73x73xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x80x73x73xf32>
    %25 = tensor.empty() : tensor<1x192x71x71xf32>
    %26 = linalg.fill ins(%cst_117 : f32) outs(%25 : tensor<1x192x71x71xf32>) -> tensor<1x192x71x71xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_106 : tensor<1x80x73x73xf32>, tensor<192x80x3x3xf32>) outs(%26 : tensor<1x192x71x71xf32>) -> tensor<1x192x71x71xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x71x71xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%27 : tensor<1x192x71x71xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x71x71xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x192x71x71xf32>) outs(%25 : tensor<1x192x71x71xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x71x71xf32>
    %30 = tensor.empty() : tensor<1x192x35x35xf32>
    %31 = linalg.fill ins(%cst_118 : f32) outs(%30 : tensor<1x192x35x35xf32>) -> tensor<1x192x35x35xf32>
    %32 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%29, %18 : tensor<1x192x71x71xf32>, tensor<3x3xf32>) outs(%31 : tensor<1x192x35x35xf32>) -> tensor<1x192x35x35xf32>
    %33 = tensor.empty() : tensor<1x64x35x35xf32>
    %34 = linalg.fill ins(%cst_117 : f32) outs(%33 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_103 : tensor<1x192x35x35xf32>, tensor<64x192x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %38 = tensor.empty() : tensor<1x48x35x35xf32>
    %39 = linalg.fill ins(%cst_117 : f32) outs(%38 : tensor<1x48x35x35xf32>) -> tensor<1x48x35x35xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_102 : tensor<1x192x35x35xf32>, tensor<48x192x1x1xf32>) outs(%39 : tensor<1x48x35x35xf32>) -> tensor<1x48x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_101, %cst_100, %cst_100, %cst_101 : tensor<1x48x35x35xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%40 : tensor<1x48x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x35x35xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x48x35x35xf32>) outs(%38 : tensor<1x48x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x48x35x35xf32>
    %padded_122 = tensor.pad %42 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x48x35x35xf32> to tensor<1x48x39x39xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_122, %cst_99 : tensor<1x48x39x39xf32>, tensor<64x48x5x5xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%43 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_98 : tensor<1x192x35x35xf32>, tensor<64x192x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%46 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %padded_123 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x35x35xf32> to tensor<1x64x37x37xf32>
    %49 = tensor.empty() : tensor<1x96x35x35xf32>
    %50 = linalg.fill ins(%cst_117 : f32) outs(%49 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_123, %cst_97 : tensor<1x64x37x37xf32>, tensor<96x64x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%51 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %padded_124 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x96x35x35xf32> to tensor<1x96x37x37xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_124, %cst_94 : tensor<1x96x37x37xf32>, tensor<96x96x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%54 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %padded_125 = tensor.pad %32 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x35x35xf32> to tensor<1x192x37x37xf32>
    %57 = linalg.fill ins(%cst_117 : f32) outs(%30 : tensor<1x192x35x35xf32>) -> tensor<1x192x35x35xf32>
    %58 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_125, %18 : tensor<1x192x37x37xf32>, tensor<3x3xf32>) outs(%57 : tensor<1x192x35x35xf32>) -> tensor<1x192x35x35xf32>
    %59 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x192x35x35xf32>) outs(%30 : tensor<1x192x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x192x35x35xf32>
    %60 = tensor.empty() : tensor<1x32x35x35xf32>
    %61 = linalg.fill ins(%cst_117 : f32) outs(%60 : tensor<1x32x35x35xf32>) -> tensor<1x32x35x35xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%59, %cst_93 : tensor<1x192x35x35xf32>, tensor<32x192x1x1xf32>) outs(%61 : tensor<1x32x35x35xf32>) -> tensor<1x32x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x32x35x35xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%62 : tensor<1x32x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x35x35xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x32x35x35xf32>) outs(%60 : tensor<1x32x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x32x35x35xf32>
    %65 = tensor.empty() : tensor<1x256x35x35xf32>
    %inserted_slice = tensor.insert_slice %37 into %65[0, 0, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x256x35x35xf32>
    %inserted_slice_126 = tensor.insert_slice %45 into %inserted_slice[0, 64, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x256x35x35xf32>
    %inserted_slice_127 = tensor.insert_slice %56 into %inserted_slice_126[0, 128, 0, 0] [1, 96, 35, 35] [1, 1, 1, 1] : tensor<1x96x35x35xf32> into tensor<1x256x35x35xf32>
    %inserted_slice_128 = tensor.insert_slice %64 into %inserted_slice_127[0, 224, 0, 0] [1, 32, 35, 35] [1, 1, 1, 1] : tensor<1x32x35x35xf32> into tensor<1x256x35x35xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_128, %cst_92 : tensor<1x256x35x35xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%66 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_128, %cst_91 : tensor<1x256x35x35xf32>, tensor<48x256x1x1xf32>) outs(%39 : tensor<1x48x35x35xf32>) -> tensor<1x48x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_101, %cst_100, %cst_100, %cst_101 : tensor<1x48x35x35xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%69 : tensor<1x48x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x35x35xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x48x35x35xf32>) outs(%38 : tensor<1x48x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x48x35x35xf32>
    %padded_129 = tensor.pad %71 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x48x35x35xf32> to tensor<1x48x39x39xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_129, %cst_90 : tensor<1x48x39x39xf32>, tensor<64x48x5x5xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%72 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_128, %cst_89 : tensor<1x256x35x35xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%75 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %padded_130 = tensor.pad %77 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x35x35xf32> to tensor<1x64x37x37xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_130, %cst_88 : tensor<1x64x37x37xf32>, tensor<96x64x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%78 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %padded_131 = tensor.pad %80 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x96x35x35xf32> to tensor<1x96x37x37xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_131, %cst_87 : tensor<1x96x37x37xf32>, tensor<96x96x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%81 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %padded_132 = tensor.pad %inserted_slice_128 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x35x35xf32> to tensor<1x256x37x37xf32>
    %84 = linalg.fill ins(%cst_117 : f32) outs(%65 : tensor<1x256x35x35xf32>) -> tensor<1x256x35x35xf32>
    %85 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_132, %18 : tensor<1x256x37x37xf32>, tensor<3x3xf32>) outs(%84 : tensor<1x256x35x35xf32>) -> tensor<1x256x35x35xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<1x256x35x35xf32>) outs(%65 : tensor<1x256x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x256x35x35xf32>
    %87 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%86, %cst_86 : tensor<1x256x35x35xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %88 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%87 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %89 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %90 = tensor.empty() : tensor<1x288x35x35xf32>
    %inserted_slice_133 = tensor.insert_slice %68 into %90[0, 0, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x288x35x35xf32>
    %inserted_slice_134 = tensor.insert_slice %74 into %inserted_slice_133[0, 64, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x288x35x35xf32>
    %inserted_slice_135 = tensor.insert_slice %83 into %inserted_slice_134[0, 128, 0, 0] [1, 96, 35, 35] [1, 1, 1, 1] : tensor<1x96x35x35xf32> into tensor<1x288x35x35xf32>
    %inserted_slice_136 = tensor.insert_slice %89 into %inserted_slice_135[0, 224, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x288x35x35xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_136, %cst_85 : tensor<1x288x35x35xf32>, tensor<64x288x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %92 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%91 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %93 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_136, %cst_84 : tensor<1x288x35x35xf32>, tensor<48x288x1x1xf32>) outs(%39 : tensor<1x48x35x35xf32>) -> tensor<1x48x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %95 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_101, %cst_100, %cst_100, %cst_101 : tensor<1x48x35x35xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%94 : tensor<1x48x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x35x35xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x48x35x35xf32>) outs(%38 : tensor<1x48x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x48x35x35xf32>
    %padded_137 = tensor.pad %96 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x48x35x35xf32> to tensor<1x48x39x39xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_137, %cst_83 : tensor<1x48x39x39xf32>, tensor<64x48x5x5xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%97 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_136, %cst_82 : tensor<1x288x35x35xf32>, tensor<64x288x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%100 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %padded_138 = tensor.pad %102 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x35x35xf32> to tensor<1x64x37x37xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_138, %cst_81 : tensor<1x64x37x37xf32>, tensor<96x64x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%103 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %padded_139 = tensor.pad %105 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x96x35x35xf32> to tensor<1x96x37x37xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_139, %cst_80 : tensor<1x96x37x37xf32>, tensor<96x96x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%106 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %padded_140 = tensor.pad %inserted_slice_136 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x288x35x35xf32> to tensor<1x288x37x37xf32>
    %109 = linalg.fill ins(%cst_117 : f32) outs(%90 : tensor<1x288x35x35xf32>) -> tensor<1x288x35x35xf32>
    %110 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_140, %18 : tensor<1x288x37x37xf32>, tensor<3x3xf32>) outs(%109 : tensor<1x288x35x35xf32>) -> tensor<1x288x35x35xf32>
    %111 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x288x35x35xf32>) outs(%90 : tensor<1x288x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x288x35x35xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %cst_79 : tensor<1x288x35x35xf32>, tensor<64x288x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %113 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%112 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %114 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %inserted_slice_141 = tensor.insert_slice %93 into %90[0, 0, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x288x35x35xf32>
    %inserted_slice_142 = tensor.insert_slice %99 into %inserted_slice_141[0, 64, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x288x35x35xf32>
    %inserted_slice_143 = tensor.insert_slice %108 into %inserted_slice_142[0, 128, 0, 0] [1, 96, 35, 35] [1, 1, 1, 1] : tensor<1x96x35x35xf32> into tensor<1x288x35x35xf32>
    %inserted_slice_144 = tensor.insert_slice %114 into %inserted_slice_143[0, 224, 0, 0] [1, 64, 35, 35] [1, 1, 1, 1] : tensor<1x64x35x35xf32> into tensor<1x288x35x35xf32>
    %115 = tensor.empty() : tensor<1x384x17x17xf32>
    %116 = linalg.fill ins(%cst_117 : f32) outs(%115 : tensor<1x384x17x17xf32>) -> tensor<1x384x17x17xf32>
    %117 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_144, %cst_78 : tensor<1x288x35x35xf32>, tensor<384x288x3x3xf32>) outs(%116 : tensor<1x384x17x17xf32>) -> tensor<1x384x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x17x17xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%117 : tensor<1x384x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x17x17xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x384x17x17xf32>) outs(%115 : tensor<1x384x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x17x17xf32>
    %120 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_144, %cst_75 : tensor<1x288x35x35xf32>, tensor<64x288x1x1xf32>) outs(%34 : tensor<1x64x35x35xf32>) -> tensor<1x64x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %121 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x64x35x35xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%120 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x35x35xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x64x35x35xf32>) outs(%33 : tensor<1x64x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x35x35xf32>
    %padded_145 = tensor.pad %122 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x35x35xf32> to tensor<1x64x37x37xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_145, %cst_74 : tensor<1x64x37x37xf32>, tensor<96x64x3x3xf32>) outs(%50 : tensor<1x96x35x35xf32>) -> tensor<1x96x35x35xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x35x35xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%123 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x35x35xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x96x35x35xf32>) outs(%49 : tensor<1x96x35x35xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x35x35xf32>
    %126 = tensor.empty() : tensor<1x96x17x17xf32>
    %127 = linalg.fill ins(%cst_117 : f32) outs(%126 : tensor<1x96x17x17xf32>) -> tensor<1x96x17x17xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%125, %cst_73 : tensor<1x96x35x35xf32>, tensor<96x96x3x3xf32>) outs(%127 : tensor<1x96x17x17xf32>) -> tensor<1x96x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x96x17x17xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%128 : tensor<1x96x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x17x17xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x96x17x17xf32>) outs(%126 : tensor<1x96x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x96x17x17xf32>
    %131 = tensor.empty() : tensor<1x288x17x17xf32>
    %132 = linalg.fill ins(%cst_118 : f32) outs(%131 : tensor<1x288x17x17xf32>) -> tensor<1x288x17x17xf32>
    %133 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_144, %18 : tensor<1x288x35x35xf32>, tensor<3x3xf32>) outs(%132 : tensor<1x288x17x17xf32>) -> tensor<1x288x17x17xf32>
    %134 = tensor.empty() : tensor<1x768x17x17xf32>
    %inserted_slice_146 = tensor.insert_slice %119 into %134[0, 0, 0, 0] [1, 384, 17, 17] [1, 1, 1, 1] : tensor<1x384x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_147 = tensor.insert_slice %130 into %inserted_slice_146[0, 384, 0, 0] [1, 96, 17, 17] [1, 1, 1, 1] : tensor<1x96x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_148 = tensor.insert_slice %133 into %inserted_slice_147[0, 480, 0, 0] [1, 288, 17, 17] [1, 1, 1, 1] : tensor<1x288x17x17xf32> into tensor<1x768x17x17xf32>
    %135 = tensor.empty() : tensor<1x192x17x17xf32>
    %136 = linalg.fill ins(%cst_117 : f32) outs(%135 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_148, %cst_72 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%137 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %140 = tensor.empty() : tensor<1x128x17x17xf32>
    %141 = linalg.fill ins(%cst_117 : f32) outs(%140 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    %142 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_148, %cst_71 : tensor<1x768x17x17xf32>, tensor<128x768x1x1xf32>) outs(%141 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %143 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x128x17x17xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%142 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x17x17xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x128x17x17xf32>) outs(%140 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x17x17xf32>
    %padded_149 = tensor.pad %144 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x17x17xf32> to tensor<1x128x17x23xf32>
    %145 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_149, %cst_68 : tensor<1x128x17x23xf32>, tensor<128x128x1x7xf32>) outs(%141 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %146 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x128x17x17xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%145 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x17x17xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x128x17x17xf32>) outs(%140 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x17x17xf32>
    %padded_150 = tensor.pad %147 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x17x17xf32> to tensor<1x128x23x17xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_150, %cst_67 : tensor<1x128x23x17xf32>, tensor<192x128x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%148 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_148, %cst_66 : tensor<1x768x17x17xf32>, tensor<128x768x1x1xf32>) outs(%141 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x128x17x17xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%151 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x17x17xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x128x17x17xf32>) outs(%140 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x17x17xf32>
    %padded_151 = tensor.pad %153 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x17x17xf32> to tensor<1x128x23x17xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_151, %cst_65 : tensor<1x128x23x17xf32>, tensor<128x128x7x1xf32>) outs(%141 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x128x17x17xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%154 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x17x17xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x128x17x17xf32>) outs(%140 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x17x17xf32>
    %padded_152 = tensor.pad %156 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x17x17xf32> to tensor<1x128x17x23xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_152, %cst_64 : tensor<1x128x17x23xf32>, tensor<128x128x1x7xf32>) outs(%141 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x128x17x17xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%157 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x17x17xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<1x128x17x17xf32>) outs(%140 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x17x17xf32>
    %padded_153 = tensor.pad %159 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x17x17xf32> to tensor<1x128x23x17xf32>
    %160 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_153, %cst_63 : tensor<1x128x23x17xf32>, tensor<128x128x7x1xf32>) outs(%141 : tensor<1x128x17x17xf32>) -> tensor<1x128x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x128x17x17xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%160 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x17x17xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x128x17x17xf32>) outs(%140 : tensor<1x128x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x17x17xf32>
    %padded_154 = tensor.pad %162 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x17x17xf32> to tensor<1x128x17x23xf32>
    %163 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_154, %cst_62 : tensor<1x128x17x23xf32>, tensor<192x128x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%163 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_155 = tensor.pad %inserted_slice_148 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x768x17x17xf32> to tensor<1x768x19x19xf32>
    %166 = linalg.fill ins(%cst_117 : f32) outs(%134 : tensor<1x768x17x17xf32>) -> tensor<1x768x17x17xf32>
    %167 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_155, %18 : tensor<1x768x19x19xf32>, tensor<3x3xf32>) outs(%166 : tensor<1x768x17x17xf32>) -> tensor<1x768x17x17xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x768x17x17xf32>) outs(%134 : tensor<1x768x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x768x17x17xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %cst_61 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%169 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %inserted_slice_156 = tensor.insert_slice %139 into %134[0, 0, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_157 = tensor.insert_slice %150 into %inserted_slice_156[0, 192, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_158 = tensor.insert_slice %165 into %inserted_slice_157[0, 384, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_159 = tensor.insert_slice %171 into %inserted_slice_158[0, 576, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_159, %cst_60 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%172 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %175 = tensor.empty() : tensor<1x160x17x17xf32>
    %176 = linalg.fill ins(%cst_117 : f32) outs(%175 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_159, %cst_59 : tensor<1x768x17x17xf32>, tensor<160x768x1x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%177 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_160 = tensor.pad %179 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x17x23xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_160, %cst_56 : tensor<1x160x17x23xf32>, tensor<160x160x1x7xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %181 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%180 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_161 = tensor.pad %182 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x23x17xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_161, %cst_55 : tensor<1x160x23x17xf32>, tensor<192x160x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %184 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%183 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %185 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %186 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_159, %cst_54 : tensor<1x768x17x17xf32>, tensor<160x768x1x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %187 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%186 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_162 = tensor.pad %188 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x23x17xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_162, %cst_53 : tensor<1x160x23x17xf32>, tensor<160x160x7x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%189 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_163 = tensor.pad %191 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x17x23xf32>
    %192 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_163, %cst_52 : tensor<1x160x17x23xf32>, tensor<160x160x1x7xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %193 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%192 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %194 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_164 = tensor.pad %194 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x23x17xf32>
    %195 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_164, %cst_51 : tensor<1x160x23x17xf32>, tensor<160x160x7x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%195 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_165 = tensor.pad %197 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x17x23xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_165, %cst_50 : tensor<1x160x17x23xf32>, tensor<192x160x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%198 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_166 = tensor.pad %inserted_slice_159 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x768x17x17xf32> to tensor<1x768x19x19xf32>
    %201 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_166, %18 : tensor<1x768x19x19xf32>, tensor<3x3xf32>) outs(%166 : tensor<1x768x17x17xf32>) -> tensor<1x768x17x17xf32>
    %202 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x768x17x17xf32>) outs(%134 : tensor<1x768x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x768x17x17xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%202, %cst_49 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %204 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%203 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %inserted_slice_167 = tensor.insert_slice %174 into %134[0, 0, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_168 = tensor.insert_slice %185 into %inserted_slice_167[0, 192, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_169 = tensor.insert_slice %200 into %inserted_slice_168[0, 384, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_170 = tensor.insert_slice %205 into %inserted_slice_169[0, 576, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_170, %cst_48 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %207 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%206 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %209 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_170, %cst_47 : tensor<1x768x17x17xf32>, tensor<160x768x1x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%209 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_171 = tensor.pad %211 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x17x23xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_171, %cst_46 : tensor<1x160x17x23xf32>, tensor<160x160x1x7xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%212 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_172 = tensor.pad %214 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x23x17xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_172, %cst_45 : tensor<1x160x23x17xf32>, tensor<192x160x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%215 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_170, %cst_44 : tensor<1x768x17x17xf32>, tensor<160x768x1x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %219 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%218 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_173 = tensor.pad %220 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x23x17xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_173, %cst_43 : tensor<1x160x23x17xf32>, tensor<160x160x7x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%221 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_174 = tensor.pad %223 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x17x23xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_174, %cst_42 : tensor<1x160x17x23xf32>, tensor<160x160x1x7xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%224 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_175 = tensor.pad %226 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x23x17xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_175, %cst_41 : tensor<1x160x23x17xf32>, tensor<160x160x7x1xf32>) outs(%176 : tensor<1x160x17x17xf32>) -> tensor<1x160x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_58, %cst_57, %cst_57, %cst_58 : tensor<1x160x17x17xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%227 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x160x17x17xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x160x17x17xf32>) outs(%175 : tensor<1x160x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x160x17x17xf32>
    %padded_176 = tensor.pad %229 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x160x17x17xf32> to tensor<1x160x17x23xf32>
    %230 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_176, %cst_40 : tensor<1x160x17x23xf32>, tensor<192x160x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %231 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%230 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %232 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_177 = tensor.pad %inserted_slice_170 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x768x17x17xf32> to tensor<1x768x19x19xf32>
    %233 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_177, %18 : tensor<1x768x19x19xf32>, tensor<3x3xf32>) outs(%166 : tensor<1x768x17x17xf32>) -> tensor<1x768x17x17xf32>
    %234 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x768x17x17xf32>) outs(%134 : tensor<1x768x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x768x17x17xf32>
    %235 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%234, %cst_39 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %236 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%235 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %inserted_slice_178 = tensor.insert_slice %208 into %134[0, 0, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_179 = tensor.insert_slice %217 into %inserted_slice_178[0, 192, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_180 = tensor.insert_slice %232 into %inserted_slice_179[0, 384, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_181 = tensor.insert_slice %237 into %inserted_slice_180[0, 576, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_181, %cst_38 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %239 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%238 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_181, %cst_37 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%241 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_182 = tensor.pad %243 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x17x23xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_182, %cst_36 : tensor<1x192x17x23xf32>, tensor<192x192x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%244 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_183 = tensor.pad %246 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x23x17xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_183, %cst_35 : tensor<1x192x23x17xf32>, tensor<192x192x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%247 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %250 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_181, %cst_34 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %251 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%250 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %252 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_184 = tensor.pad %252 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x23x17xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_184, %cst_33 : tensor<1x192x23x17xf32>, tensor<192x192x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %254 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%253 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_185 = tensor.pad %255 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x17x23xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_185, %cst_32 : tensor<1x192x17x23xf32>, tensor<192x192x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %257 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%256 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %258 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_186 = tensor.pad %258 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x23x17xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_186, %cst_31 : tensor<1x192x23x17xf32>, tensor<192x192x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %260 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%259 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %261 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_187 = tensor.pad %261 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x17x23xf32>
    %262 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_187, %cst_30 : tensor<1x192x17x23xf32>, tensor<192x192x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%262 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_188 = tensor.pad %inserted_slice_181 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x768x17x17xf32> to tensor<1x768x19x19xf32>
    %265 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_188, %18 : tensor<1x768x19x19xf32>, tensor<3x3xf32>) outs(%166 : tensor<1x768x17x17xf32>) -> tensor<1x768x17x17xf32>
    %266 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x768x17x17xf32>) outs(%134 : tensor<1x768x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x768x17x17xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_29 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%267 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %inserted_slice_189 = tensor.insert_slice %240 into %134[0, 0, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_190 = tensor.insert_slice %249 into %inserted_slice_189[0, 192, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_191 = tensor.insert_slice %264 into %inserted_slice_190[0, 384, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %inserted_slice_192 = tensor.insert_slice %269 into %inserted_slice_191[0, 576, 0, 0] [1, 192, 17, 17] [1, 1, 1, 1] : tensor<1x192x17x17xf32> into tensor<1x768x17x17xf32>
    %270 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_192, %cst_28 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%270 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %273 = tensor.empty() : tensor<1x320x8x8xf32>
    %274 = linalg.fill ins(%cst_117 : f32) outs(%273 : tensor<1x320x8x8xf32>) -> tensor<1x320x8x8xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%272, %cst_27 : tensor<1x192x17x17xf32>, tensor<320x192x3x3xf32>) outs(%274 : tensor<1x320x8x8xf32>) -> tensor<1x320x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %276 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_26, %cst_25, %cst_25, %cst_26 : tensor<1x320x8x8xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%275 : tensor<1x320x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x320x8x8xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x320x8x8xf32>) outs(%273 : tensor<1x320x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x320x8x8xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_192, %cst_24 : tensor<1x768x17x17xf32>, tensor<192x768x1x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%278 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_193 = tensor.pad %280 low[0, 0, 0, 3] high[0, 0, 0, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x17x23xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_193, %cst_23 : tensor<1x192x17x23xf32>, tensor<192x192x1x7xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%281 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %padded_194 = tensor.pad %283 low[0, 0, 3, 0] high[0, 0, 3, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x192x17x17xf32> to tensor<1x192x23x17xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_194, %cst_22 : tensor<1x192x23x17xf32>, tensor<192x192x7x1xf32>) outs(%136 : tensor<1x192x17x17xf32>) -> tensor<1x192x17x17xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x17x17xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%284 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x17x17xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x192x17x17xf32>) outs(%135 : tensor<1x192x17x17xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x17x17xf32>
    %287 = tensor.empty() : tensor<1x192x8x8xf32>
    %288 = linalg.fill ins(%cst_117 : f32) outs(%287 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %289 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%286, %cst_21 : tensor<1x192x17x17xf32>, tensor<192x192x3x3xf32>) outs(%288 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %290 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%289 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x8x8xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x192x8x8xf32>) outs(%287 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x8x8xf32>
    %292 = tensor.empty() : tensor<1x768x8x8xf32>
    %293 = linalg.fill ins(%cst_118 : f32) outs(%292 : tensor<1x768x8x8xf32>) -> tensor<1x768x8x8xf32>
    %294 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_192, %18 : tensor<1x768x17x17xf32>, tensor<3x3xf32>) outs(%293 : tensor<1x768x8x8xf32>) -> tensor<1x768x8x8xf32>
    %295 = tensor.empty() : tensor<1x1280x8x8xf32>
    %inserted_slice_195 = tensor.insert_slice %277 into %295[0, 0, 0, 0] [1, 320, 8, 8] [1, 1, 1, 1] : tensor<1x320x8x8xf32> into tensor<1x1280x8x8xf32>
    %inserted_slice_196 = tensor.insert_slice %291 into %inserted_slice_195[0, 320, 0, 0] [1, 192, 8, 8] [1, 1, 1, 1] : tensor<1x192x8x8xf32> into tensor<1x1280x8x8xf32>
    %inserted_slice_197 = tensor.insert_slice %294 into %inserted_slice_196[0, 512, 0, 0] [1, 768, 8, 8] [1, 1, 1, 1] : tensor<1x768x8x8xf32> into tensor<1x1280x8x8xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_197, %cst_20 : tensor<1x1280x8x8xf32>, tensor<320x1280x1x1xf32>) outs(%274 : tensor<1x320x8x8xf32>) -> tensor<1x320x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_26, %cst_25, %cst_25, %cst_26 : tensor<1x320x8x8xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%296 : tensor<1x320x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x320x8x8xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x320x8x8xf32>) outs(%273 : tensor<1x320x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x320x8x8xf32>
    %299 = tensor.empty() : tensor<1x384x8x8xf32>
    %300 = linalg.fill ins(%cst_117 : f32) outs(%299 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_197, %cst_19 : tensor<1x1280x8x8xf32>, tensor<384x1280x1x1xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%301 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_198 = tensor.pad %303 low[0, 0, 0, 1] high[0, 0, 0, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x8x10xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_198, %cst_18 : tensor<1x384x8x10xf32>, tensor<384x384x1x3xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%304 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_199 = tensor.pad %303 low[0, 0, 1, 0] high[0, 0, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x10x8xf32>
    %307 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %cst_17 : tensor<1x384x10x8xf32>, tensor<384x384x3x1xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%307 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %inserted_slice_200 = tensor.insert_slice %306 into %292[0, 0, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %inserted_slice_201 = tensor.insert_slice %309 into %inserted_slice_200[0, 384, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %310 = tensor.empty() : tensor<1x448x8x8xf32>
    %311 = linalg.fill ins(%cst_117 : f32) outs(%310 : tensor<1x448x8x8xf32>) -> tensor<1x448x8x8xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_197, %cst_16 : tensor<1x1280x8x8xf32>, tensor<448x1280x1x1xf32>) outs(%311 : tensor<1x448x8x8xf32>) -> tensor<1x448x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_15, %cst_14, %cst_14, %cst_15 : tensor<1x448x8x8xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%312 : tensor<1x448x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x448x8x8xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x448x8x8xf32>) outs(%310 : tensor<1x448x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x448x8x8xf32>
    %padded_202 = tensor.pad %314 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x448x8x8xf32> to tensor<1x448x10x10xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_202, %cst_13 : tensor<1x448x10x10xf32>, tensor<384x448x3x3xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %316 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%315 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_203 = tensor.pad %317 low[0, 0, 0, 1] high[0, 0, 0, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x8x10xf32>
    %318 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_203, %cst_12 : tensor<1x384x8x10xf32>, tensor<384x384x1x3xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %319 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%318 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_204 = tensor.pad %317 low[0, 0, 1, 0] high[0, 0, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x10x8xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_204, %cst_11 : tensor<1x384x10x8xf32>, tensor<384x384x3x1xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%321 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %inserted_slice_205 = tensor.insert_slice %320 into %292[0, 0, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %inserted_slice_206 = tensor.insert_slice %323 into %inserted_slice_205[0, 384, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %padded_207 = tensor.pad %inserted_slice_197 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x1280x8x8xf32> to tensor<1x1280x10x10xf32>
    %324 = linalg.fill ins(%cst_117 : f32) outs(%295 : tensor<1x1280x8x8xf32>) -> tensor<1x1280x8x8xf32>
    %325 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_207, %18 : tensor<1x1280x10x10xf32>, tensor<3x3xf32>) outs(%324 : tensor<1x1280x8x8xf32>) -> tensor<1x1280x8x8xf32>
    %326 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x1280x8x8xf32>) outs(%295 : tensor<1x1280x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1280x8x8xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%326, %cst_10 : tensor<1x1280x8x8xf32>, tensor<192x1280x1x1xf32>) outs(%288 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %328 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%327 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x8x8xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x192x8x8xf32>) outs(%287 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x8x8xf32>
    %330 = tensor.empty() : tensor<1x2048x8x8xf32>
    %inserted_slice_208 = tensor.insert_slice %298 into %330[0, 0, 0, 0] [1, 320, 8, 8] [1, 1, 1, 1] : tensor<1x320x8x8xf32> into tensor<1x2048x8x8xf32>
    %inserted_slice_209 = tensor.insert_slice %inserted_slice_201 into %inserted_slice_208[0, 320, 0, 0] [1, 768, 8, 8] [1, 1, 1, 1] : tensor<1x768x8x8xf32> into tensor<1x2048x8x8xf32>
    %inserted_slice_210 = tensor.insert_slice %inserted_slice_206 into %inserted_slice_209[0, 1088, 0, 0] [1, 768, 8, 8] [1, 1, 1, 1] : tensor<1x768x8x8xf32> into tensor<1x2048x8x8xf32>
    %inserted_slice_211 = tensor.insert_slice %329 into %inserted_slice_210[0, 1856, 0, 0] [1, 192, 8, 8] [1, 1, 1, 1] : tensor<1x192x8x8xf32> into tensor<1x2048x8x8xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_211, %cst_9 : tensor<1x2048x8x8xf32>, tensor<320x2048x1x1xf32>) outs(%274 : tensor<1x320x8x8xf32>) -> tensor<1x320x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_26, %cst_25, %cst_25, %cst_26 : tensor<1x320x8x8xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%331 : tensor<1x320x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x320x8x8xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x320x8x8xf32>) outs(%273 : tensor<1x320x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x320x8x8xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_211, %cst_8 : tensor<1x2048x8x8xf32>, tensor<384x2048x1x1xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%334 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_212 = tensor.pad %336 low[0, 0, 0, 1] high[0, 0, 0, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x8x10xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_212, %cst_7 : tensor<1x384x8x10xf32>, tensor<384x384x1x3xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%337 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_213 = tensor.pad %336 low[0, 0, 1, 0] high[0, 0, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x10x8xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_213, %cst_6 : tensor<1x384x10x8xf32>, tensor<384x384x3x1xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%340 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %inserted_slice_214 = tensor.insert_slice %339 into %292[0, 0, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %inserted_slice_215 = tensor.insert_slice %342 into %inserted_slice_214[0, 384, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_211, %cst_5 : tensor<1x2048x8x8xf32>, tensor<448x2048x1x1xf32>) outs(%311 : tensor<1x448x8x8xf32>) -> tensor<1x448x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %344 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_15, %cst_14, %cst_14, %cst_15 : tensor<1x448x8x8xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%343 : tensor<1x448x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x448x8x8xf32>
    %345 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x448x8x8xf32>) outs(%310 : tensor<1x448x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x448x8x8xf32>
    %padded_216 = tensor.pad %345 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x448x8x8xf32> to tensor<1x448x10x10xf32>
    %346 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_216, %cst_4 : tensor<1x448x10x10xf32>, tensor<384x448x3x3xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %347 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%346 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %348 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_217 = tensor.pad %348 low[0, 0, 0, 1] high[0, 0, 0, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x8x10xf32>
    %349 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_217, %cst_3 : tensor<1x384x8x10xf32>, tensor<384x384x1x3xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%349 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %padded_218 = tensor.pad %348 low[0, 0, 1, 0] high[0, 0, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x384x8x8xf32> to tensor<1x384x10x8xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_218, %cst_2 : tensor<1x384x10x8xf32>, tensor<384x384x3x1xf32>) outs(%300 : tensor<1x384x8x8xf32>) -> tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%352 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x384x8x8xf32>
    %354 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x384x8x8xf32>) outs(%299 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x384x8x8xf32>
    %inserted_slice_219 = tensor.insert_slice %351 into %292[0, 0, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %inserted_slice_220 = tensor.insert_slice %354 into %inserted_slice_219[0, 384, 0, 0] [1, 384, 8, 8] [1, 1, 1, 1] : tensor<1x384x8x8xf32> into tensor<1x768x8x8xf32>
    %padded_221 = tensor.pad %inserted_slice_211 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x2048x8x8xf32> to tensor<1x2048x10x10xf32>
    %355 = linalg.fill ins(%cst_117 : f32) outs(%330 : tensor<1x2048x8x8xf32>) -> tensor<1x2048x8x8xf32>
    %356 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_221, %18 : tensor<1x2048x10x10xf32>, tensor<3x3xf32>) outs(%355 : tensor<1x2048x8x8xf32>) -> tensor<1x2048x8x8xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x2048x8x8xf32>) outs(%330 : tensor<1x2048x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_120 : f32
      linalg.yield %372 : f32
    } -> tensor<1x2048x8x8xf32>
    %358 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%357, %cst_1 : tensor<1x2048x8x8xf32>, tensor<192x2048x1x1xf32>) outs(%288 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %359 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %cst_105, %cst_104, %cst_104, %cst_105 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%358 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_226: f32, %in_227: f32, %in_228: f32, %in_229: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_229, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_228 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_226 : f32
      %378 = arith.addf %377, %in_227 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x8x8xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x192x8x8xf32>) outs(%287 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x192x8x8xf32>
    %inserted_slice_222 = tensor.insert_slice %333 into %330[0, 0, 0, 0] [1, 320, 8, 8] [1, 1, 1, 1] : tensor<1x320x8x8xf32> into tensor<1x2048x8x8xf32>
    %inserted_slice_223 = tensor.insert_slice %inserted_slice_215 into %inserted_slice_222[0, 320, 0, 0] [1, 768, 8, 8] [1, 1, 1, 1] : tensor<1x768x8x8xf32> into tensor<1x2048x8x8xf32>
    %inserted_slice_224 = tensor.insert_slice %inserted_slice_220 into %inserted_slice_223[0, 1088, 0, 0] [1, 768, 8, 8] [1, 1, 1, 1] : tensor<1x768x8x8xf32> into tensor<1x2048x8x8xf32>
    %inserted_slice_225 = tensor.insert_slice %360 into %inserted_slice_224[0, 1856, 0, 0] [1, 192, 8, 8] [1, 1, 1, 1] : tensor<1x192x8x8xf32> into tensor<1x2048x8x8xf32>
    %361 = tensor.empty() : tensor<1x2048x1x1xf32>
    %362 = linalg.fill ins(%cst_117 : f32) outs(%361 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %363 = tensor.empty() : tensor<8x8xf32>
    %364 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_225, %363 : tensor<1x2048x8x8xf32>, tensor<8x8xf32>) outs(%362 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %365 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x2048x1x1xf32>) outs(%361 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.divf %in, %cst_121 : f32
      linalg.yield %372 : f32
    } -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %365 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %366 = tensor.empty() : tensor<2048x1000xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%366 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %368 = tensor.empty() : tensor<1x1000xf32>
    %369 = linalg.fill ins(%cst_117 : f32) outs(%368 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %370 = linalg.matmul ins(%collapsed, %367 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%369 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %371 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%370, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%368 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_226: f32, %out: f32):
      %372 = arith.addf %in, %in_226 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1000xf32>
    return %371 : tensor<1x1000xf32>
  }
}
