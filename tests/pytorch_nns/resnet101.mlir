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
    %cst = arith.constant dense<-0.002960e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<-0.003523e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.004913e+00> : tensor<2048x512x1x1xf32>
    %cst_2 = arith.constant dense<-0.015061e+00> : tensor<512x512x3x3xf32>
    %cst_3 = arith.constant dense<-0.003677e+00> : tensor<512x2048x1x1xf32>
    %cst_4 = arith.constant dense<-0.023820e+00> : tensor<2048x512x1x1xf32>
    %cst_5 = arith.constant dense<-0.006697e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<0.000192e+00> : tensor<512x2048x1x1xf32>
    %cst_7 = arith.constant dense<-0.013701e+00> : tensor<2048x1024x1x1xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2048xf32>
    %cst_10 = arith.constant dense<0.009689e+00> : tensor<2048x512x1x1xf32>
    %cst_11 = arith.constant dense<-0.013016e+00> : tensor<512x512x3x3xf32>
    %cst_12 = arith.constant dense<0.016635e+00> : tensor<512x1024x1x1xf32>
    %cst_13 = arith.constant dense<0.004022e+00> : tensor<1024x256x1x1xf32>
    %cst_14 = arith.constant dense<0.026875e+00> : tensor<256x256x3x3xf32>
    %cst_15 = arith.constant dense<0.014430e+00> : tensor<256x1024x1x1xf32>
    %cst_16 = arith.constant dense<-0.040377e+00> : tensor<1024x256x1x1xf32>
    %cst_17 = arith.constant dense<-0.013760e+00> : tensor<256x256x3x3xf32>
    %cst_18 = arith.constant dense<-0.005304e+00> : tensor<256x1024x1x1xf32>
    %cst_19 = arith.constant dense<-0.005834e+00> : tensor<1024x256x1x1xf32>
    %cst_20 = arith.constant dense<-0.019596e+00> : tensor<256x256x3x3xf32>
    %cst_21 = arith.constant dense<-0.013280e+00> : tensor<256x1024x1x1xf32>
    %cst_22 = arith.constant dense<-0.002452e+00> : tensor<1024x256x1x1xf32>
    %cst_23 = arith.constant dense<0.003222e+00> : tensor<256x256x3x3xf32>
    %cst_24 = arith.constant dense<0.001964e+00> : tensor<256x1024x1x1xf32>
    %cst_25 = arith.constant dense<-0.015373e+00> : tensor<1024x256x1x1xf32>
    %cst_26 = arith.constant dense<-0.004376e+00> : tensor<256x256x3x3xf32>
    %cst_27 = arith.constant dense<-0.016837e+00> : tensor<256x1024x1x1xf32>
    %cst_28 = arith.constant dense<0.004530e+00> : tensor<1024x256x1x1xf32>
    %cst_29 = arith.constant dense<-0.000740e+00> : tensor<256x256x3x3xf32>
    %cst_30 = arith.constant dense<0.011776e+00> : tensor<256x1024x1x1xf32>
    %cst_31 = arith.constant dense<-0.005181e+00> : tensor<1024x256x1x1xf32>
    %cst_32 = arith.constant dense<-0.001972e+00> : tensor<256x256x3x3xf32>
    %cst_33 = arith.constant dense<-0.000948e+00> : tensor<256x1024x1x1xf32>
    %cst_34 = arith.constant dense<0.009277e+00> : tensor<1024x256x1x1xf32>
    %cst_35 = arith.constant dense<0.007613e+00> : tensor<256x256x3x3xf32>
    %cst_36 = arith.constant dense<0.001745e+00> : tensor<256x1024x1x1xf32>
    %cst_37 = arith.constant dense<-0.002832e+00> : tensor<1024x256x1x1xf32>
    %cst_38 = arith.constant dense<-0.000314e+00> : tensor<256x256x3x3xf32>
    %cst_39 = arith.constant dense<0.005699e+00> : tensor<256x1024x1x1xf32>
    %cst_40 = arith.constant dense<0.014790e+00> : tensor<1024x256x1x1xf32>
    %cst_41 = arith.constant dense<0.015736e+00> : tensor<256x256x3x3xf32>
    %cst_42 = arith.constant dense<0.003051e+00> : tensor<256x1024x1x1xf32>
    %cst_43 = arith.constant dense<0.018728e+00> : tensor<1024x256x1x1xf32>
    %cst_44 = arith.constant dense<-0.009103e+00> : tensor<256x256x3x3xf32>
    %cst_45 = arith.constant dense<-0.017035e+00> : tensor<256x1024x1x1xf32>
    %cst_46 = arith.constant dense<0.011217e+00> : tensor<1024x256x1x1xf32>
    %cst_47 = arith.constant dense<-0.002287e+00> : tensor<256x256x3x3xf32>
    %cst_48 = arith.constant dense<0.003883e+00> : tensor<256x1024x1x1xf32>
    %cst_49 = arith.constant dense<-0.025492e+00> : tensor<1024x256x1x1xf32>
    %cst_50 = arith.constant dense<0.011344e+00> : tensor<256x256x3x3xf32>
    %cst_51 = arith.constant dense<-0.009712e+00> : tensor<256x1024x1x1xf32>
    %cst_52 = arith.constant dense<-0.008368e+00> : tensor<1024x256x1x1xf32>
    %cst_53 = arith.constant dense<-0.002334e+00> : tensor<256x256x3x3xf32>
    %cst_54 = arith.constant dense<-0.000249e+00> : tensor<256x1024x1x1xf32>
    %cst_55 = arith.constant dense<0.009319e+00> : tensor<1024x256x1x1xf32>
    %cst_56 = arith.constant dense<0.016313e+00> : tensor<256x256x3x3xf32>
    %cst_57 = arith.constant dense<-0.001274e+00> : tensor<256x1024x1x1xf32>
    %cst_58 = arith.constant dense<0.015040e+00> : tensor<1024x256x1x1xf32>
    %cst_59 = arith.constant dense<0.007840e+00> : tensor<256x256x3x3xf32>
    %cst_60 = arith.constant dense<-0.021074e+00> : tensor<256x1024x1x1xf32>
    %cst_61 = arith.constant dense<0.007989e+00> : tensor<1024x256x1x1xf32>
    %cst_62 = arith.constant dense<0.007714e+00> : tensor<256x256x3x3xf32>
    %cst_63 = arith.constant dense<-0.004166e+00> : tensor<256x1024x1x1xf32>
    %cst_64 = arith.constant dense<-0.004757e+00> : tensor<1024x256x1x1xf32>
    %cst_65 = arith.constant dense<0.006612e+00> : tensor<256x256x3x3xf32>
    %cst_66 = arith.constant dense<0.004086e+00> : tensor<256x1024x1x1xf32>
    %cst_67 = arith.constant dense<-0.010943e+00> : tensor<1024x256x1x1xf32>
    %cst_68 = arith.constant dense<-0.021060e+00> : tensor<256x256x3x3xf32>
    %cst_69 = arith.constant dense<-0.004486e+00> : tensor<256x1024x1x1xf32>
    %cst_70 = arith.constant dense<-0.002354e+00> : tensor<1024x256x1x1xf32>
    %cst_71 = arith.constant dense<-0.017082e+00> : tensor<256x256x3x3xf32>
    %cst_72 = arith.constant dense<0.004386e+00> : tensor<256x1024x1x1xf32>
    %cst_73 = arith.constant dense<0.004677e+00> : tensor<1024x256x1x1xf32>
    %cst_74 = arith.constant dense<-0.001885e+00> : tensor<256x256x3x3xf32>
    %cst_75 = arith.constant dense<0.019470e+00> : tensor<256x1024x1x1xf32>
    %cst_76 = arith.constant dense<0.014172e+00> : tensor<1024x256x1x1xf32>
    %cst_77 = arith.constant dense<-0.000173e+00> : tensor<256x256x3x3xf32>
    %cst_78 = arith.constant dense<0.005780e+00> : tensor<256x1024x1x1xf32>
    %cst_79 = arith.constant dense<-0.000226e+00> : tensor<1024x512x1x1xf32>
    %cst_80 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_81 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_82 = arith.constant dense<-0.005358e+00> : tensor<1024x256x1x1xf32>
    %cst_83 = arith.constant dense<0.000784e+00> : tensor<256x256x3x3xf32>
    %cst_84 = arith.constant dense<-0.001231e+00> : tensor<256x512x1x1xf32>
    %cst_85 = arith.constant dense<-0.008838e+00> : tensor<512x128x1x1xf32>
    %cst_86 = arith.constant dense<-0.009077e+00> : tensor<128x128x3x3xf32>
    %cst_87 = arith.constant dense<-0.004900e+00> : tensor<128x512x1x1xf32>
    %cst_88 = arith.constant dense<0.025217e+00> : tensor<512x128x1x1xf32>
    %cst_89 = arith.constant dense<-0.010590e+00> : tensor<128x128x3x3xf32>
    %cst_90 = arith.constant dense<0.005195e+00> : tensor<128x512x1x1xf32>
    %cst_91 = arith.constant dense<0.016688e+00> : tensor<512x128x1x1xf32>
    %cst_92 = arith.constant dense<-0.002511e+00> : tensor<128x128x3x3xf32>
    %cst_93 = arith.constant dense<-0.008473e+00> : tensor<128x512x1x1xf32>
    %cst_94 = arith.constant dense<-0.014747e+00> : tensor<512x256x1x1xf32>
    %cst_95 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_96 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_97 = arith.constant dense<-0.000900e+00> : tensor<512x128x1x1xf32>
    %cst_98 = arith.constant dense<-0.003587e+00> : tensor<128x128x3x3xf32>
    %cst_99 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_100 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_101 = arith.constant dense<0.002069e+00> : tensor<128x256x1x1xf32>
    %cst_102 = arith.constant dense<-0.010058e+00> : tensor<256x64x1x1xf32>
    %cst_103 = arith.constant dense<-0.016859e+00> : tensor<64x64x3x3xf32>
    %cst_104 = arith.constant dense<0.017955e+00> : tensor<64x256x1x1xf32>
    %cst_105 = arith.constant dense<0.007460e+00> : tensor<256x64x1x1xf32>
    %cst_106 = arith.constant dense<-0.021041e+00> : tensor<64x64x3x3xf32>
    %cst_107 = arith.constant dense<0.007719e+00> : tensor<64x256x1x1xf32>
    %cst_108 = arith.constant dense<0.009672e+00> : tensor<256x64x1x1xf32>
    %cst_109 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_110 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_111 = arith.constant dense<0.003750e+00> : tensor<256x64x1x1xf32>
    %cst_112 = arith.constant dense<-0.008427e+00> : tensor<64x64x3x3xf32>
    %cst_113 = arith.constant dense<0.003562e+00> : tensor<64x64x1x1xf32>
    %cst_114 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_115 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_116 = arith.constant dense<-0.000331e+00> : tensor<64x3x7x7xf32>
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
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_120 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_118 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_118 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_120, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %10 = linalg.fill ins(%cst_117 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_113 : tensor<1x64x8x8xf32>, tensor<64x64x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_121 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_121, %cst_112 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %17 = tensor.empty() : tensor<1x256x8x8xf32>
    %18 = linalg.fill ins(%cst_117 : f32) outs(%17 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_111 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%19 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x8x8xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_108 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%21 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x8x8xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %22 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x256x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_107 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_122 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_122, %cst_106 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %29 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%28 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %cst_105 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%31 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x8x8xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %24 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x256x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %cst_104 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_123 = tensor.pad %37 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_123, %cst_103 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%38 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_102 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%41 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x8x8xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %34 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x256x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x8x8xf32>
    %45 = tensor.empty() : tensor<1x128x8x8xf32>
    %46 = linalg.fill ins(%cst_117 : f32) outs(%45 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_101 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%46 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%47 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x8x8xf32>) outs(%45 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_124 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %50 = tensor.empty() : tensor<1x128x4x4xf32>
    %51 = linalg.fill ins(%cst_117 : f32) outs(%50 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_124, %cst_98 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%52 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %55 = tensor.empty() : tensor<1x512x4x4xf32>
    %56 = linalg.fill ins(%cst_117 : f32) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_97 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%57 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x4x4xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%44, %cst_94 : tensor<1x256x8x8xf32>, tensor<512x256x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%59 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x4x4xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %60 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x512x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_93 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%63 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_125 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_125, %cst_92 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%66 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_91 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%69 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %62 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x512x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_90 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%73 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_126 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_126, %cst_89 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%76 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_88 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%79 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %72 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x512x4x4xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_87 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%83 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_127 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_127, %cst_86 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_100, %cst_99, %cst_99, %cst_100 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%86 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x128x4x4xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x128x4x4xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_85 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%89 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %82 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x512x4x4xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x4x4xf32>
    %93 = tensor.empty() : tensor<1x256x4x4xf32>
    %94 = linalg.fill ins(%cst_117 : f32) outs(%93 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_84 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%94 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%95 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x4x4xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x256x4x4xf32>) outs(%93 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_128 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %98 = tensor.empty() : tensor<1x256x2x2xf32>
    %99 = linalg.fill ins(%cst_117 : f32) outs(%98 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_128, %cst_83 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%100 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %103 = tensor.empty() : tensor<1x1024x2x2xf32>
    %104 = linalg.fill ins(%cst_117 : f32) outs(%103 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_82 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %106 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%105 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%92, %cst_79 : tensor<1x512x4x4xf32>, tensor<1024x512x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%107 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %108 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_78 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%111 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_129 = tensor.pad %113 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_129, %cst_77 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%114 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %117 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%116, %cst_76 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%117 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %110 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %cst_75 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%121 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_130 = tensor.pad %123 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_130, %cst_74 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%124 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%126, %cst_73 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%127 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %120 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_72 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%131 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_131 = tensor.pad %133 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_131, %cst_71 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%134 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_70 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%137 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %130 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %cst_69 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%141 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_132 = tensor.pad %143 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_132, %cst_68 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%144 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_67 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%147 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %140 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_66 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%151 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_133 = tensor.pad %153 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_133, %cst_65 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%154 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_64 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%157 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %150 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%160, %cst_63 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%161 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_134 = tensor.pad %163 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_134, %cst_62 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %165 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%164 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%166, %cst_61 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%167 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %160 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_60 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%171 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_135 = tensor.pad %173 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_135, %cst_59 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%174 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_58 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%177 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %170 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_57 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%181 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_136 = tensor.pad %183 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_136, %cst_56 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%184 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_55 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%187 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %180 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_54 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%191 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_137 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_137, %cst_53 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%194 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %cst_52 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%197 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %190 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%200, %cst_51 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%201 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_138 = tensor.pad %203 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_138, %cst_50 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%204 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_49 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %208 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%207 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %200 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%210, %cst_48 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%211 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_139 = tensor.pad %213 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %214 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_139, %cst_47 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %215 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%214 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %217 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %cst_46 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %218 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%217 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %210 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %cst_45 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%221 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_140 = tensor.pad %223 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_140, %cst_44 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%224 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_43 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%227 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %220 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_42 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%231 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_141 = tensor.pad %233 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_141, %cst_41 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%234 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%236, %cst_40 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%237 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %230 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_39 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%241 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_142 = tensor.pad %243 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_142, %cst_38 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%244 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_37 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%247 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %240 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %cst_36 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%251 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_143 = tensor.pad %253 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_143, %cst_35 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%254 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %cst_34 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%257 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %250 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_33 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%261 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_144 = tensor.pad %263 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_144, %cst_32 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%264 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_31 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%267 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %260 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%270, %cst_30 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %272 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%271 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_145 = tensor.pad %273 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_145, %cst_29 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%274 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_28 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%277 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %270 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %cst_27 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%281 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_146 = tensor.pad %283 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_146, %cst_26 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%284 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_25 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %288 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%287 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %289 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %280 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_24 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%291 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_147 = tensor.pad %293 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_147, %cst_23 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%294 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_22 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %298 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%297 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %290 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%300, %cst_21 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%301 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_148 = tensor.pad %303 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_148, %cst_20 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%304 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %307 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%306, %cst_19 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%307 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %300 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %cst_18 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %312 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%311 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_149 = tensor.pad %313 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %314 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_149, %cst_17 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%314 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%316, %cst_16 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%317 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %310 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%320, %cst_15 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%321 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_150 = tensor.pad %323 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_150, %cst_14 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_110, %cst_109, %cst_109, %cst_110 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%324 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x256x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x256x2x2xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%326, %cst_13 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %328 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_81, %cst_80, %cst_80, %cst_81 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%327 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x1024x2x2xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %320 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1024x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1024x2x2xf32>
    %331 = tensor.empty() : tensor<1x512x2x2xf32>
    %332 = linalg.fill ins(%cst_117 : f32) outs(%331 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_12 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%332 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%333 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x2x2xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x512x2x2xf32>) outs(%331 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_151 = tensor.pad %335 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %336 = tensor.empty() : tensor<1x512x1x1xf32>
    %337 = linalg.fill ins(%cst_117 : f32) outs(%336 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_151, %cst_11 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%337 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%338 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x1x1xf32>
    %340 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x512x1x1xf32>) outs(%336 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x1x1xf32>
    %341 = tensor.empty() : tensor<1x2048x1x1xf32>
    %342 = linalg.fill ins(%cst_117 : f32) outs(%341 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%340, %cst_10 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%342 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %344 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%343 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x2048x1x1xf32>
    %345 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%330, %cst_7 : tensor<1x1024x2x2xf32>, tensor<2048x1024x1x1xf32>) outs(%342 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %346 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%345 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x2048x1x1xf32>
    %347 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %346 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%341 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x2048x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x2048x1x1xf32>) outs(%341 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %349 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%348, %cst_6 : tensor<1x2048x1x1xf32>, tensor<512x2048x1x1xf32>) outs(%337 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%349 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x512x1x1xf32>) outs(%336 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_152 = tensor.pad %351 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_152, %cst_5 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%337 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%352 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x512x1x1xf32>) outs(%336 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x1x1xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %cst_4 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%342 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %356 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%355 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x2048x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %348 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%341 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x2048x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357 : tensor<1x2048x1x1xf32>) outs(%341 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_3 : tensor<1x2048x1x1xf32>, tensor<512x2048x1x1xf32>) outs(%337 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%359 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x512x1x1xf32>) outs(%336 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_153 = tensor.pad %361 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_117 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_153, %cst_2 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%337 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %363 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362, %cst_96, %cst_95, %cst_95, %cst_96 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%362 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x512x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x512x1x1xf32>) outs(%336 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x512x1x1xf32>
    %365 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%364, %cst_1 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%342 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %366 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%365 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %in_155: f32, %in_156: f32, %in_157: f32, %out: f32):
      %377 = arith.truncf %cst_119 : f64 to f32
      %378 = arith.addf %in_157, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_156 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_154 : f32
      %383 = arith.addf %382, %in_155 : f32
      linalg.yield %383 : f32
    } -> tensor<1x2048x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %358 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%341 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x2048x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x2048x1x1xf32>) outs(%341 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_117 : f32
      %378 = arith.select %377, %in, %cst_117 : f32
      linalg.yield %378 : f32
    } -> tensor<1x2048x1x1xf32>
    %369 = tensor.empty() : tensor<1x1xf32>
    %370 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %369 : tensor<1x2048x1x1xf32>, tensor<1x1xf32>) outs(%342 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %370 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %371 = tensor.empty() : tensor<2048x1000xf32>
    %372 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%371 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %373 = tensor.empty() : tensor<1x1000xf32>
    %374 = linalg.fill ins(%cst_117 : f32) outs(%373 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %375 = linalg.matmul ins(%collapsed, %372 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%374 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %376 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%375, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%373 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_154: f32, %out: f32):
      %377 = arith.addf %in, %in_154 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1000xf32>
    return %376 : tensor<1x1000xf32>
  }
}
