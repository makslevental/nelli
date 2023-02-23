#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ResNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.005830e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<-0.007198e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.007133e+00> : tensor<2048x1024x1x1xf32>
    %cst_2 = arith.constant dense<0.017492e+00> : tensor<1024x1024x3x3xf32>
    %cst_3 = arith.constant dense<0.014407e+00> : tensor<1024x2048x1x1xf32>
    %cst_4 = arith.constant dense<-0.011684e+00> : tensor<2048x1024x1x1xf32>
    %cst_5 = arith.constant dense<-0.001591e+00> : tensor<1024x1024x3x3xf32>
    %cst_6 = arith.constant dense<-0.010377e+00> : tensor<1024x2048x1x1xf32>
    %cst_7 = arith.constant dense<0.027224e+00> : tensor<2048x1024x1x1xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2048xf32>
    %cst_10 = arith.constant dense<-0.007879e+00> : tensor<2048x1024x1x1xf32>
    %cst_11 = arith.constant dense<-0.011937e+00> : tensor<1024x1024x3x3xf32>
    %cst_12 = arith.constant dense<-0.007700e+00> : tensor<1024x1024x1x1xf32>
    %cst_13 = arith.constant dense<0.001011e+00> : tensor<1024x512x1x1xf32>
    %cst_14 = arith.constant dense<0.016585e+00> : tensor<512x512x3x3xf32>
    %cst_15 = arith.constant dense<-0.008106e+00> : tensor<512x1024x1x1xf32>
    %cst_16 = arith.constant dense<0.003831e+00> : tensor<1024x512x1x1xf32>
    %cst_17 = arith.constant dense<-0.002176e+00> : tensor<512x512x3x3xf32>
    %cst_18 = arith.constant dense<-0.008116e+00> : tensor<512x1024x1x1xf32>
    %cst_19 = arith.constant dense<0.005611e+00> : tensor<1024x512x1x1xf32>
    %cst_20 = arith.constant dense<0.000905e+00> : tensor<512x512x3x3xf32>
    %cst_21 = arith.constant dense<0.021374e+00> : tensor<512x1024x1x1xf32>
    %cst_22 = arith.constant dense<0.004948e+00> : tensor<1024x512x1x1xf32>
    %cst_23 = arith.constant dense<-0.000019e+00> : tensor<512x512x3x3xf32>
    %cst_24 = arith.constant dense<-0.002376e+00> : tensor<512x1024x1x1xf32>
    %cst_25 = arith.constant dense<-0.000691e+00> : tensor<1024x512x1x1xf32>
    %cst_26 = arith.constant dense<-0.006600e+00> : tensor<512x512x3x3xf32>
    %cst_27 = arith.constant dense<-0.009834e+00> : tensor<512x1024x1x1xf32>
    %cst_28 = arith.constant dense<-0.013715e+00> : tensor<1024x512x1x1xf32>
    %cst_29 = arith.constant dense<0.010211e+00> : tensor<512x512x3x3xf32>
    %cst_30 = arith.constant dense<-0.005057e+00> : tensor<512x1024x1x1xf32>
    %cst_31 = arith.constant dense<-0.003387e+00> : tensor<1024x512x1x1xf32>
    %cst_32 = arith.constant dense<0.008849e+00> : tensor<512x512x3x3xf32>
    %cst_33 = arith.constant dense<-0.003091e+00> : tensor<512x1024x1x1xf32>
    %cst_34 = arith.constant dense<0.011682e+00> : tensor<1024x512x1x1xf32>
    %cst_35 = arith.constant dense<-0.014579e+00> : tensor<512x512x3x3xf32>
    %cst_36 = arith.constant dense<-0.005840e+00> : tensor<512x1024x1x1xf32>
    %cst_37 = arith.constant dense<-0.001022e+00> : tensor<1024x512x1x1xf32>
    %cst_38 = arith.constant dense<0.001223e+00> : tensor<512x512x3x3xf32>
    %cst_39 = arith.constant dense<0.004861e+00> : tensor<512x1024x1x1xf32>
    %cst_40 = arith.constant dense<-0.001777e+00> : tensor<1024x512x1x1xf32>
    %cst_41 = arith.constant dense<-0.017860e+00> : tensor<512x512x3x3xf32>
    %cst_42 = arith.constant dense<-0.030069e+00> : tensor<512x1024x1x1xf32>
    %cst_43 = arith.constant dense<0.015999e+00> : tensor<1024x512x1x1xf32>
    %cst_44 = arith.constant dense<0.015831e+00> : tensor<512x512x3x3xf32>
    %cst_45 = arith.constant dense<-0.000036e+00> : tensor<512x1024x1x1xf32>
    %cst_46 = arith.constant dense<-0.009178e+00> : tensor<1024x512x1x1xf32>
    %cst_47 = arith.constant dense<-0.011444e+00> : tensor<512x512x3x3xf32>
    %cst_48 = arith.constant dense<0.020607e+00> : tensor<512x1024x1x1xf32>
    %cst_49 = arith.constant dense<-0.004375e+00> : tensor<1024x512x1x1xf32>
    %cst_50 = arith.constant dense<0.009886e+00> : tensor<512x512x3x3xf32>
    %cst_51 = arith.constant dense<-0.002239e+00> : tensor<512x1024x1x1xf32>
    %cst_52 = arith.constant dense<-0.000224e+00> : tensor<1024x512x1x1xf32>
    %cst_53 = arith.constant dense<0.000998e+00> : tensor<512x512x3x3xf32>
    %cst_54 = arith.constant dense<0.018557e+00> : tensor<512x1024x1x1xf32>
    %cst_55 = arith.constant dense<-0.006376e+00> : tensor<1024x512x1x1xf32>
    %cst_56 = arith.constant dense<-0.003279e+00> : tensor<512x512x3x3xf32>
    %cst_57 = arith.constant dense<0.010580e+00> : tensor<512x1024x1x1xf32>
    %cst_58 = arith.constant dense<-0.007456e+00> : tensor<1024x512x1x1xf32>
    %cst_59 = arith.constant dense<-0.009026e+00> : tensor<512x512x3x3xf32>
    %cst_60 = arith.constant dense<0.000755e+00> : tensor<512x1024x1x1xf32>
    %cst_61 = arith.constant dense<-0.010181e+00> : tensor<1024x512x1x1xf32>
    %cst_62 = arith.constant dense<0.004323e+00> : tensor<512x512x3x3xf32>
    %cst_63 = arith.constant dense<-0.011347e+00> : tensor<512x1024x1x1xf32>
    %cst_64 = arith.constant dense<-0.001400e+00> : tensor<1024x512x1x1xf32>
    %cst_65 = arith.constant dense<0.000900e+00> : tensor<512x512x3x3xf32>
    %cst_66 = arith.constant dense<0.011198e+00> : tensor<512x1024x1x1xf32>
    %cst_67 = arith.constant dense<-0.001615e+00> : tensor<1024x512x1x1xf32>
    %cst_68 = arith.constant dense<-0.014127e+00> : tensor<512x512x3x3xf32>
    %cst_69 = arith.constant dense<0.000304e+00> : tensor<512x1024x1x1xf32>
    %cst_70 = arith.constant dense<0.010388e+00> : tensor<1024x512x1x1xf32>
    %cst_71 = arith.constant dense<0.006200e+00> : tensor<512x512x3x3xf32>
    %cst_72 = arith.constant dense<0.000194e+00> : tensor<512x1024x1x1xf32>
    %cst_73 = arith.constant dense<-0.012921e+00> : tensor<1024x512x1x1xf32>
    %cst_74 = arith.constant dense<-0.001097e+00> : tensor<512x512x3x3xf32>
    %cst_75 = arith.constant dense<0.005524e+00> : tensor<512x1024x1x1xf32>
    %cst_76 = arith.constant dense<-0.005240e+00> : tensor<1024x512x1x1xf32>
    %cst_77 = arith.constant dense<-0.015641e+00> : tensor<512x512x3x3xf32>
    %cst_78 = arith.constant dense<0.003463e+00> : tensor<512x1024x1x1xf32>
    %cst_79 = arith.constant dense<0.004974e+00> : tensor<1024x512x1x1xf32>
    %cst_80 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_81 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_82 = arith.constant dense<0.009831e+00> : tensor<1024x512x1x1xf32>
    %cst_83 = arith.constant dense<0.009423e+00> : tensor<512x512x3x3xf32>
    %cst_84 = arith.constant dense<0.009703e+00> : tensor<512x512x1x1xf32>
    %cst_85 = arith.constant dense<-0.026694e+00> : tensor<512x256x1x1xf32>
    %cst_86 = arith.constant dense<-0.018043e+00> : tensor<256x256x3x3xf32>
    %cst_87 = arith.constant dense<-0.000609e+00> : tensor<256x512x1x1xf32>
    %cst_88 = arith.constant dense<0.000246e+00> : tensor<512x256x1x1xf32>
    %cst_89 = arith.constant dense<0.010655e+00> : tensor<256x256x3x3xf32>
    %cst_90 = arith.constant dense<0.005911e+00> : tensor<256x512x1x1xf32>
    %cst_91 = arith.constant dense<-0.002721e+00> : tensor<512x256x1x1xf32>
    %cst_92 = arith.constant dense<-0.004166e+00> : tensor<256x256x3x3xf32>
    %cst_93 = arith.constant dense<0.004506e+00> : tensor<256x512x1x1xf32>
    %cst_94 = arith.constant dense<-0.010285e+00> : tensor<512x256x1x1xf32>
    %cst_95 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_96 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_97 = arith.constant dense<-0.010388e+00> : tensor<512x256x1x1xf32>
    %cst_98 = arith.constant dense<0.000988e+00> : tensor<256x256x3x3xf32>
    %cst_99 = arith.constant dense<-0.014703e+00> : tensor<256x256x1x1xf32>
    %cst_100 = arith.constant dense<-0.001655e+00> : tensor<256x128x1x1xf32>
    %cst_101 = arith.constant dense<0.006915e+00> : tensor<128x128x3x3xf32>
    %cst_102 = arith.constant dense<-0.017299e+00> : tensor<128x256x1x1xf32>
    %cst_103 = arith.constant dense<0.012397e+00> : tensor<256x128x1x1xf32>
    %cst_104 = arith.constant dense<0.007630e+00> : tensor<128x128x3x3xf32>
    %cst_105 = arith.constant dense<-0.014932e+00> : tensor<128x256x1x1xf32>
    %cst_106 = arith.constant dense<-0.010224e+00> : tensor<256x64x1x1xf32>
    %cst_107 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_108 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_109 = arith.constant dense<0.010704e+00> : tensor<256x128x1x1xf32>
    %cst_110 = arith.constant dense<-0.019767e+00> : tensor<128x128x3x3xf32>
    %cst_111 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_112 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_113 = arith.constant dense<-0.012961e+00> : tensor<128x64x1x1xf32>
    %cst_114 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_115 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_116 = arith.constant dense<0.014257e+00> : tensor<64x3x7x7xf32>
    %cst_117 = arith.constant 0.000000e+00 : f32
    %cst_118 = arith.constant -3.40282347E+38 : f32
    %cst_119 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_117 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_116 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_120 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_118 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_118 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_120, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %10 = tensor.empty() : tensor<1x128x8x8xf32>
    %11 = linalg.fill ins(%cst_117 : f32) outs(%10 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_113 : tensor<1x64x8x8xf32>, tensor<128x64x1x1xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_121 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_121, %cst_110 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%15 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x8x8xf32>
    %18 = tensor.empty() : tensor<1x256x8x8xf32>
    %19 = linalg.fill ins(%cst_117 : f32) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%17, %cst_109 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%20 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_106 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%22 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %23 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x256x8x8xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x8x8xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%25, %cst_105 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%26 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_122 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_122, %cst_104 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x8x8xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%31, %cst_103 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%32 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %25 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x256x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x8x8xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%35, %cst_102 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_123 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_123, %cst_101 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x128x8x8xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_100 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%42 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %35 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x256x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x8x8xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_99 : tensor<1x256x8x8xf32>, tensor<256x256x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%46 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x8x8xf32>
    %padded_124 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x8x8xf32> to tensor<1x256x10x10xf32>
    %49 = tensor.empty() : tensor<1x256x4x4xf32>
    %50 = linalg.fill ins(%cst_117 : f32) outs(%49 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_124, %cst_98 : tensor<1x256x10x10xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%51 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %54 = tensor.empty() : tensor<1x512x4x4xf32>
    %55 = linalg.fill ins(%cst_117 : f32) outs(%54 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%53, %cst_97 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %57 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%56 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%45, %cst_94 : tensor<1x256x8x8xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %59 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%58 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %59 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x512x4x4xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x4x4xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%61, %cst_93 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%62 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_125 = tensor.pad %64 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_125, %cst_92 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%65 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%67, %cst_91 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %61 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x512x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x4x4xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%71, %cst_90 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%72 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_126 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_126, %cst_89 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%75 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_88 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%78 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %71 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x512x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x4x4xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%81, %cst_87 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%82 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_127 = tensor.pad %84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_127, %cst_86 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_108, %cst_107, %cst_107, %cst_108 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%85 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x4x4xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_85 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%88 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %81 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x512x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x4x4xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %cst_84 : tensor<1x512x4x4xf32>, tensor<512x512x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%92 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x4x4xf32>
    %padded_128 = tensor.pad %94 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x4x4xf32> to tensor<1x512x6x6xf32>
    %95 = tensor.empty() : tensor<1x512x2x2xf32>
    %96 = linalg.fill ins(%cst_117 : f32) outs(%95 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_128, %cst_83 : tensor<1x512x6x6xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%97 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %100 = tensor.empty() : tensor<1x1024x2x2xf32>
    %101 = linalg.fill ins(%cst_117 : f32) outs(%100 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_82 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%102 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%91, %cst_79 : tensor<1x512x4x4xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%104 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %105 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %107 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %cst_78 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %109 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%108 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_129 = tensor.pad %110 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_129, %cst_77 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%113, %cst_76 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%114 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %107 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_75 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%118 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_130 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_130, %cst_74 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%121 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%123, %cst_73 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%124 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %117 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_72 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%128 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_131 = tensor.pad %130 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_131, %cst_71 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%131 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_70 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%134 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %127 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_69 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%138 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_132 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_132, %cst_68 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%141 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_67 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%144 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %137 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%147, %cst_66 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%148 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_133 = tensor.pad %150 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_133, %cst_65 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%151 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_64 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%154 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %147 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %157 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %158 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%157, %cst_63 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %159 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%158 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_134 = tensor.pad %160 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_134, %cst_62 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%161 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %cst_61 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %165 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%164 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %157 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%167, %cst_60 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%168 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_135 = tensor.pad %170 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_135, %cst_59 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%171 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%173, %cst_58 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%174 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %167 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %178 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%177, %cst_57 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %179 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%178 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_136 = tensor.pad %180 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_136, %cst_56 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%181 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_55 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%184 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %177 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %cst_54 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %189 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%188 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_137 = tensor.pad %190 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_137, %cst_53 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%191 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_52 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%194 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %187 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_51 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%198 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_138 = tensor.pad %200 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_138, %cst_50 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%201 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%203, %cst_49 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%204 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %197 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%207, %cst_48 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %209 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%208 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_139 = tensor.pad %210 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_139, %cst_47 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%211 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %214 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%213, %cst_46 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %215 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%214 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %207 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%217, %cst_45 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %219 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%218 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_140 = tensor.pad %220 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_140, %cst_44 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%221 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_43 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%224 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %217 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %228 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%227, %cst_42 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%228 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_141 = tensor.pad %230 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_141, %cst_41 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%231 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_40 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%234 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %227 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%237, %cst_39 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %239 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%238 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_142 = tensor.pad %240 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_142, %cst_38 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%241 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%243, %cst_37 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%244 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %237 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %248 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%247, %cst_36 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %249 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%248 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_143 = tensor.pad %250 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_143, %cst_35 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%251 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %cst_34 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%254 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %247 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %257 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%257, %cst_33 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%258 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_144 = tensor.pad %260 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_144, %cst_32 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%261 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_31 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%264 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %257 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %268 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_30 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %269 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%268 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_145 = tensor.pad %270 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_145, %cst_29 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %272 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%271 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%273, %cst_28 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%274 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %267 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%277, %cst_27 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%278 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_146 = tensor.pad %280 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_146, %cst_26 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%281 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%283, %cst_25 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%284 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %277 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%287, %cst_24 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %289 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%288 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_147 = tensor.pad %290 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_147, %cst_23 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%291 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_22 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%294 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %287 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %298 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%297, %cst_21 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%298 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_148 = tensor.pad %300 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_148, %cst_20 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%301 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_19 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%304 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %297 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %308 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%307, %cst_18 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %309 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%308 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_149 = tensor.pad %310 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_149, %cst_17 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %312 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%311 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %314 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%313, %cst_16 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%314 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %307 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %318 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %cst_15 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %319 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%318 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_150 = tensor.pad %320 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_150, %cst_14 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%321 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x2x2xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%323, %cst_13 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%324 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %317 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1024x2x2xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_12 : tensor<1x1024x2x2xf32>, tensor<1024x1024x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%328 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x2x2xf32>
    %padded_151 = tensor.pad %330 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x1024x2x2xf32> to tensor<1x1024x4x4xf32>
    %331 = tensor.empty() : tensor<1x1024x1x1xf32>
    %332 = linalg.fill ins(%cst_117 : f32) outs(%331 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_151, %cst_11 : tensor<1x1024x4x4xf32>, tensor<1024x1024x3x3xf32>) outs(%332 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%333 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x1024x1x1xf32>) outs(%331 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x1x1xf32>
    %336 = tensor.empty() : tensor<1x2048x1x1xf32>
    %337 = linalg.fill ins(%cst_117 : f32) outs(%336 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_10 : tensor<1x1024x1x1xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%338 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%327, %cst_7 : tensor<1x1024x2x2xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%340 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %341 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%336 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x2048x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x2048x1x1xf32>) outs(%336 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x1x1xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %cst_6 : tensor<1x2048x1x1xf32>, tensor<1024x2048x1x1xf32>) outs(%332 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%344 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x1024x1x1xf32>) outs(%331 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x1x1xf32>
    %padded_152 = tensor.pad %346 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x3x3xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_152, %cst_5 : tensor<1x1024x3x3xf32>, tensor<1024x1024x3x3xf32>) outs(%332 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %348 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%347 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x1024x1x1xf32>) outs(%331 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x1x1xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_4 : tensor<1x1024x1x1xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %351 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%350 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %343 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%336 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x2048x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x2048x1x1xf32>) outs(%336 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x1x1xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%353, %cst_3 : tensor<1x2048x1x1xf32>, tensor<1024x2048x1x1xf32>) outs(%332 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%354 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x1024x1x1xf32>) outs(%331 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x1x1xf32>
    %padded_153 = tensor.pad %356 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x3x3xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_153, %cst_2 : tensor<1x1024x3x3xf32>, tensor<1024x1024x3x3xf32>) outs(%332 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%357 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x1x1xf32>
    %359 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x1024x1x1xf32>) outs(%331 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x1x1xf32>
    %360 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%359, %cst_1 : tensor<1x1024x1x1xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %361 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%360 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %372 = arith.truncf %cst_119 : f64 to f32
      %373 = arith.addf %in_157, %372 : f32
      %374 = math.rsqrt %373 : f32
      %375 = arith.subf %in, %in_156 : f32
      %376 = arith.mulf %375, %374 : f32
      %377 = arith.mulf %376, %in_154 : f32
      %378 = arith.addf %377, %in_155 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %362 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %353 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%336 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x2048x1x1xf32>
    %363 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x2048x1x1xf32>) outs(%336 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %372 = arith.cmpf ugt, %in, %cst_117 : f32
      %373 = arith.select %372, %in, %cst_117 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x1x1xf32>
    %364 = tensor.empty() : tensor<1x1xf32>
    %365 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%363, %364 : tensor<1x2048x1x1xf32>, tensor<1x1xf32>) outs(%337 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %365 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %366 = tensor.empty() : tensor<2048x1000xf32>
    %367 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%366 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %368 = tensor.empty() : tensor<1x1000xf32>
    %369 = linalg.fill ins(%cst_117 : f32) outs(%368 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %370 = linalg.matmul ins(%collapsed, %367 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%369 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %371 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%370, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%368 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %372 = arith.addf %in, %in_154 : f32
      linalg.yield %372 : f32
    } -> tensor<1x1000xf32>
    return %371 : tensor<1x1000xf32>
  }
}
