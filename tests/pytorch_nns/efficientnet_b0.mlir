#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "EfficientNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.004183e+00> : tensor<1000x1280xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_3 = arith.constant dense<-0.003281e+00> : tensor<1280x320x1x1xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_5 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_6 = arith.constant dense<0.002209e+00> : tensor<320x1152x1x1xf32>
    %cst_7 = arith.constant dense<0.012689e+00> : tensor<1152x48x1x1xf32>
    %cst_8 = arith.constant dense<0.000891e+00> : tensor<48x1152x1x1xf32>
    %cst_9 = arith.constant dense<0.012404e+00> : tensor<1152x1x3x3xf32>
    %cst_10 = arith.constant dense<0.002383e+00> : tensor<1152x192x1x1xf32>
    %cst_11 = arith.constant dense<-0.009575e+00> : tensor<192x1152x1x1xf32>
    %cst_12 = arith.constant dense<-0.006950e+00> : tensor<1152x48x1x1xf32>
    %cst_13 = arith.constant dense<0.007177e+00> : tensor<48x1152x1x1xf32>
    %cst_14 = arith.constant dense<0.000087e+00> : tensor<1152x1x5x5xf32>
    %cst_15 = arith.constant dense<-0.002154e+00> : tensor<1152x192x1x1xf32>
    %cst_16 = arith.constant dense<0.009884e+00> : tensor<192x1152x1x1xf32>
    %cst_17 = arith.constant dense<-0.001665e+00> : tensor<1152x48x1x1xf32>
    %cst_18 = arith.constant dense<-0.014451e+00> : tensor<48x1152x1x1xf32>
    %cst_19 = arith.constant dense<-0.002626e+00> : tensor<1152x1x5x5xf32>
    %cst_20 = arith.constant dense<0.001140e+00> : tensor<1152x192x1x1xf32>
    %cst_21 = arith.constant dense<0.000193e+00> : tensor<192x1152x1x1xf32>
    %cst_22 = arith.constant dense<-0.016909e+00> : tensor<1152x48x1x1xf32>
    %cst_23 = arith.constant dense<0.000778e+00> : tensor<48x1152x1x1xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_25 = arith.constant dense<-0.004991e+00> : tensor<1152x1x5x5xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<1152xf32>
    %cst_27 = arith.constant dense<1.000000e+00> : tensor<1152xf32>
    %cst_28 = arith.constant dense<0.000340e+00> : tensor<1152x192x1x1xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_30 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_31 = arith.constant dense<-0.003547e+00> : tensor<192x672x1x1xf32>
    %cst_32 = arith.constant dense<0.005767e+00> : tensor<672x28x1x1xf32>
    %cst_33 = arith.constant dense<0.003167e+00> : tensor<28x672x1x1xf32>
    %cst_34 = arith.constant dense<-0.012227e+00> : tensor<672x1x5x5xf32>
    %cst_35 = arith.constant dense<0.008222e+00> : tensor<672x112x1x1xf32>
    %cst_36 = arith.constant dense<-0.024636e+00> : tensor<112x672x1x1xf32>
    %cst_37 = arith.constant dense<0.014318e+00> : tensor<672x28x1x1xf32>
    %cst_38 = arith.constant dense<-0.005318e+00> : tensor<28x672x1x1xf32>
    %cst_39 = arith.constant dense<-0.017960e+00> : tensor<672x1x5x5xf32>
    %cst_40 = arith.constant dense<-0.010973e+00> : tensor<672x112x1x1xf32>
    %cst_41 = arith.constant dense<0.012845e+00> : tensor<112x672x1x1xf32>
    %cst_42 = arith.constant dense<-0.018823e+00> : tensor<672x28x1x1xf32>
    %cst_43 = arith.constant dense<-0.018962e+00> : tensor<28x672x1x1xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<28xf32>
    %cst_45 = arith.constant dense<-0.005545e+00> : tensor<672x1x5x5xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_47 = arith.constant dense<1.000000e+00> : tensor<672xf32>
    %cst_48 = arith.constant dense<-0.001134e+00> : tensor<672x112x1x1xf32>
    %cst_49 = arith.constant dense<0.000000e+00> : tensor<112xf32>
    %cst_50 = arith.constant dense<1.000000e+00> : tensor<112xf32>
    %cst_51 = arith.constant dense<-0.017470e+00> : tensor<112x480x1x1xf32>
    %cst_52 = arith.constant dense<-0.005992e+00> : tensor<480x20x1x1xf32>
    %cst_53 = arith.constant dense<0.014152e+00> : tensor<20x480x1x1xf32>
    %cst_54 = arith.constant dense<0.000376e+00> : tensor<480x1x5x5xf32>
    %cst_55 = arith.constant dense<-0.006005e+00> : tensor<480x80x1x1xf32>
    %cst_56 = arith.constant dense<-0.009307e+00> : tensor<80x480x1x1xf32>
    %cst_57 = arith.constant dense<-0.014465e+00> : tensor<480x20x1x1xf32>
    %cst_58 = arith.constant dense<-0.002690e+00> : tensor<20x480x1x1xf32>
    %cst_59 = arith.constant dense<0.002121e+00> : tensor<480x1x3x3xf32>
    %cst_60 = arith.constant dense<-0.006428e+00> : tensor<480x80x1x1xf32>
    %cst_61 = arith.constant dense<0.009498e+00> : tensor<80x480x1x1xf32>
    %cst_62 = arith.constant dense<-0.013983e+00> : tensor<480x20x1x1xf32>
    %cst_63 = arith.constant dense<0.008901e+00> : tensor<20x480x1x1xf32>
    %cst_64 = arith.constant dense<0.000000e+00> : tensor<20xf32>
    %cst_65 = arith.constant dense<0.001184e+00> : tensor<480x1x3x3xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_68 = arith.constant dense<0.003614e+00> : tensor<480x80x1x1xf32>
    %cst_69 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_70 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_71 = arith.constant dense<-0.012552e+00> : tensor<80x240x1x1xf32>
    %cst_72 = arith.constant dense<-0.011146e+00> : tensor<240x10x1x1xf32>
    %cst_73 = arith.constant dense<-0.002055e+00> : tensor<10x240x1x1xf32>
    %cst_74 = arith.constant dense<-0.001239e+00> : tensor<240x1x3x3xf32>
    %cst_75 = arith.constant dense<-0.011730e+00> : tensor<240x40x1x1xf32>
    %cst_76 = arith.constant dense<-0.001341e+00> : tensor<40x240x1x1xf32>
    %cst_77 = arith.constant dense<-0.010244e+00> : tensor<240x10x1x1xf32>
    %cst_78 = arith.constant dense<-0.021036e+00> : tensor<10x240x1x1xf32>
    %cst_79 = arith.constant dense<0.000000e+00> : tensor<10xf32>
    %cst_80 = arith.constant dense<0.003985e+00> : tensor<240x1x5x5xf32>
    %cst_81 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_82 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_83 = arith.constant dense<0.001880e+00> : tensor<240x40x1x1xf32>
    %cst_84 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_85 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_86 = arith.constant dense<-0.000076e+00> : tensor<40x144x1x1xf32>
    %cst_87 = arith.constant dense<0.006515e+00> : tensor<144x6x1x1xf32>
    %cst_88 = arith.constant dense<-0.020437e+00> : tensor<6x144x1x1xf32>
    %cst_89 = arith.constant dense<-0.000673e+00> : tensor<144x1x5x5xf32>
    %cst_90 = arith.constant dense<-0.001230e+00> : tensor<144x24x1x1xf32>
    %cst_91 = arith.constant dense<0.000146e+00> : tensor<24x144x1x1xf32>
    %cst_92 = arith.constant dense<0.008875e+00> : tensor<144x6x1x1xf32>
    %cst_93 = arith.constant dense<-0.018545e+00> : tensor<6x144x1x1xf32>
    %cst_94 = arith.constant dense<0.000000e+00> : tensor<6xf32>
    %cst_95 = arith.constant dense<0.009197e+00> : tensor<144x1x3x3xf32>
    %cst_96 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_97 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_98 = arith.constant dense<-0.003198e+00> : tensor<144x24x1x1xf32>
    %cst_99 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_100 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_101 = arith.constant dense<-0.003483e+00> : tensor<24x96x1x1xf32>
    %cst_102 = arith.constant dense<-0.001545e+00> : tensor<96x4x1x1xf32>
    %cst_103 = arith.constant dense<0.001076e+00> : tensor<4x96x1x1xf32>
    %cst_104 = arith.constant dense<0.000000e+00> : tensor<4xf32>
    %cst_105 = arith.constant dense<0.011638e+00> : tensor<96x1x3x3xf32>
    %cst_106 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_107 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_108 = arith.constant dense<-0.003197e+00> : tensor<96x16x1x1xf32>
    %cst_109 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_110 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_111 = arith.constant dense<-0.005276e+00> : tensor<16x32x1x1xf32>
    %cst_112 = arith.constant dense<0.013024e+00> : tensor<32x8x1x1xf32>
    %cst_113 = arith.constant dense<-0.006896e+00> : tensor<8x32x1x1xf32>
    %cst_114 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_115 = arith.constant dense<-0.004032e+00> : tensor<32x1x3x3xf32>
    %cst_116 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_117 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_118 = arith.constant dense<-0.006603e+00> : tensor<32x3x3x3xf32>
    %cst_119 = arith.constant 0.000000e+00 : f32
    %cst_120 = arith.constant 1.000000e-05 : f64
    %cst_121 = arith.constant 2.560000e+02 : f32
    %cst_122 = arith.constant 6.400000e+01 : f32
    %cst_123 = arith.constant 1.600000e+01 : f32
    %cst_124 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_125 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x32x16x16xf32>
    %1 = linalg.fill ins(%cst_119 : f32) outs(%0 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_118 : tensor<1x3x34x34xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_117, %cst_116, %cst_116, %cst_117 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x32x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x32x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_126 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_115 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_126, %collapsed : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_117, %cst_116, %cst_116, %cst_117 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%7 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x32x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x32x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x16x16xf32>
    %11 = tensor.empty() : tensor<1x32x1x1xf32>
    %12 = linalg.fill ins(%cst_119 : f32) outs(%11 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x32x1x1xf32>) outs(%11 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_121 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x1x1xf32>
    %16 = tensor.empty() : tensor<1x8x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_114 : tensor<8xf32>) outs(%16 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_113 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%17 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x8x1x1xf32>) outs(%16 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x8x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%16 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x8x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_116 : tensor<32xf32>) outs(%11 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_112 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%21 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x32x1x1xf32>) outs(%11 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x32x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x16x16xf32>
    %25 = tensor.empty() : tensor<1x16x16x16xf32>
    %26 = linalg.fill ins(%cst_119 : f32) outs(%25 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_111 : tensor<1x32x16x16xf32>, tensor<16x32x1x1xf32>) outs(%26 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%27 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x16x16x16xf32>
    %29 = tensor.empty() : tensor<1x96x16x16xf32>
    %30 = linalg.fill ins(%cst_119 : f32) outs(%29 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %cst_108 : tensor<1x16x16x16xf32>, tensor<96x16x1x1xf32>) outs(%30 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x96x16x16xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%31 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x96x16x16xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x96x16x16xf32>) outs(%29 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x96x16x16xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %32 : tensor<1x96x16x16xf32>, tensor<1x96x16x16xf32>) outs(%29 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x16x16xf32>
    %padded_127 = tensor.pad %34 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x96x16x16xf32> to tensor<1x96x18x18xf32>
    %35 = tensor.empty() : tensor<1x96x8x8xf32>
    %36 = linalg.fill ins(%cst_119 : f32) outs(%35 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %collapsed_128 = tensor.collapse_shape %cst_105 [[0, 1], [2], [3]] : tensor<96x1x3x3xf32> into tensor<96x3x3xf32>
    %37 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_127, %collapsed_128 : tensor<1x96x18x18xf32>, tensor<96x3x3xf32>) outs(%36 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %38 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%37 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x96x8x8xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<1x96x8x8xf32>) outs(%35 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x96x8x8xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %38 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%35 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x8x8xf32>
    %41 = tensor.empty() : tensor<1x96x1x1xf32>
    %42 = linalg.fill ins(%cst_119 : f32) outs(%41 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %43 = tensor.empty() : tensor<8x8xf32>
    %44 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %43 : tensor<1x96x8x8xf32>, tensor<8x8xf32>) outs(%42 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x96x1x1xf32>) outs(%41 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_122 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x1x1xf32>
    %46 = tensor.empty() : tensor<1x4x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_104 : tensor<4xf32>) outs(%46 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x1x1xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_103 : tensor<1x96x1x1xf32>, tensor<4x96x1x1xf32>) outs(%47 : tensor<1x4x1x1xf32>) -> tensor<1x4x1x1xf32>
    %49 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x4x1x1xf32>) outs(%46 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x4x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %48 : tensor<1x4x1x1xf32>, tensor<1x4x1x1xf32>) outs(%46 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x4x1x1xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_106 : tensor<96xf32>) outs(%41 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%50, %cst_102 : tensor<1x4x1x1xf32>, tensor<96x4x1x1xf32>) outs(%51 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %53 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x96x1x1xf32>) outs(%41 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x96x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %40 : tensor<1x96x1x1xf32>, tensor<1x96x8x8xf32>) outs(%35 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x96x8x8xf32>
    %55 = tensor.empty() : tensor<1x24x8x8xf32>
    %56 = linalg.fill ins(%cst_119 : f32) outs(%55 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_101 : tensor<1x96x8x8xf32>, tensor<24x96x1x1xf32>) outs(%56 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%57 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x24x8x8xf32>
    %59 = tensor.empty() : tensor<1x144x8x8xf32>
    %60 = linalg.fill ins(%cst_119 : f32) outs(%59 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%58, %cst_98 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%60 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %62 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %cst_97, %cst_96, %cst_96, %cst_97 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%61 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x144x8x8xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x144x8x8xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %62 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_129 = tensor.pad %64 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x10x10xf32>
    %collapsed_130 = tensor.collapse_shape %cst_95 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %65 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_129, %collapsed_130 : tensor<1x144x10x10xf32>, tensor<144x3x3xf32>) outs(%60 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_97, %cst_96, %cst_96, %cst_97 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%65 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x144x8x8xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x144x8x8xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %66 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x8x8xf32>
    %69 = tensor.empty() : tensor<1x144x1x1xf32>
    %70 = linalg.fill ins(%cst_119 : f32) outs(%69 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %71 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %43 : tensor<1x144x8x8xf32>, tensor<8x8xf32>) outs(%70 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x144x1x1xf32>) outs(%69 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_122 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x1x1xf32>
    %73 = tensor.empty() : tensor<1x6x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_94 : tensor<6xf32>) outs(%73 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x6x1x1xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_93 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%74 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %76 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x6x1x1xf32>) outs(%73 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x6x1x1xf32>
    %77 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %75 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%73 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x6x1x1xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_96 : tensor<144xf32>) outs(%69 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_92 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%78 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x144x1x1xf32>) outs(%69 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x144x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %68 : tensor<1x144x1x1xf32>, tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x8x8xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%81, %cst_91 : tensor<1x144x8x8xf32>, tensor<24x144x1x1xf32>) outs(%56 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%82 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x24x8x8xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %58 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%55 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x24x8x8xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%84, %cst_90 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%60 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_97, %cst_96, %cst_96, %cst_97 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%85 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x144x8x8xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x144x8x8xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %86 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%59 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_131 = tensor.pad %88 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x12x12xf32>
    %89 = tensor.empty() : tensor<1x144x4x4xf32>
    %90 = linalg.fill ins(%cst_119 : f32) outs(%89 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    %collapsed_132 = tensor.collapse_shape %cst_89 [[0, 1], [2], [3]] : tensor<144x1x5x5xf32> into tensor<144x5x5xf32>
    %91 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_131, %collapsed_132 : tensor<1x144x12x12xf32>, tensor<144x5x5xf32>) outs(%90 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %92 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %cst_97, %cst_96, %cst_96, %cst_97 : tensor<1x144x4x4xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%91 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x144x4x4xf32>
    %93 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<1x144x4x4xf32>) outs(%89 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x144x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %92 : tensor<1x144x4x4xf32>, tensor<1x144x4x4xf32>) outs(%89 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x4x4xf32>
    %95 = tensor.empty() : tensor<4x4xf32>
    %96 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%94, %95 : tensor<1x144x4x4xf32>, tensor<4x4xf32>) outs(%70 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x144x1x1xf32>) outs(%69 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_123 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x1x1xf32>
    %98 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%97, %cst_88 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%74 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x6x1x1xf32>) outs(%73 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x6x1x1xf32>
    %100 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %98 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%73 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x6x1x1xf32>
    %101 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%100, %cst_87 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%78 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x144x1x1xf32>) outs(%69 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x144x1x1xf32>
    %103 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %94 : tensor<1x144x1x1xf32>, tensor<1x144x4x4xf32>) outs(%89 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x144x4x4xf32>
    %104 = tensor.empty() : tensor<1x40x4x4xf32>
    %105 = linalg.fill ins(%cst_119 : f32) outs(%104 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_86 : tensor<1x144x4x4xf32>, tensor<40x144x1x1xf32>) outs(%105 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_85, %cst_84, %cst_84, %cst_85 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%106 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x40x4x4xf32>
    %108 = tensor.empty() : tensor<1x240x4x4xf32>
    %109 = linalg.fill ins(%cst_119 : f32) outs(%108 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    %110 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %cst_83 : tensor<1x40x4x4xf32>, tensor<240x40x1x1xf32>) outs(%109 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %111 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%110 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x240x4x4xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x240x4x4xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %111 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x4x4xf32>
    %padded_133 = tensor.pad %113 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x240x4x4xf32> to tensor<1x240x8x8xf32>
    %collapsed_134 = tensor.collapse_shape %cst_80 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %114 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_133, %collapsed_134 : tensor<1x240x8x8xf32>, tensor<240x5x5xf32>) outs(%109 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%114 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x240x4x4xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x240x4x4xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %115 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x4x4xf32>
    %118 = tensor.empty() : tensor<1x240x1x1xf32>
    %119 = linalg.fill ins(%cst_119 : f32) outs(%118 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %120 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %95 : tensor<1x240x4x4xf32>, tensor<4x4xf32>) outs(%119 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %121 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120 : tensor<1x240x1x1xf32>) outs(%118 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_123 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x1x1xf32>
    %122 = tensor.empty() : tensor<1x10x1x1xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_79 : tensor<10xf32>) outs(%122 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x10x1x1xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_78 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%123 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x10x1x1xf32>) outs(%122 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x10x1x1xf32>
    %126 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %124 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%122 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x10x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_81 : tensor<240xf32>) outs(%118 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%126, %cst_77 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%127 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x240x1x1xf32>) outs(%118 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x240x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %117 : tensor<1x240x1x1xf32>, tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x4x4xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_76 : tensor<1x240x4x4xf32>, tensor<40x240x1x1xf32>) outs(%105 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_85, %cst_84, %cst_84, %cst_85 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%131 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x40x4x4xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %107 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%104 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x40x4x4xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_75 : tensor<1x40x4x4xf32>, tensor<240x40x1x1xf32>) outs(%109 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%134 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x240x4x4xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x240x4x4xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %135 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%108 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x4x4xf32>
    %padded_135 = tensor.pad %137 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x240x4x4xf32> to tensor<1x240x6x6xf32>
    %138 = tensor.empty() : tensor<1x240x2x2xf32>
    %139 = linalg.fill ins(%cst_119 : f32) outs(%138 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    %collapsed_136 = tensor.collapse_shape %cst_74 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %140 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_135, %collapsed_136 : tensor<1x240x6x6xf32>, tensor<240x3x3xf32>) outs(%139 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %141 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%140 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x240x2x2xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x240x2x2xf32>) outs(%138 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x240x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %141 : tensor<1x240x2x2xf32>, tensor<1x240x2x2xf32>) outs(%138 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x2x2xf32>
    %144 = tensor.empty() : tensor<2x2xf32>
    %145 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %144 : tensor<1x240x2x2xf32>, tensor<2x2xf32>) outs(%119 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x240x1x1xf32>) outs(%118 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_124 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x1x1xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_73 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%123 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x10x1x1xf32>) outs(%122 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x10x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %147 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%122 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x10x1x1xf32>
    %150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%149, %cst_72 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%127 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x240x1x1xf32>) outs(%118 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x240x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %143 : tensor<1x240x1x1xf32>, tensor<1x240x2x2xf32>) outs(%138 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x2x2xf32>
    %153 = tensor.empty() : tensor<1x80x2x2xf32>
    %154 = linalg.fill ins(%cst_119 : f32) outs(%153 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    %155 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%152, %cst_71 : tensor<1x240x2x2xf32>, tensor<80x240x1x1xf32>) outs(%154 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %156 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%155 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x80x2x2xf32>
    %157 = tensor.empty() : tensor<1x480x2x2xf32>
    %158 = linalg.fill ins(%cst_119 : f32) outs(%157 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %159 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_68 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%158 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %160 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%159 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x480x2x2xf32>
    %161 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x2x2xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %160 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_137 = tensor.pad %162 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x4x4xf32>
    %collapsed_138 = tensor.collapse_shape %cst_65 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %163 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_137, %collapsed_138 : tensor<1x480x4x4xf32>, tensor<480x3x3xf32>) outs(%158 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%163 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x480x2x2xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x2x2xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %164 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %167 = tensor.empty() : tensor<1x480x1x1xf32>
    %168 = linalg.fill ins(%cst_119 : f32) outs(%167 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %169 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%166, %144 : tensor<1x480x2x2xf32>, tensor<2x2xf32>) outs(%168 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x480x1x1xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_124 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x1x1xf32>
    %171 = tensor.empty() : tensor<1x20x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_64 : tensor<20xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_63 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%172 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %174 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173 : tensor<1x20x1x1xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x20x1x1xf32>
    %175 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %173 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x20x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_66 : tensor<480xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%175, %cst_62 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%176 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177 : tensor<1x480x1x1xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %166 : tensor<1x480x1x1xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%179, %cst_61 : tensor<1x480x2x2xf32>, tensor<80x480x1x1xf32>) outs(%154 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %181 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%180 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x80x2x2xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %156 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%153 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x80x2x2xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%182, %cst_60 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%158 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %184 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%183 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x480x2x2xf32>
    %185 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %184 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_139 = tensor.pad %186 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x4x4xf32>
    %collapsed_140 = tensor.collapse_shape %cst_59 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %187 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_139, %collapsed_140 : tensor<1x480x4x4xf32>, tensor<480x3x3xf32>) outs(%158 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%187 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x480x2x2xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %188 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %191 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %144 : tensor<1x480x2x2xf32>, tensor<2x2xf32>) outs(%168 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x480x1x1xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_124 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x1x1xf32>
    %193 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%192, %cst_58 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%172 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x20x1x1xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x20x1x1xf32>
    %195 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %193 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x20x1x1xf32>
    %196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%195, %cst_57 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%176 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x480x1x1xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x1x1xf32>
    %198 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %190 : tensor<1x480x1x1xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %199 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%198, %cst_56 : tensor<1x480x2x2xf32>, tensor<80x480x1x1xf32>) outs(%154 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %200 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %cst_70, %cst_69, %cst_69, %cst_70 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%199 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x80x2x2xf32>
    %201 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %182 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%153 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x80x2x2xf32>
    %202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %cst_55 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%158 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%202 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x480x2x2xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x2x2xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %203 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_141 = tensor.pad %205 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x6x6xf32>
    %collapsed_142 = tensor.collapse_shape %cst_54 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %206 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_141, %collapsed_142 : tensor<1x480x6x6xf32>, tensor<480x5x5xf32>) outs(%158 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %207 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%206 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x480x2x2xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x2x2xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %207 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %210 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %144 : tensor<1x480x2x2xf32>, tensor<2x2xf32>) outs(%168 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %211 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x480x1x1xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_124 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x1x1xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %cst_53 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%172 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x20x1x1xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x20x1x1xf32>
    %214 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %212 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%171 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x20x1x1xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%214, %cst_52 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%176 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %216 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x480x1x1xf32>) outs(%167 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x480x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %209 : tensor<1x480x1x1xf32>, tensor<1x480x2x2xf32>) outs(%157 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %218 = tensor.empty() : tensor<1x112x2x2xf32>
    %219 = linalg.fill ins(%cst_119 : f32) outs(%218 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    %220 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%217, %cst_51 : tensor<1x480x2x2xf32>, tensor<112x480x1x1xf32>) outs(%219 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %221 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %cst_50, %cst_49, %cst_49, %cst_50 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%220 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x112x2x2xf32>
    %222 = tensor.empty() : tensor<1x672x2x2xf32>
    %223 = linalg.fill ins(%cst_119 : f32) outs(%222 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_48 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%223 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%224 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x672x2x2xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x2x2xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %225 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_143 = tensor.pad %227 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x6x6xf32>
    %collapsed_144 = tensor.collapse_shape %cst_45 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %228 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_143, %collapsed_144 : tensor<1x672x6x6xf32>, tensor<672x5x5xf32>) outs(%223 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%228 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x672x2x2xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x2x2xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %229 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %232 = tensor.empty() : tensor<1x672x1x1xf32>
    %233 = linalg.fill ins(%cst_119 : f32) outs(%232 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %234 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %144 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%233 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_124 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %236 = tensor.empty() : tensor<1x28x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_44 : tensor<28xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x1x1xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %cst_43 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%237 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x28x1x1xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x28x1x1xf32>
    %240 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %238 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x28x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_46 : tensor<672xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x672x1x1xf32>
    %242 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_42 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%241 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %231 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %245 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%244, %cst_41 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%219 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %246 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_50, %cst_49, %cst_49, %cst_50 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%245 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x112x2x2xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %221 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%218 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x112x2x2xf32>
    %248 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%247, %cst_40 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%223 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %249 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%248 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x672x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x2x2xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %249 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_145 = tensor.pad %251 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x6x6xf32>
    %collapsed_146 = tensor.collapse_shape %cst_39 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %252 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_145, %collapsed_146 : tensor<1x672x6x6xf32>, tensor<672x5x5xf32>) outs(%223 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %253 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%252 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x672x2x2xf32>
    %254 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x2x2xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %253 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %256 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %144 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%233 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.divf %in, %cst_124 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%257, %cst_38 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%237 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x28x1x1xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x28x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %258 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x28x1x1xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_37 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%241 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %255 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_36 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%219 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_50, %cst_49, %cst_49, %cst_50 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%264 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x112x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %247 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%218 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x112x2x2xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_35 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%223 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%267 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x672x2x2xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269, %268 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%222 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_147 = tensor.pad %270 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x6x6xf32>
    %collapsed_148 = tensor.collapse_shape %cst_34 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %271 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_147, %collapsed_148 : tensor<1x672x6x6xf32>, tensor<672x5x5xf32>) outs(%233 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %272 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x672x1x1xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%271 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x672x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %272 : tensor<1x672x1x1xf32>, tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %275 = tensor.empty() : tensor<1x1xf32>
    %276 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %275 : tensor<1x672x1x1xf32>, tensor<1x1xf32>) outs(%233 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_33 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%237 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %278 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277 : tensor<1x28x1x1xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x28x1x1xf32>
    %279 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %277 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%236 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x28x1x1xf32>
    %280 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%279, %cst_32 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%241 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x672x1x1xf32>
    %282 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %274 : tensor<1x672x1x1xf32>, tensor<1x672x1x1xf32>) outs(%232 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %283 = tensor.empty() : tensor<1x192x1x1xf32>
    %284 = linalg.fill ins(%cst_119 : f32) outs(%283 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %cst_31 : tensor<1x672x1x1xf32>, tensor<192x672x1x1xf32>) outs(%284 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %286 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%285 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x192x1x1xf32>
    %287 = tensor.empty() : tensor<1x1152x1x1xf32>
    %288 = linalg.fill ins(%cst_119 : f32) outs(%287 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %289 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_28 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %290 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%289 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %290 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_149 = tensor.pad %292 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x5x5xf32>
    %collapsed_150 = tensor.collapse_shape %cst_25 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %293 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_149, %collapsed_150 : tensor<1x1152x5x5xf32>, tensor<1152x5x5xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%293 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %294 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %297 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %275 : tensor<1x1152x1x1xf32>, tensor<1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %298 = tensor.empty() : tensor<1x48x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_24 : tensor<48xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %300 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%297, %cst_23 : tensor<1x1152x1x1xf32>, tensor<48x1152x1x1xf32>) outs(%299 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %301 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x48x1x1xf32>
    %302 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %300 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_26 : tensor<1152xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1152x1x1xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%302, %cst_22 : tensor<1x48x1x1xf32>, tensor<1152x48x1x1xf32>) outs(%303 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %296 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %307 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%306, %cst_21 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%284 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%307 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x192x1x1xf32>
    %309 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %286 : tensor<1x192x1x1xf32>, tensor<1x192x1x1xf32>) outs(%283 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x1x1xf32>
    %310 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %cst_20 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %311 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%310 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %313 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %311 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_151 = tensor.pad %313 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x5x5xf32>
    %collapsed_152 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %314 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_151, %collapsed_152 : tensor<1x1152x5x5xf32>, tensor<1152x5x5xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%314 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %315 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %318 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %275 : tensor<1x1152x1x1xf32>, tensor<1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %319 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%318, %cst_18 : tensor<1x1152x1x1xf32>, tensor<48x1152x1x1xf32>) outs(%299 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %320 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x48x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %319 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x1x1xf32>
    %322 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%321, %cst_17 : tensor<1x48x1x1xf32>, tensor<1152x48x1x1xf32>) outs(%303 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %323 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %317 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %325 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%324, %cst_16 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%284 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %326 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%325 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x192x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %309 : tensor<1x192x1x1xf32>, tensor<1x192x1x1xf32>) outs(%283 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x1x1xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_15 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%328 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %329 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_153 = tensor.pad %331 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x5x5xf32>
    %collapsed_154 = tensor.collapse_shape %cst_14 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %332 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_153, %collapsed_154 : tensor<1x1152x5x5xf32>, tensor<1152x5x5xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %333 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%332 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %334 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %333 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %336 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %275 : tensor<1x1152x1x1xf32>, tensor<1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_13 : tensor<1x1152x1x1xf32>, tensor<48x1152x1x1xf32>) outs(%299 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %338 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x48x1x1xf32>
    %339 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %337 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x1x1xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%339, %cst_12 : tensor<1x48x1x1xf32>, tensor<1152x48x1x1xf32>) outs(%303 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %335 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%342, %cst_11 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%284 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %344 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%343 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x192x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %327 : tensor<1x192x1x1xf32>, tensor<1x192x1x1xf32>) outs(%283 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x192x1x1xf32>
    %346 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%345, %cst_10 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %347 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%346 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %347 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_155 = tensor.pad %349 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_119 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x3x3xf32>
    %collapsed_156 = tensor.collapse_shape %cst_9 [[0, 1], [2], [3]] : tensor<1152x1x3x3xf32> into tensor<1152x3x3xf32>
    %350 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_155, %collapsed_156 : tensor<1x1152x3x3xf32>, tensor<1152x3x3xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %351 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%350 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1152x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %351 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %354 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%353, %275 : tensor<1x1152x1x1xf32>, tensor<1x1xf32>) outs(%288 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %cst_8 : tensor<1x1152x1x1xf32>, tensor<48x1152x1x1xf32>) outs(%299 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x48x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %355 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%298 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x48x1x1xf32>
    %358 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%357, %cst_7 : tensor<1x48x1x1xf32>, tensor<1152x48x1x1xf32>) outs(%303 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %359 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1152x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %353 : tensor<1x1152x1x1xf32>, tensor<1x1152x1x1xf32>) outs(%287 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1152x1x1xf32>
    %361 = tensor.empty() : tensor<1x320x1x1xf32>
    %362 = linalg.fill ins(%cst_119 : f32) outs(%361 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %cst_6 : tensor<1x1152x1x1xf32>, tensor<320x1152x1x1xf32>) outs(%362 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_5, %cst_4, %cst_4, %cst_5 : tensor<1x320x1x1xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%363 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x320x1x1xf32>
    %365 = tensor.empty() : tensor<1x1280x1x1xf32>
    %366 = linalg.fill ins(%cst_119 : f32) outs(%365 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %367 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%364, %cst_3 : tensor<1x320x1x1xf32>, tensor<1280x320x1x1xf32>) outs(%366 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %368 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%367 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %in_159: f32, %in_160: f32, %in_161: f32, %out: f32):
      %378 = arith.truncf %cst_120 : f64 to f32
      %379 = arith.addf %in_161, %378 : f32
      %380 = math.rsqrt %379 : f32
      %381 = arith.subf %in, %in_160 : f32
      %382 = arith.mulf %381, %380 : f32
      %383 = arith.mulf %382, %in_158 : f32
      %384 = arith.addf %383, %in_159 : f32
      linalg.yield %384 : f32
    } -> tensor<1x1280x1x1xf32>
    %369 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x1280x1x1xf32>) outs(%365 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %378 = arith.negf %in : f32
      %379 = math.exp %378 : f32
      %380 = arith.addf %379, %cst_125 : f32
      %381 = arith.divf %cst_125, %380 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1280x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %368 : tensor<1x1280x1x1xf32>, tensor<1x1280x1x1xf32>) outs(%365 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.mulf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1280x1x1xf32>
    %371 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %275 : tensor<1x1280x1x1xf32>, tensor<1x1xf32>) outs(%366 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %collapsed_157 = tensor.collapse_shape %371 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %372 = tensor.empty() : tensor<1280x1000xf32>
    %373 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1280xf32>) outs(%372 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %374 = tensor.empty() : tensor<1x1000xf32>
    %375 = linalg.fill ins(%cst_119 : f32) outs(%374 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %376 = linalg.matmul ins(%collapsed_157, %373 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%375 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %377 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%376, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%374 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_158: f32, %out: f32):
      %378 = arith.addf %in, %in_158 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1000xf32>
    return %377 : tensor<1x1000xf32>
  }
}
