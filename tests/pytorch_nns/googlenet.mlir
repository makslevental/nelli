#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "GoogLeNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.005117e+00> : tensor<1000x1024xf32>
    %cst_0 = arith.constant dense<-0.003896e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.003513e+00> : tensor<128x832x1x1xf32>
    %cst_2 = arith.constant dense<0.008021e+00> : tensor<128x48x3x3xf32>
    %cst_3 = arith.constant dense<-0.002664e+00> : tensor<48x832x1x1xf32>
    %cst_4 = arith.constant dense<0.007482e+00> : tensor<384x192x3x3xf32>
    %cst_5 = arith.constant dense<-0.000041e+00> : tensor<192x832x1x1xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_7 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_8 = arith.constant dense<-0.009617e+00> : tensor<384x832x1x1xf32>
    %cst_9 = arith.constant dense<-0.005182e+00> : tensor<128x832x1x1xf32>
    %cst_10 = arith.constant dense<0.011783e+00> : tensor<128x32x3x3xf32>
    %cst_11 = arith.constant dense<0.010475e+00> : tensor<32x832x1x1xf32>
    %cst_12 = arith.constant dense<-0.005132e+00> : tensor<320x160x3x3xf32>
    %cst_13 = arith.constant dense<-0.022370e+00> : tensor<160x832x1x1xf32>
    %cst_14 = arith.constant dense<0.018658e+00> : tensor<256x832x1x1xf32>
    %cst_15 = arith.constant dense<0.003478e+00> : tensor<128x528x1x1xf32>
    %cst_16 = arith.constant dense<-0.000693e+00> : tensor<128x32x3x3xf32>
    %cst_17 = arith.constant dense<-0.005854e+00> : tensor<32x528x1x1xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_19 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_20 = arith.constant dense<0.005767e+00> : tensor<320x160x3x3xf32>
    %cst_21 = arith.constant dense<0.003533e+00> : tensor<160x528x1x1xf32>
    %cst_22 = arith.constant dense<0.023223e+00> : tensor<256x528x1x1xf32>
    %cst_23 = arith.constant dense<0.011632e+00> : tensor<64x512x1x1xf32>
    %cst_24 = arith.constant dense<0.011238e+00> : tensor<64x32x3x3xf32>
    %cst_25 = arith.constant dense<-0.003547e+00> : tensor<32x512x1x1xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_27 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_28 = arith.constant dense<0.011823e+00> : tensor<288x144x3x3xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_30 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_31 = arith.constant dense<-0.000414e+00> : tensor<144x512x1x1xf32>
    %cst_32 = arith.constant dense<-0.020290e+00> : tensor<112x512x1x1xf32>
    %cst_33 = arith.constant dense<-0.000993e+00> : tensor<64x512x1x1xf32>
    %cst_34 = arith.constant dense<0.004449e+00> : tensor<64x24x3x3xf32>
    %cst_35 = arith.constant dense<0.018139e+00> : tensor<24x512x1x1xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_37 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_38 = arith.constant dense<-0.017519e+00> : tensor<256x128x3x3xf32>
    %cst_39 = arith.constant dense<0.007998e+00> : tensor<128x512x1x1xf32>
    %cst_40 = arith.constant dense<-0.000791e+00> : tensor<128x512x1x1xf32>
    %cst_41 = arith.constant dense<-0.004101e+00> : tensor<64x512x1x1xf32>
    %cst_42 = arith.constant dense<0.006131e+00> : tensor<64x24x3x3xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_44 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_45 = arith.constant dense<-0.004375e+00> : tensor<24x512x1x1xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_47 = arith.constant dense<1.000000e+00> : tensor<224xf32>
    %cst_48 = arith.constant dense<-0.003982e+00> : tensor<224x112x3x3xf32>
    %cst_49 = arith.constant dense<0.000000e+00> : tensor<112xf32>
    %cst_50 = arith.constant dense<1.000000e+00> : tensor<112xf32>
    %cst_51 = arith.constant dense<-0.015379e+00> : tensor<112x512x1x1xf32>
    %cst_52 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_53 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_54 = arith.constant dense<0.011880e+00> : tensor<160x512x1x1xf32>
    %cst_55 = arith.constant dense<-0.000750e+00> : tensor<64x480x1x1xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_57 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_58 = arith.constant dense<0.002559e+00> : tensor<48x16x3x3xf32>
    %cst_59 = arith.constant dense<0.009641e+00> : tensor<16x480x1x1xf32>
    %cst_60 = arith.constant dense<0.000000e+00> : tensor<208xf32>
    %cst_61 = arith.constant dense<1.000000e+00> : tensor<208xf32>
    %cst_62 = arith.constant dense<-0.003656e+00> : tensor<208x96x3x3xf32>
    %cst_63 = arith.constant dense<0.008652e+00> : tensor<96x480x1x1xf32>
    %cst_64 = arith.constant dense<0.004035e+00> : tensor<192x480x1x1xf32>
    %cst_65 = arith.constant dense<-0.011747e+00> : tensor<64x256x1x1xf32>
    %cst_66 = arith.constant dense<0.000014e+00> : tensor<96x32x3x3xf32>
    %cst_67 = arith.constant dense<-0.005929e+00> : tensor<32x256x1x1xf32>
    %cst_68 = arith.constant dense<-0.008595e+00> : tensor<192x128x3x3xf32>
    %cst_69 = arith.constant dense<0.005270e+00> : tensor<128x256x1x1xf32>
    %cst_70 = arith.constant dense<0.008565e+00> : tensor<128x256x1x1xf32>
    %cst_71 = arith.constant dense<0.023263e+00> : tensor<32x192x1x1xf32>
    %cst_72 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_73 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_74 = arith.constant dense<-0.022114e+00> : tensor<32x16x3x3xf32>
    %cst_75 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_76 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_77 = arith.constant dense<0.010179e+00> : tensor<16x192x1x1xf32>
    %cst_78 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_79 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_80 = arith.constant dense<-0.018892e+00> : tensor<128x96x3x3xf32>
    %cst_81 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_82 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_83 = arith.constant dense<0.005986e+00> : tensor<96x192x1x1xf32>
    %cst_84 = arith.constant dense<-0.018832e+00> : tensor<64x192x1x1xf32>
    %cst_85 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_86 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_87 = arith.constant dense<0.012731e+00> : tensor<192x64x3x3xf32>
    %cst_88 = arith.constant dense<-0.003201e+00> : tensor<64x64x1x1xf32>
    %cst_89 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_90 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_91 = arith.constant dense<0.018802e+00> : tensor<64x3x7x7xf32>
    %cst_92 = arith.constant 0.000000e+00 : f32
    %cst_93 = arith.constant -3.40282347E+38 : f32
    %cst_94 = arith.constant 1.000000e-03 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_92 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_91 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_95 = tensor.pad %5 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_93 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_95, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %10 = linalg.fill ins(%cst_92 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_88 : tensor<1x64x8x8xf32>, tensor<64x64x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x8x8xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_96 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %14 = tensor.empty() : tensor<1x192x8x8xf32>
    %15 = linalg.fill ins(%cst_92 : f32) outs(%14 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_96, %cst_87 : tensor<1x64x10x10xf32>, tensor<192x64x3x3xf32>) outs(%15 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %17 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %cst_86, %cst_85, %cst_85, %cst_86 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%16 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x192x8x8xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<1x192x8x8xf32>) outs(%14 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_97 = tensor.pad %18 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %19 = tensor.empty() : tensor<1x192x4x4xf32>
    %20 = linalg.fill ins(%cst_93 : f32) outs(%19 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %21 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_97, %8 : tensor<1x192x10x10xf32>, tensor<3x3xf32>) outs(%20 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %22 = tensor.empty() : tensor<1x64x4x4xf32>
    %23 = linalg.fill ins(%cst_92 : f32) outs(%22 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%21, %cst_84 : tensor<1x192x4x4xf32>, tensor<64x192x1x1xf32>) outs(%23 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %25 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%24 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x4x4xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x64x4x4xf32>) outs(%22 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x4x4xf32>
    %27 = tensor.empty() : tensor<1x96x4x4xf32>
    %28 = linalg.fill ins(%cst_92 : f32) outs(%27 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%21, %cst_83 : tensor<1x192x4x4xf32>, tensor<96x192x1x1xf32>) outs(%28 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%29 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x96x4x4xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x96x4x4xf32>) outs(%27 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_98 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %32 = tensor.empty() : tensor<1x128x4x4xf32>
    %33 = linalg.fill ins(%cst_92 : f32) outs(%32 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_98, %cst_80 : tensor<1x96x6x6xf32>, tensor<128x96x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %35 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%34 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x4x4xf32>
    %36 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x4x4xf32>
    %37 = tensor.empty() : tensor<1x16x4x4xf32>
    %38 = linalg.fill ins(%cst_92 : f32) outs(%37 : tensor<1x16x4x4xf32>) -> tensor<1x16x4x4xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%21, %cst_77 : tensor<1x192x4x4xf32>, tensor<16x192x1x1xf32>) outs(%38 : tensor<1x16x4x4xf32>) -> tensor<1x16x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_76, %cst_75, %cst_75, %cst_76 : tensor<1x16x4x4xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%39 : tensor<1x16x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x16x4x4xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x16x4x4xf32>) outs(%37 : tensor<1x16x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x16x4x4xf32>
    %padded_99 = tensor.pad %41 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x16x4x4xf32> to tensor<1x16x6x6xf32>
    %42 = tensor.empty() : tensor<1x32x4x4xf32>
    %43 = linalg.fill ins(%cst_92 : f32) outs(%42 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_99, %cst_74 : tensor<1x16x6x6xf32>, tensor<32x16x3x3xf32>) outs(%43 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %45 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %cst_73, %cst_72, %cst_72, %cst_73 : tensor<1x32x4x4xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%44 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x32x4x4xf32>
    %46 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45 : tensor<1x32x4x4xf32>) outs(%42 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x32x4x4xf32>
    %padded_100 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x7x7xf32>
    %47 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_100, %8 : tensor<1x192x7x7xf32>, tensor<3x3xf32>) outs(%20 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%47, %cst_71 : tensor<1x192x4x4xf32>, tensor<32x192x1x1xf32>) outs(%43 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_73, %cst_72, %cst_72, %cst_73 : tensor<1x32x4x4xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%48 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x32x4x4xf32>
    %50 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<1x32x4x4xf32>) outs(%42 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x32x4x4xf32>
    %51 = tensor.empty() : tensor<1x256x4x4xf32>
    %inserted_slice = tensor.insert_slice %26 into %51[0, 0, 0, 0] [1, 64, 4, 4] [1, 1, 1, 1] : tensor<1x64x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_101 = tensor.insert_slice %36 into %inserted_slice[0, 64, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_102 = tensor.insert_slice %46 into %inserted_slice_101[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_103 = tensor.insert_slice %50 into %inserted_slice_102[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_103, %cst_70 : tensor<1x256x4x4xf32>, tensor<128x256x1x1xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%52 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x4x4xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x4x4xf32>
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_103, %cst_69 : tensor<1x256x4x4xf32>, tensor<128x256x1x1xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %56 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%55 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x4x4xf32>
    %57 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_104 = tensor.pad %57 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %58 = linalg.fill ins(%cst_92 : f32) outs(%19 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %cst_68 : tensor<1x128x6x6xf32>, tensor<192x128x3x3xf32>) outs(%58 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_86, %cst_85, %cst_85, %cst_86 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%59 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x192x4x4xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x192x4x4xf32>) outs(%19 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x192x4x4xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_103, %cst_67 : tensor<1x256x4x4xf32>, tensor<32x256x1x1xf32>) outs(%43 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_73, %cst_72, %cst_72, %cst_73 : tensor<1x32x4x4xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%62 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x32x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x32x4x4xf32>) outs(%42 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x32x4x4xf32>
    %padded_105 = tensor.pad %64 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x32x4x4xf32> to tensor<1x32x6x6xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_105, %cst_66 : tensor<1x32x6x6xf32>, tensor<96x32x3x3xf32>) outs(%28 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%65 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x96x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x96x4x4xf32>) outs(%27 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_106 = tensor.pad %inserted_slice_103 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x7x7xf32>
    %68 = linalg.fill ins(%cst_93 : f32) outs(%51 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %69 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_106, %8 : tensor<1x256x7x7xf32>, tensor<3x3xf32>) outs(%68 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%69, %cst_65 : tensor<1x256x4x4xf32>, tensor<64x256x1x1xf32>) outs(%23 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %71 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%70 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x64x4x4xf32>) outs(%22 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x4x4xf32>
    %73 = tensor.empty() : tensor<1x480x4x4xf32>
    %inserted_slice_107 = tensor.insert_slice %54 into %73[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_108 = tensor.insert_slice %61 into %inserted_slice_107[0, 128, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_109 = tensor.insert_slice %67 into %inserted_slice_108[0, 320, 0, 0] [1, 96, 4, 4] [1, 1, 1, 1] : tensor<1x96x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_110 = tensor.insert_slice %72 into %inserted_slice_109[0, 416, 0, 0] [1, 64, 4, 4] [1, 1, 1, 1] : tensor<1x64x4x4xf32> into tensor<1x480x4x4xf32>
    %padded_111 = tensor.pad %inserted_slice_110 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x6x6xf32>
    %74 = tensor.empty() : tensor<1x480x2x2xf32>
    %75 = linalg.fill ins(%cst_93 : f32) outs(%74 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %76 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_111, %8 : tensor<1x480x6x6xf32>, tensor<3x3xf32>) outs(%75 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %77 = tensor.empty() : tensor<1x192x2x2xf32>
    %78 = linalg.fill ins(%cst_92 : f32) outs(%77 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_64 : tensor<1x480x2x2xf32>, tensor<192x480x1x1xf32>) outs(%78 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_86, %cst_85, %cst_85, %cst_86 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%79 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x192x2x2xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x192x2x2xf32>) outs(%77 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x192x2x2xf32>
    %82 = tensor.empty() : tensor<1x96x2x2xf32>
    %83 = linalg.fill ins(%cst_92 : f32) outs(%82 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_63 : tensor<1x480x2x2xf32>, tensor<96x480x1x1xf32>) outs(%83 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %85 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %cst_82, %cst_81, %cst_81, %cst_82 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%84 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x96x2x2xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<1x96x2x2xf32>) outs(%82 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x96x2x2xf32>
    %padded_112 = tensor.pad %86 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x96x2x2xf32> to tensor<1x96x4x4xf32>
    %87 = tensor.empty() : tensor<1x208x2x2xf32>
    %88 = linalg.fill ins(%cst_92 : f32) outs(%87 : tensor<1x208x2x2xf32>) -> tensor<1x208x2x2xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_112, %cst_62 : tensor<1x96x4x4xf32>, tensor<208x96x3x3xf32>) outs(%88 : tensor<1x208x2x2xf32>) -> tensor<1x208x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x208x2x2xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>) outs(%89 : tensor<1x208x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x208x2x2xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x208x2x2xf32>) outs(%87 : tensor<1x208x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x208x2x2xf32>
    %92 = tensor.empty() : tensor<1x16x2x2xf32>
    %93 = linalg.fill ins(%cst_92 : f32) outs(%92 : tensor<1x16x2x2xf32>) -> tensor<1x16x2x2xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_59 : tensor<1x480x2x2xf32>, tensor<16x480x1x1xf32>) outs(%93 : tensor<1x16x2x2xf32>) -> tensor<1x16x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %95 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_76, %cst_75, %cst_75, %cst_76 : tensor<1x16x2x2xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%94 : tensor<1x16x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x16x2x2xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x16x2x2xf32>) outs(%92 : tensor<1x16x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x16x2x2xf32>
    %padded_113 = tensor.pad %96 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x16x2x2xf32> to tensor<1x16x4x4xf32>
    %97 = tensor.empty() : tensor<1x48x2x2xf32>
    %98 = linalg.fill ins(%cst_92 : f32) outs(%97 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %99 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_113, %cst_58 : tensor<1x16x4x4xf32>, tensor<48x16x3x3xf32>) outs(%98 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x48x2x2xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%99 : tensor<1x48x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x48x2x2xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x48x2x2xf32>) outs(%97 : tensor<1x48x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x48x2x2xf32>
    %padded_114 = tensor.pad %76 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x5x5xf32>
    %102 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_114, %8 : tensor<1x480x5x5xf32>, tensor<3x3xf32>) outs(%75 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %103 = tensor.empty() : tensor<1x64x2x2xf32>
    %104 = linalg.fill ins(%cst_92 : f32) outs(%103 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_55 : tensor<1x480x2x2xf32>, tensor<64x480x1x1xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %106 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%105 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %107 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %108 = tensor.empty() : tensor<1x512x2x2xf32>
    %inserted_slice_115 = tensor.insert_slice %81 into %108[0, 0, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_116 = tensor.insert_slice %91 into %inserted_slice_115[0, 192, 0, 0] [1, 208, 2, 2] [1, 1, 1, 1] : tensor<1x208x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_117 = tensor.insert_slice %101 into %inserted_slice_116[0, 400, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_118 = tensor.insert_slice %107 into %inserted_slice_117[0, 448, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x512x2x2xf32>
    %109 = tensor.empty() : tensor<1x160x2x2xf32>
    %110 = linalg.fill ins(%cst_92 : f32) outs(%109 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_118, %cst_54 : tensor<1x512x2x2xf32>, tensor<160x512x1x1xf32>) outs(%110 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_53, %cst_52, %cst_52, %cst_53 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%111 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x160x2x2xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x160x2x2xf32>) outs(%109 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x160x2x2xf32>
    %114 = tensor.empty() : tensor<1x112x2x2xf32>
    %115 = linalg.fill ins(%cst_92 : f32) outs(%114 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_118, %cst_51 : tensor<1x512x2x2xf32>, tensor<112x512x1x1xf32>) outs(%115 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_50, %cst_49, %cst_49, %cst_50 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%116 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x112x2x2xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x112x2x2xf32>) outs(%114 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x112x2x2xf32>
    %padded_119 = tensor.pad %118 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x112x2x2xf32> to tensor<1x112x4x4xf32>
    %119 = tensor.empty() : tensor<1x224x2x2xf32>
    %120 = linalg.fill ins(%cst_92 : f32) outs(%119 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_119, %cst_48 : tensor<1x112x4x4xf32>, tensor<224x112x3x3xf32>) outs(%120 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%121 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x224x2x2xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x224x2x2xf32>) outs(%119 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x224x2x2xf32>
    %124 = tensor.empty() : tensor<1x24x2x2xf32>
    %125 = linalg.fill ins(%cst_92 : f32) outs(%124 : tensor<1x24x2x2xf32>) -> tensor<1x24x2x2xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_118, %cst_45 : tensor<1x512x2x2xf32>, tensor<24x512x1x1xf32>) outs(%125 : tensor<1x24x2x2xf32>) -> tensor<1x24x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x24x2x2xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%126 : tensor<1x24x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x24x2x2xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x24x2x2xf32>) outs(%124 : tensor<1x24x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x24x2x2xf32>
    %padded_120 = tensor.pad %128 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x24x2x2xf32> to tensor<1x24x4x4xf32>
    %129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_120, %cst_42 : tensor<1x24x4x4xf32>, tensor<64x24x3x3xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %130 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%129 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %padded_121 = tensor.pad %inserted_slice_118 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x5x5xf32>
    %132 = linalg.fill ins(%cst_93 : f32) outs(%108 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %133 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_121, %8 : tensor<1x512x5x5xf32>, tensor<3x3xf32>) outs(%132 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_41 : tensor<1x512x2x2xf32>, tensor<64x512x1x1xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%134 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %inserted_slice_122 = tensor.insert_slice %113 into %108[0, 0, 0, 0] [1, 160, 2, 2] [1, 1, 1, 1] : tensor<1x160x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_123 = tensor.insert_slice %123 into %inserted_slice_122[0, 160, 0, 0] [1, 224, 2, 2] [1, 1, 1, 1] : tensor<1x224x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_124 = tensor.insert_slice %131 into %inserted_slice_123[0, 384, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_125 = tensor.insert_slice %136 into %inserted_slice_124[0, 448, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x512x2x2xf32>
    %137 = tensor.empty() : tensor<1x128x2x2xf32>
    %138 = linalg.fill ins(%cst_92 : f32) outs(%137 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    %139 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_125, %cst_40 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%138 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %140 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%139 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x2x2xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x128x2x2xf32>) outs(%137 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x2x2xf32>
    %142 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_125, %cst_39 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%138 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %143 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%142 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x2x2xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x128x2x2xf32>) outs(%137 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_126 = tensor.pad %144 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %145 = tensor.empty() : tensor<1x256x2x2xf32>
    %146 = linalg.fill ins(%cst_92 : f32) outs(%145 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_126, %cst_38 : tensor<1x128x4x4xf32>, tensor<256x128x3x3xf32>) outs(%146 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_37, %cst_36, %cst_36, %cst_37 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%147 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x256x2x2xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x256x2x2xf32>) outs(%145 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x256x2x2xf32>
    %150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_125, %cst_35 : tensor<1x512x2x2xf32>, tensor<24x512x1x1xf32>) outs(%125 : tensor<1x24x2x2xf32>) -> tensor<1x24x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %151 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x24x2x2xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%150 : tensor<1x24x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x24x2x2xf32>
    %152 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151 : tensor<1x24x2x2xf32>) outs(%124 : tensor<1x24x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x24x2x2xf32>
    %padded_127 = tensor.pad %152 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x24x2x2xf32> to tensor<1x24x4x4xf32>
    %153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_127, %cst_34 : tensor<1x24x4x4xf32>, tensor<64x24x3x3xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%153 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %padded_128 = tensor.pad %inserted_slice_125 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x5x5xf32>
    %156 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_128, %8 : tensor<1x512x5x5xf32>, tensor<3x3xf32>) outs(%132 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_33 : tensor<1x512x2x2xf32>, tensor<64x512x1x1xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%157 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %inserted_slice_129 = tensor.insert_slice %141 into %108[0, 0, 0, 0] [1, 128, 2, 2] [1, 1, 1, 1] : tensor<1x128x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_130 = tensor.insert_slice %149 into %inserted_slice_129[0, 128, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_131 = tensor.insert_slice %155 into %inserted_slice_130[0, 384, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_132 = tensor.insert_slice %159 into %inserted_slice_131[0, 448, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x512x2x2xf32>
    %160 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_132, %cst_32 : tensor<1x512x2x2xf32>, tensor<112x512x1x1xf32>) outs(%115 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_50, %cst_49, %cst_49, %cst_50 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%160 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x112x2x2xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x112x2x2xf32>) outs(%114 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x112x2x2xf32>
    %163 = tensor.empty() : tensor<1x144x2x2xf32>
    %164 = linalg.fill ins(%cst_92 : f32) outs(%163 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_132, %cst_31 : tensor<1x512x2x2xf32>, tensor<144x512x1x1xf32>) outs(%164 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %166 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%165 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x144x2x2xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x144x2x2xf32>) outs(%163 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x144x2x2xf32>
    %padded_133 = tensor.pad %167 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x144x2x2xf32> to tensor<1x144x4x4xf32>
    %168 = tensor.empty() : tensor<1x288x2x2xf32>
    %169 = linalg.fill ins(%cst_92 : f32) outs(%168 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_133, %cst_28 : tensor<1x144x4x4xf32>, tensor<288x144x3x3xf32>) outs(%169 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%170 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x288x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x288x2x2xf32>) outs(%168 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x288x2x2xf32>
    %173 = tensor.empty() : tensor<1x32x2x2xf32>
    %174 = linalg.fill ins(%cst_92 : f32) outs(%173 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_132, %cst_25 : tensor<1x512x2x2xf32>, tensor<32x512x1x1xf32>) outs(%174 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_73, %cst_72, %cst_72, %cst_73 : tensor<1x32x2x2xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%175 : tensor<1x32x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x32x2x2xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x32x2x2xf32>) outs(%173 : tensor<1x32x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x32x2x2xf32>
    %padded_134 = tensor.pad %177 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x32x2x2xf32> to tensor<1x32x4x4xf32>
    %178 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_134, %cst_24 : tensor<1x32x4x4xf32>, tensor<64x32x3x3xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %179 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%178 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %padded_135 = tensor.pad %inserted_slice_132 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x5x5xf32>
    %181 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_135, %8 : tensor<1x512x5x5xf32>, tensor<3x3xf32>) outs(%132 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%181, %cst_23 : tensor<1x512x2x2xf32>, tensor<64x512x1x1xf32>) outs(%104 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %183 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %cst_90, %cst_89, %cst_89, %cst_90 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%182 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x64x2x2xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x64x2x2xf32>) outs(%103 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x64x2x2xf32>
    %185 = tensor.empty() : tensor<1x528x2x2xf32>
    %inserted_slice_136 = tensor.insert_slice %162 into %185[0, 0, 0, 0] [1, 112, 2, 2] [1, 1, 1, 1] : tensor<1x112x2x2xf32> into tensor<1x528x2x2xf32>
    %inserted_slice_137 = tensor.insert_slice %172 into %inserted_slice_136[0, 112, 0, 0] [1, 288, 2, 2] [1, 1, 1, 1] : tensor<1x288x2x2xf32> into tensor<1x528x2x2xf32>
    %inserted_slice_138 = tensor.insert_slice %180 into %inserted_slice_137[0, 400, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x528x2x2xf32>
    %inserted_slice_139 = tensor.insert_slice %184 into %inserted_slice_138[0, 464, 0, 0] [1, 64, 2, 2] [1, 1, 1, 1] : tensor<1x64x2x2xf32> into tensor<1x528x2x2xf32>
    %186 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_139, %cst_22 : tensor<1x528x2x2xf32>, tensor<256x528x1x1xf32>) outs(%146 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %187 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst_37, %cst_36, %cst_36, %cst_37 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%186 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x256x2x2xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x256x2x2xf32>) outs(%145 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x256x2x2xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_139, %cst_21 : tensor<1x528x2x2xf32>, tensor<160x528x1x1xf32>) outs(%110 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_53, %cst_52, %cst_52, %cst_53 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%189 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x160x2x2xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x160x2x2xf32>) outs(%109 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_140 = tensor.pad %191 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x160x2x2xf32> to tensor<1x160x4x4xf32>
    %192 = tensor.empty() : tensor<1x320x2x2xf32>
    %193 = linalg.fill ins(%cst_92 : f32) outs(%192 : tensor<1x320x2x2xf32>) -> tensor<1x320x2x2xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_140, %cst_20 : tensor<1x160x4x4xf32>, tensor<320x160x3x3xf32>) outs(%193 : tensor<1x320x2x2xf32>) -> tensor<1x320x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x320x2x2xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%194 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x320x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x320x2x2xf32>) outs(%192 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x320x2x2xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_139, %cst_17 : tensor<1x528x2x2xf32>, tensor<32x528x1x1xf32>) outs(%174 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_73, %cst_72, %cst_72, %cst_73 : tensor<1x32x2x2xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%197 : tensor<1x32x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x32x2x2xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198 : tensor<1x32x2x2xf32>) outs(%173 : tensor<1x32x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x32x2x2xf32>
    %padded_141 = tensor.pad %199 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x32x2x2xf32> to tensor<1x32x4x4xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_141, %cst_16 : tensor<1x32x4x4xf32>, tensor<128x32x3x3xf32>) outs(%138 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %201 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%200 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x2x2xf32>
    %202 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x128x2x2xf32>) outs(%137 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_142 = tensor.pad %inserted_slice_139 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x528x2x2xf32> to tensor<1x528x5x5xf32>
    %203 = linalg.fill ins(%cst_93 : f32) outs(%185 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    %204 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_142, %8 : tensor<1x528x5x5xf32>, tensor<3x3xf32>) outs(%203 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    %205 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%204, %cst_15 : tensor<1x528x2x2xf32>, tensor<128x528x1x1xf32>) outs(%138 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %206 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%205 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x128x2x2xf32>) outs(%137 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x2x2xf32>
    %208 = tensor.empty() : tensor<1x832x2x2xf32>
    %inserted_slice_143 = tensor.insert_slice %188 into %208[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_144 = tensor.insert_slice %196 into %inserted_slice_143[0, 256, 0, 0] [1, 320, 2, 2] [1, 1, 1, 1] : tensor<1x320x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_145 = tensor.insert_slice %202 into %inserted_slice_144[0, 576, 0, 0] [1, 128, 2, 2] [1, 1, 1, 1] : tensor<1x128x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_146 = tensor.insert_slice %207 into %inserted_slice_145[0, 704, 0, 0] [1, 128, 2, 2] [1, 1, 1, 1] : tensor<1x128x2x2xf32> into tensor<1x832x2x2xf32>
    %padded_147 = tensor.pad %inserted_slice_146 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x832x2x2xf32> to tensor<1x832x4x4xf32>
    %209 = tensor.empty() : tensor<1x832x1x1xf32>
    %210 = linalg.fill ins(%cst_93 : f32) outs(%209 : tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %211 = tensor.empty() : tensor<2x2xf32>
    %212 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_147, %211 : tensor<1x832x4x4xf32>, tensor<2x2xf32>) outs(%210 : tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %213 = tensor.empty() : tensor<1x256x1x1xf32>
    %214 = linalg.fill ins(%cst_92 : f32) outs(%213 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_14 : tensor<1x832x1x1xf32>, tensor<256x832x1x1xf32>) outs(%214 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_37, %cst_36, %cst_36, %cst_37 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%215 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x256x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x256x1x1xf32>) outs(%213 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x256x1x1xf32>
    %218 = tensor.empty() : tensor<1x160x1x1xf32>
    %219 = linalg.fill ins(%cst_92 : f32) outs(%218 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %220 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_13 : tensor<1x832x1x1xf32>, tensor<160x832x1x1xf32>) outs(%219 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %221 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %cst_53, %cst_52, %cst_52, %cst_53 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%220 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x160x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x160x1x1xf32>) outs(%218 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x160x1x1xf32>
    %padded_148 = tensor.pad %222 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x160x1x1xf32> to tensor<1x160x3x3xf32>
    %223 = tensor.empty() : tensor<1x320x1x1xf32>
    %224 = linalg.fill ins(%cst_92 : f32) outs(%223 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_148, %cst_12 : tensor<1x160x3x3xf32>, tensor<320x160x3x3xf32>) outs(%224 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %226 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x320x1x1xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%225 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x320x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x320x1x1xf32>) outs(%223 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x320x1x1xf32>
    %228 = tensor.empty() : tensor<1x32x1x1xf32>
    %229 = linalg.fill ins(%cst_92 : f32) outs(%228 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %230 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_11 : tensor<1x832x1x1xf32>, tensor<32x832x1x1xf32>) outs(%229 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %231 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %cst_73, %cst_72, %cst_72, %cst_73 : tensor<1x32x1x1xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%230 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x32x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x32x1x1xf32>) outs(%228 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x32x1x1xf32>
    %padded_149 = tensor.pad %232 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x32x1x1xf32> to tensor<1x32x3x3xf32>
    %233 = tensor.empty() : tensor<1x128x1x1xf32>
    %234 = linalg.fill ins(%cst_92 : f32) outs(%233 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %235 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_149, %cst_10 : tensor<1x32x3x3xf32>, tensor<128x32x3x3xf32>) outs(%234 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %236 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%235 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x128x1x1xf32>) outs(%233 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_150 = tensor.pad %212 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x832x1x1xf32> to tensor<1x832x4x4xf32>
    %238 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_150, %8 : tensor<1x832x4x4xf32>, tensor<3x3xf32>) outs(%210 : tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %239 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%238, %cst_9 : tensor<1x832x1x1xf32>, tensor<128x832x1x1xf32>) outs(%234 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %240 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%239 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x128x1x1xf32>) outs(%233 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x1x1xf32>
    %inserted_slice_151 = tensor.insert_slice %217 into %209[0, 0, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_152 = tensor.insert_slice %227 into %inserted_slice_151[0, 256, 0, 0] [1, 320, 1, 1] [1, 1, 1, 1] : tensor<1x320x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_153 = tensor.insert_slice %237 into %inserted_slice_152[0, 576, 0, 0] [1, 128, 1, 1] [1, 1, 1, 1] : tensor<1x128x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_154 = tensor.insert_slice %241 into %inserted_slice_153[0, 704, 0, 0] [1, 128, 1, 1] [1, 1, 1, 1] : tensor<1x128x1x1xf32> into tensor<1x832x1x1xf32>
    %242 = tensor.empty() : tensor<1x384x1x1xf32>
    %243 = linalg.fill ins(%cst_92 : f32) outs(%242 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_154, %cst_8 : tensor<1x832x1x1xf32>, tensor<384x832x1x1xf32>) outs(%243 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_7, %cst_6, %cst_6, %cst_7 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%244 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x384x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x384x1x1xf32>) outs(%242 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x384x1x1xf32>
    %247 = tensor.empty() : tensor<1x192x1x1xf32>
    %248 = linalg.fill ins(%cst_92 : f32) outs(%247 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_154, %cst_5 : tensor<1x832x1x1xf32>, tensor<192x832x1x1xf32>) outs(%248 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %cst_86, %cst_85, %cst_85, %cst_86 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%249 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x192x1x1xf32>
    %251 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x192x1x1xf32>) outs(%247 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_155 = tensor.pad %251 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %252 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_155, %cst_4 : tensor<1x192x3x3xf32>, tensor<384x192x3x3xf32>) outs(%243 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %253 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_7, %cst_6, %cst_6, %cst_7 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%252 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x384x1x1xf32>
    %254 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x384x1x1xf32>) outs(%242 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x384x1x1xf32>
    %255 = tensor.empty() : tensor<1x48x1x1xf32>
    %256 = linalg.fill ins(%cst_92 : f32) outs(%255 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_154, %cst_3 : tensor<1x832x1x1xf32>, tensor<48x832x1x1xf32>) outs(%256 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x48x1x1xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%257 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x48x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x48x1x1xf32>) outs(%255 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x48x1x1xf32>
    %padded_156 = tensor.pad %259 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_92 : f32
    } : tensor<1x48x1x1xf32> to tensor<1x48x3x3xf32>
    %260 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_156, %cst_2 : tensor<1x48x3x3xf32>, tensor<128x48x3x3xf32>) outs(%234 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %261 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%260 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x128x1x1xf32>) outs(%233 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_157 = tensor.pad %inserted_slice_154 low[0, 0, 1, 1] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_93 : f32
    } : tensor<1x832x1x1xf32> to tensor<1x832x4x4xf32>
    %263 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_157, %8 : tensor<1x832x4x4xf32>, tensor<3x3xf32>) outs(%210 : tensor<1x832x1x1xf32>) -> tensor<1x832x1x1xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_1 : tensor<1x832x1x1xf32>, tensor<128x832x1x1xf32>) outs(%234 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%264 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_162: f32, %in_163: f32, %in_164: f32, %in_165: f32, %out: f32):
      %277 = arith.truncf %cst_94 : f64 to f32
      %278 = arith.addf %in_165, %277 : f32
      %279 = math.rsqrt %278 : f32
      %280 = arith.subf %in, %in_164 : f32
      %281 = arith.mulf %280, %279 : f32
      %282 = arith.mulf %281, %in_162 : f32
      %283 = arith.addf %282, %in_163 : f32
      linalg.yield %283 : f32
    } -> tensor<1x128x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x128x1x1xf32>) outs(%233 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %277 = arith.cmpf ugt, %in, %cst_92 : f32
      %278 = arith.select %277, %in, %cst_92 : f32
      linalg.yield %278 : f32
    } -> tensor<1x128x1x1xf32>
    %267 = tensor.empty() : tensor<1x1024x1x1xf32>
    %inserted_slice_158 = tensor.insert_slice %246 into %267[0, 0, 0, 0] [1, 384, 1, 1] [1, 1, 1, 1] : tensor<1x384x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_159 = tensor.insert_slice %254 into %inserted_slice_158[0, 384, 0, 0] [1, 384, 1, 1] [1, 1, 1, 1] : tensor<1x384x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_160 = tensor.insert_slice %262 into %inserted_slice_159[0, 768, 0, 0] [1, 128, 1, 1] [1, 1, 1, 1] : tensor<1x128x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_161 = tensor.insert_slice %266 into %inserted_slice_160[0, 896, 0, 0] [1, 128, 1, 1] [1, 1, 1, 1] : tensor<1x128x1x1xf32> into tensor<1x1024x1x1xf32>
    %268 = linalg.fill ins(%cst_92 : f32) outs(%267 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %269 = tensor.empty() : tensor<1x1xf32>
    %270 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_161, %269 : tensor<1x1024x1x1xf32>, tensor<1x1xf32>) outs(%268 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %collapsed = tensor.collapse_shape %270 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %271 = tensor.empty() : tensor<1024x1000xf32>
    %272 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1024xf32>) outs(%271 : tensor<1024x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1000xf32>
    %273 = tensor.empty() : tensor<1x1000xf32>
    %274 = linalg.fill ins(%cst_92 : f32) outs(%273 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %275 = linalg.matmul ins(%collapsed, %272 : tensor<1x1024xf32>, tensor<1024x1000xf32>) outs(%274 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %276 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%275, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%273 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_162: f32, %out: f32):
      %277 = arith.addf %in, %in_162 : f32
      linalg.yield %277 : f32
    } -> tensor<1x1000xf32>
    return %276 : tensor<1x1000xf32>
  }
}
