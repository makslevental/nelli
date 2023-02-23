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
    %cst_0 = arith.constant dense<-0.001847e+00> : tensor<1000x1280xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<0.002196e+00> : tensor<1280x960xf32>
    %cst_3 = arith.constant dense<0.010774e+00> : tensor<960x160x1x1xf32>
    %cst_4 = arith.constant dense<-0.000182e+00> : tensor<160x960x1x1xf32>
    %cst_5 = arith.constant dense<0.004698e+00> : tensor<960x240x1x1xf32>
    %cst_6 = arith.constant dense<0.000151e+00> : tensor<240x960x1x1xf32>
    %cst_7 = arith.constant dense<0.008164e+00> : tensor<960x1x5x5xf32>
    %cst_8 = arith.constant dense<0.004766e+00> : tensor<960x160x1x1xf32>
    %cst_9 = arith.constant dense<0.011755e+00> : tensor<160x960x1x1xf32>
    %cst_10 = arith.constant dense<-0.000305e+00> : tensor<960x240x1x1xf32>
    %cst_11 = arith.constant dense<0.005704e+00> : tensor<240x960x1x1xf32>
    %cst_12 = arith.constant dense<-0.004496e+00> : tensor<960x1x5x5xf32>
    %cst_13 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_15 = arith.constant dense<0.002371e+00> : tensor<960x160x1x1xf32>
    %cst_16 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_18 = arith.constant dense<0.018695e+00> : tensor<160x672x1x1xf32>
    %cst_19 = arith.constant dense<0.004064e+00> : tensor<672x168x1x1xf32>
    %cst_20 = arith.constant dense<-0.006633e+00> : tensor<168x672x1x1xf32>
    %cst_21 = arith.constant dense<-0.003807e+00> : tensor<672x1x5x5xf32>
    %cst_22 = arith.constant dense<-0.002036e+00> : tensor<672x112x1x1xf32>
    %cst_23 = arith.constant dense<-0.012075e+00> : tensor<112x672x1x1xf32>
    %cst_24 = arith.constant dense<-0.012355e+00> : tensor<672x168x1x1xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<168xf32>
    %cst_26 = arith.constant dense<0.001504e+00> : tensor<168x672x1x1xf32>
    %cst_27 = arith.constant dense<-0.001365e+00> : tensor<672x1x3x3xf32>
    %cst_28 = arith.constant dense<1.000000e+00> : tensor<672xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_30 = arith.constant dense<-0.016195e+00> : tensor<672x112x1x1xf32>
    %cst_31 = arith.constant dense<1.000000e+00> : tensor<112xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<112xf32>
    %cst_33 = arith.constant dense<-0.010927e+00> : tensor<112x480x1x1xf32>
    %cst_34 = arith.constant dense<-0.000765e+00> : tensor<480x120x1x1xf32>
    %cst_35 = arith.constant dense<0.017126e+00> : tensor<120x480x1x1xf32>
    %cst_36 = arith.constant dense<-0.012145e+00> : tensor<480x1x3x3xf32>
    %cst_37 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_39 = arith.constant dense<0.015058e+00> : tensor<480x80x1x1xf32>
    %cst_40 = arith.constant dense<0.003998e+00> : tensor<80x184x1x1xf32>
    %cst_41 = arith.constant dense<0.001777e+00> : tensor<184x1x3x3xf32>
    %cst_42 = arith.constant dense<-0.003563e+00> : tensor<184x80x1x1xf32>
    %cst_43 = arith.constant dense<0.005091e+00> : tensor<80x184x1x1xf32>
    %cst_44 = arith.constant dense<0.001693e+00> : tensor<184x1x3x3xf32>
    %cst_45 = arith.constant dense<1.000000e+00> : tensor<184xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<184xf32>
    %cst_47 = arith.constant dense<-0.006846e+00> : tensor<184x80x1x1xf32>
    %cst_48 = arith.constant dense<0.004890e+00> : tensor<80x200x1x1xf32>
    %cst_49 = arith.constant dense<-0.011519e+00> : tensor<200x1x3x3xf32>
    %cst_50 = arith.constant dense<1.000000e+00> : tensor<200xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<200xf32>
    %cst_52 = arith.constant dense<-0.002579e+00> : tensor<200x80x1x1xf32>
    %cst_53 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_55 = arith.constant dense<-0.002764e+00> : tensor<80x240x1x1xf32>
    %cst_56 = arith.constant dense<-0.015493e+00> : tensor<240x1x3x3xf32>
    %cst_57 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_59 = arith.constant dense<0.001154e+00> : tensor<240x40x1x1xf32>
    %cst_60 = arith.constant dense<0.010063e+00> : tensor<40x120x1x1xf32>
    %cst_61 = arith.constant dense<-0.001371e+00> : tensor<120x32x1x1xf32>
    %cst_62 = arith.constant dense<-0.012303e+00> : tensor<32x120x1x1xf32>
    %cst_63 = arith.constant dense<-0.000897e+00> : tensor<120x1x5x5xf32>
    %cst_64 = arith.constant dense<0.003563e+00> : tensor<120x40x1x1xf32>
    %cst_65 = arith.constant dense<-0.004837e+00> : tensor<40x120x1x1xf32>
    %cst_66 = arith.constant dense<-0.009676e+00> : tensor<120x32x1x1xf32>
    %cst_67 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_68 = arith.constant dense<0.006598e+00> : tensor<32x120x1x1xf32>
    %cst_69 = arith.constant dense<-0.016772e+00> : tensor<120x1x5x5xf32>
    %cst_70 = arith.constant dense<1.000000e+00> : tensor<120xf32>
    %cst_71 = arith.constant dense<0.000000e+00> : tensor<120xf32>
    %cst_72 = arith.constant dense<0.016786e+00> : tensor<120x40x1x1xf32>
    %cst_73 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_74 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_75 = arith.constant dense<0.004706e+00> : tensor<40x72x1x1xf32>
    %cst_76 = arith.constant dense<-0.001078e+00> : tensor<72x24x1x1xf32>
    %cst_77 = arith.constant dense<-0.003771e+00> : tensor<24x72x1x1xf32>
    %cst_78 = arith.constant dense<0.019585e+00> : tensor<72x1x5x5xf32>
    %cst_79 = arith.constant dense<-0.013139e+00> : tensor<72x24x1x1xf32>
    %cst_80 = arith.constant dense<-0.003956e+00> : tensor<24x72x1x1xf32>
    %cst_81 = arith.constant dense<-0.002539e+00> : tensor<72x1x3x3xf32>
    %cst_82 = arith.constant dense<1.000000e+00> : tensor<72xf32>
    %cst_83 = arith.constant dense<0.000000e+00> : tensor<72xf32>
    %cst_84 = arith.constant dense<-0.002975e+00> : tensor<72x24x1x1xf32>
    %cst_85 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_87 = arith.constant dense<0.009618e+00> : tensor<24x64x1x1xf32>
    %cst_88 = arith.constant dense<-0.003537e+00> : tensor<64x1x3x3xf32>
    %cst_89 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_90 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_91 = arith.constant dense<-0.002420e+00> : tensor<64x16x1x1xf32>
    %cst_92 = arith.constant dense<0.003777e+00> : tensor<16x16x1x1xf32>
    %cst_93 = arith.constant dense<0.010135e+00> : tensor<16x1x3x3xf32>
    %cst_94 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_95 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_96 = arith.constant dense<0.010704e+00> : tensor<16x3x3x3xf32>
    %cst_97 = arith.constant 0.000000e+00 : f32
    %cst_98 = arith.constant 1.000000e-03 : f64
    %cst_99 = arith.constant 3.000000e+00 : f32
    %cst_100 = arith.constant 6.000000e+00 : f32
    %cst_101 = arith.constant 1.600000e+01 : f32
    %cst_102 = arith.constant 4.000000e+00 : f32
    %c6_i64 = arith.constant 6 : i64
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x16x16x16xf32>
    %1 = linalg.fill ins(%cst_97 : f32) outs(%0 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_96 : tensor<1x3x34x34xf32>, tensor<16x3x3x3xf32>) outs(%1 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_94, %cst_95, %cst_95, %cst_94 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%2 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x16x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x16x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x16x16x16xf32>
    %7 = tensor.empty() : tensor<i64>
    %8 = linalg.fill ins(%c6_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %9 = tensor.empty() : tensor<f32>
    %10 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%8 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %377 = arith.sitofp %in : i64 to f32
      linalg.yield %377 : f32
    } -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %10 : tensor<1x16x16x16xf32>, tensor<f32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x16x16x16xf32>
    %12 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x16x16x16xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %4 : tensor<1x16x16x16xf32>, tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x16x16x16xf32>
    %padded_103 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x16x16x16xf32> to tensor<1x16x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_93 [[0, 1], [2], [3]] : tensor<16x1x3x3xf32> into tensor<16x3x3xf32>
    %14 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_103, %collapsed : tensor<1x16x18x18xf32>, tensor<16x3x3xf32>) outs(%1 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_94, %cst_95, %cst_95, %cst_94 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%14 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x16x16x16xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x16x16x16xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_92 : tensor<1x16x16x16xf32>, tensor<16x16x1x1xf32>) outs(%1 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %18 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_94, %cst_95, %cst_95, %cst_94 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%17 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x16x16x16xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %13 : tensor<1x16x16x16xf32>, tensor<1x16x16x16xf32>) outs(%0 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x16x16x16xf32>
    %20 = tensor.empty() : tensor<1x64x16x16xf32>
    %21 = linalg.fill ins(%cst_97 : f32) outs(%20 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%19, %cst_91 : tensor<1x16x16x16xf32>, tensor<64x16x1x1xf32>) outs(%21 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_89, %cst_90, %cst_90, %cst_89 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%22 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x16x16xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x16x16xf32>) outs(%20 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_104 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %25 = tensor.empty() : tensor<1x64x8x8xf32>
    %26 = linalg.fill ins(%cst_97 : f32) outs(%25 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %collapsed_105 = tensor.collapse_shape %cst_88 [[0, 1], [2], [3]] : tensor<64x1x3x3xf32> into tensor<64x3x3xf32>
    %27 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_104, %collapsed_105 : tensor<1x64x18x18xf32>, tensor<64x3x3xf32>) outs(%26 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_89, %cst_90, %cst_90, %cst_89 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%27 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x64x8x8xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x64x8x8xf32>) outs(%25 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x64x8x8xf32>
    %30 = tensor.empty() : tensor<1x24x8x8xf32>
    %31 = linalg.fill ins(%cst_97 : f32) outs(%30 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%29, %cst_87 : tensor<1x64x8x8xf32>, tensor<24x64x1x1xf32>) outs(%31 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_85, %cst_86, %cst_86, %cst_85 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%32 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x24x8x8xf32>
    %34 = tensor.empty() : tensor<1x72x8x8xf32>
    %35 = linalg.fill ins(%cst_97 : f32) outs(%34 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%33, %cst_84 : tensor<1x24x8x8xf32>, tensor<72x24x1x1xf32>) outs(%35 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_82, %cst_83, %cst_83, %cst_82 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%36 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x72x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x72x8x8xf32>) outs(%34 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x72x8x8xf32>
    %padded_106 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x72x8x8xf32> to tensor<1x72x10x10xf32>
    %collapsed_107 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<72x1x3x3xf32> into tensor<72x3x3xf32>
    %39 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_106, %collapsed_107 : tensor<1x72x10x10xf32>, tensor<72x3x3xf32>) outs(%35 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_82, %cst_83, %cst_83, %cst_82 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%39 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x72x8x8xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x72x8x8xf32>) outs(%34 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x72x8x8xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_80 : tensor<1x72x8x8xf32>, tensor<24x72x1x1xf32>) outs(%31 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_85, %cst_86, %cst_86, %cst_85 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%42 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x24x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %33 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%30 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x24x8x8xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_79 : tensor<1x24x8x8xf32>, tensor<72x24x1x1xf32>) outs(%35 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_82, %cst_83, %cst_83, %cst_82 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%45 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x72x8x8xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x72x8x8xf32>) outs(%34 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x72x8x8xf32>
    %padded_108 = tensor.pad %47 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x72x8x8xf32> to tensor<1x72x12x12xf32>
    %48 = tensor.empty() : tensor<1x72x4x4xf32>
    %49 = linalg.fill ins(%cst_97 : f32) outs(%48 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    %collapsed_109 = tensor.collapse_shape %cst_78 [[0, 1], [2], [3]] : tensor<72x1x5x5xf32> into tensor<72x5x5xf32>
    %50 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_108, %collapsed_109 : tensor<1x72x12x12xf32>, tensor<72x5x5xf32>) outs(%49 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_82, %cst_83, %cst_83, %cst_82 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%50 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x72x4x4xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x72x4x4xf32>) outs(%48 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x72x4x4xf32>
    %53 = tensor.empty() : tensor<1x72x1x1xf32>
    %54 = linalg.fill ins(%cst_97 : f32) outs(%53 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %55 = tensor.empty() : tensor<4x4xf32>
    %56 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %55 : tensor<1x72x4x4xf32>, tensor<4x4xf32>) outs(%54 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_101 : f32
      linalg.yield %377 : f32
    } -> tensor<1x72x1x1xf32>
    %58 = tensor.empty() : tensor<1x24x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_86 : tensor<24xf32>) outs(%58 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%57, %cst_77 : tensor<1x72x1x1xf32>, tensor<24x72x1x1xf32>) outs(%59 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %61 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x24x1x1xf32>) outs(%58 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x24x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_83 : tensor<72xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x72x1x1xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%61, %cst_76 : tensor<1x24x1x1xf32>, tensor<72x24x1x1xf32>) outs(%62 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x72x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x72x1x1xf32>
    %66 = linalg.fill ins(%c1_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %67 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%66 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %377 = arith.sitofp %in : i64 to f32
      linalg.yield %377 : f32
    } -> tensor<f32>
    %68 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %65 : tensor<f32>, tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x72x1x1xf32>
    %69 = linalg.fill ins(%c0_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %70 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%69 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %377 = arith.sitofp %in : i64 to f32
      linalg.yield %377 : f32
    } -> tensor<f32>
    %71 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %68 : tensor<f32>, tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x72x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %52 : tensor<1x72x1x1xf32>, tensor<1x72x4x4xf32>) outs(%48 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x72x4x4xf32>
    %73 = tensor.empty() : tensor<1x40x4x4xf32>
    %74 = linalg.fill ins(%cst_97 : f32) outs(%73 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_75 : tensor<1x72x4x4xf32>, tensor<40x72x1x1xf32>) outs(%74 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_73, %cst_74, %cst_74, %cst_73 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%75 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x40x4x4xf32>
    %77 = tensor.empty() : tensor<1x120x4x4xf32>
    %78 = linalg.fill ins(%cst_97 : f32) outs(%77 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_72 : tensor<1x40x4x4xf32>, tensor<120x40x1x1xf32>) outs(%78 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_70, %cst_71, %cst_71, %cst_70 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%79 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x120x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x120x4x4xf32>) outs(%77 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x4x4xf32>
    %padded_110 = tensor.pad %81 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x120x4x4xf32> to tensor<1x120x8x8xf32>
    %collapsed_111 = tensor.collapse_shape %cst_69 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %82 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_110, %collapsed_111 : tensor<1x120x8x8xf32>, tensor<120x5x5xf32>) outs(%78 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_70, %cst_71, %cst_71, %cst_70 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%82 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x120x4x4xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x120x4x4xf32>) outs(%77 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x4x4xf32>
    %85 = tensor.empty() : tensor<1x120x1x1xf32>
    %86 = linalg.fill ins(%cst_97 : f32) outs(%85 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %87 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%84, %55 : tensor<1x120x4x4xf32>, tensor<4x4xf32>) outs(%86 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_101 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x1x1xf32>
    %89 = tensor.empty() : tensor<1x32x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_67 : tensor<32xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_68 : tensor<1x120x1x1xf32>, tensor<32x120x1x1xf32>) outs(%90 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x32x1x1xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_71 : tensor<120xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x120x1x1xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_66 : tensor<1x32x1x1xf32>, tensor<120x32x1x1xf32>) outs(%93 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %96 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %97 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %84 : tensor<1x120x1x1xf32>, tensor<1x120x4x4xf32>) outs(%77 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x4x4xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_65 : tensor<1x120x4x4xf32>, tensor<40x120x1x1xf32>) outs(%74 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_73, %cst_74, %cst_74, %cst_73 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%100 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x40x4x4xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %76 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%73 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x40x4x4xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_64 : tensor<1x40x4x4xf32>, tensor<120x40x1x1xf32>) outs(%78 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_70, %cst_71, %cst_71, %cst_70 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%103 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x120x4x4xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x120x4x4xf32>) outs(%77 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x4x4xf32>
    %padded_112 = tensor.pad %105 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x120x4x4xf32> to tensor<1x120x8x8xf32>
    %collapsed_113 = tensor.collapse_shape %cst_63 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %106 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_112, %collapsed_113 : tensor<1x120x8x8xf32>, tensor<120x5x5xf32>) outs(%78 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_70, %cst_71, %cst_71, %cst_70 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%106 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x120x4x4xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x120x4x4xf32>) outs(%77 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x4x4xf32>
    %109 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %55 : tensor<1x120x4x4xf32>, tensor<4x4xf32>) outs(%86 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_101 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x1x1xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_62 : tensor<1x120x1x1xf32>, tensor<32x120x1x1xf32>) outs(%90 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %112 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x32x1x1xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x32x1x1xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_61 : tensor<1x32x1x1xf32>, tensor<120x32x1x1xf32>) outs(%93 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x1x1xf32>
    %115 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x1x1xf32>
    %116 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %115 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %116 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %108 : tensor<1x120x1x1xf32>, tensor<1x120x4x4xf32>) outs(%77 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x120x4x4xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_60 : tensor<1x120x4x4xf32>, tensor<40x120x1x1xf32>) outs(%74 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_73, %cst_74, %cst_74, %cst_73 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%119 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x40x4x4xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %102 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%73 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x40x4x4xf32>
    %122 = tensor.empty() : tensor<1x240x4x4xf32>
    %123 = linalg.fill ins(%cst_97 : f32) outs(%122 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_59 : tensor<1x40x4x4xf32>, tensor<240x40x1x1xf32>) outs(%123 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_57, %cst_58, %cst_58, %cst_57 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%124 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x240x4x4xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x240x4x4xf32>) outs(%122 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x240x4x4xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x240x4x4xf32>) outs(%122 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x4x4xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %10 : tensor<1x240x4x4xf32>, tensor<f32>) outs(%122 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x4x4xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x240x4x4xf32>) outs(%122 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x240x4x4xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %125 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%122 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x240x4x4xf32>
    %padded_114 = tensor.pad %130 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x240x4x4xf32> to tensor<1x240x6x6xf32>
    %131 = tensor.empty() : tensor<1x240x2x2xf32>
    %132 = linalg.fill ins(%cst_97 : f32) outs(%131 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    %collapsed_115 = tensor.collapse_shape %cst_56 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %133 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_114, %collapsed_115 : tensor<1x240x6x6xf32>, tensor<240x3x3xf32>) outs(%132 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %134 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %cst_57, %cst_58, %cst_58, %cst_57 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%133 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x240x2x2xf32>
    %135 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x240x2x2xf32>) outs(%131 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x240x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x240x2x2xf32>) outs(%131 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x2x2xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %10 : tensor<1x240x2x2xf32>, tensor<f32>) outs(%131 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x2x2xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x240x2x2xf32>) outs(%131 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x240x2x2xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %134 : tensor<1x240x2x2xf32>, tensor<1x240x2x2xf32>) outs(%131 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x240x2x2xf32>
    %140 = tensor.empty() : tensor<1x80x2x2xf32>
    %141 = linalg.fill ins(%cst_97 : f32) outs(%140 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    %142 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%139, %cst_55 : tensor<1x240x2x2xf32>, tensor<80x240x1x1xf32>) outs(%141 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %143 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%142 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x80x2x2xf32>
    %144 = tensor.empty() : tensor<1x200x2x2xf32>
    %145 = linalg.fill ins(%cst_97 : f32) outs(%144 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    %146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_52 : tensor<1x80x2x2xf32>, tensor<200x80x1x1xf32>) outs(%145 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %147 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %cst_50, %cst_51, %cst_51, %cst_50 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%146 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x200x2x2xf32>
    %148 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x200x2x2xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x200x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %10 : tensor<1x200x2x2xf32>, tensor<f32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x200x2x2xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x200x2x2xf32>
    %152 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %147 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x200x2x2xf32>
    %padded_116 = tensor.pad %152 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x200x2x2xf32> to tensor<1x200x4x4xf32>
    %collapsed_117 = tensor.collapse_shape %cst_49 [[0, 1], [2], [3]] : tensor<200x1x3x3xf32> into tensor<200x3x3xf32>
    %153 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_116, %collapsed_117 : tensor<1x200x4x4xf32>, tensor<200x3x3xf32>) outs(%145 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_50, %cst_51, %cst_51, %cst_50 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%153 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x200x2x2xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x200x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x200x2x2xf32>
    %157 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %10 : tensor<1x200x2x2xf32>, tensor<f32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x200x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x200x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %154 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%144 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x200x2x2xf32>
    %160 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%159, %cst_48 : tensor<1x200x2x2xf32>, tensor<80x200x1x1xf32>) outs(%141 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%160 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x80x2x2xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %143 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%140 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x80x2x2xf32>
    %163 = tensor.empty() : tensor<1x184x2x2xf32>
    %164 = linalg.fill ins(%cst_97 : f32) outs(%163 : tensor<1x184x2x2xf32>) -> tensor<1x184x2x2xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%162, %cst_47 : tensor<1x80x2x2xf32>, tensor<184x80x1x1xf32>) outs(%164 : tensor<1x184x2x2xf32>) -> tensor<1x184x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %166 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %cst_45, %cst_46, %cst_46, %cst_45 : tensor<1x184x2x2xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%165 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x184x2x2xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %10 : tensor<1x184x2x2xf32>, tensor<f32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %166 : tensor<1x184x2x2xf32>, tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %padded_118 = tensor.pad %171 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x184x2x2xf32> to tensor<1x184x4x4xf32>
    %collapsed_119 = tensor.collapse_shape %cst_44 [[0, 1], [2], [3]] : tensor<184x1x3x3xf32> into tensor<184x3x3xf32>
    %172 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_118, %collapsed_119 : tensor<1x184x4x4xf32>, tensor<184x3x3xf32>) outs(%164 : tensor<1x184x2x2xf32>) -> tensor<1x184x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_45, %cst_46, %cst_46, %cst_45 : tensor<1x184x2x2xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%172 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x184x2x2xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %175 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %10 : tensor<1x184x2x2xf32>, tensor<f32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %173 : tensor<1x184x2x2xf32>, tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %cst_43 : tensor<1x184x2x2xf32>, tensor<80x184x1x1xf32>) outs(%141 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%179 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x80x2x2xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %162 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%140 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x80x2x2xf32>
    %182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%181, %cst_42 : tensor<1x80x2x2xf32>, tensor<184x80x1x1xf32>) outs(%164 : tensor<1x184x2x2xf32>) -> tensor<1x184x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %183 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %cst_45, %cst_46, %cst_46, %cst_45 : tensor<1x184x2x2xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%182 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x184x2x2xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %185 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %10 : tensor<1x184x2x2xf32>, tensor<f32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %183 : tensor<1x184x2x2xf32>, tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %padded_120 = tensor.pad %188 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x184x2x2xf32> to tensor<1x184x4x4xf32>
    %collapsed_121 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<184x1x3x3xf32> into tensor<184x3x3xf32>
    %189 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_120, %collapsed_121 : tensor<1x184x4x4xf32>, tensor<184x3x3xf32>) outs(%164 : tensor<1x184x2x2xf32>) -> tensor<1x184x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_45, %cst_46, %cst_46, %cst_45 : tensor<1x184x2x2xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%189 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x184x2x2xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %10 : tensor<1x184x2x2xf32>, tensor<f32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x184x2x2xf32>
    %194 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %190 : tensor<1x184x2x2xf32>, tensor<1x184x2x2xf32>) outs(%163 : tensor<1x184x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x184x2x2xf32>
    %196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%195, %cst_40 : tensor<1x184x2x2xf32>, tensor<80x184x1x1xf32>) outs(%141 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %197 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_53, %cst_54, %cst_54, %cst_53 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%196 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x80x2x2xf32>
    %198 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %181 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%140 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x80x2x2xf32>
    %199 = tensor.empty() : tensor<1x480x2x2xf32>
    %200 = linalg.fill ins(%cst_97 : f32) outs(%199 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%198, %cst_39 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%200 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_37, %cst_38, %cst_38, %cst_37 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%201 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x480x2x2xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %10 : tensor<1x480x2x2xf32>, tensor<f32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %202 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_122 = tensor.pad %207 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x4x4xf32>
    %collapsed_123 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %208 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_122, %collapsed_123 : tensor<1x480x4x4xf32>, tensor<480x3x3xf32>) outs(%200 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %209 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %cst_37, %cst_38, %cst_38, %cst_37 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%208 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x480x2x2xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %10 : tensor<1x480x2x2xf32>, tensor<f32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x2x2xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %209 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %215 = tensor.empty() : tensor<1x480x1x1xf32>
    %216 = linalg.fill ins(%cst_97 : f32) outs(%215 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %217 = tensor.empty() : tensor<2x2xf32>
    %218 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%214, %217 : tensor<1x480x2x2xf32>, tensor<2x2xf32>) outs(%216 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x480x1x1xf32>) outs(%215 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_102 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x1x1xf32>
    %220 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%219, %cst_35 : tensor<1x480x1x1xf32>, tensor<120x480x1x1xf32>) outs(%93 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x120x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_38 : tensor<480xf32>) outs(%215 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %223 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_34 : tensor<1x120x1x1xf32>, tensor<480x120x1x1xf32>) outs(%222 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x480x1x1xf32>) outs(%215 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x1x1xf32>
    %225 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x480x1x1xf32>) outs(%215 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %225 : tensor<f32>, tensor<1x480x1x1xf32>) outs(%215 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %226 : tensor<f32>, tensor<1x480x1x1xf32>) outs(%215 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x480x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %214 : tensor<1x480x1x1xf32>, tensor<1x480x2x2xf32>) outs(%199 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x480x2x2xf32>
    %229 = tensor.empty() : tensor<1x112x2x2xf32>
    %230 = linalg.fill ins(%cst_97 : f32) outs(%229 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%228, %cst_33 : tensor<1x480x2x2xf32>, tensor<112x480x1x1xf32>) outs(%230 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_31, %cst_32, %cst_32, %cst_31 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%231 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x112x2x2xf32>
    %233 = tensor.empty() : tensor<1x672x2x2xf32>
    %234 = linalg.fill ins(%cst_97 : f32) outs(%233 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    %235 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%232, %cst_30 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%234 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %236 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %cst_28, %cst_29, %cst_29, %cst_28 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%235 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x672x2x2xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %10 : tensor<1x672x2x2xf32>, tensor<f32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %241 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %236 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_124 = tensor.pad %241 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x4x4xf32>
    %collapsed_125 = tensor.collapse_shape %cst_27 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %242 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_124, %collapsed_125 : tensor<1x672x4x4xf32>, tensor<672x3x3xf32>) outs(%234 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %243 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %cst_28, %cst_29, %cst_29, %cst_28 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%242 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x672x2x2xf32>
    %244 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %10 : tensor<1x672x2x2xf32>, tensor<f32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %243 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %249 = tensor.empty() : tensor<1x672x1x1xf32>
    %250 = linalg.fill ins(%cst_97 : f32) outs(%249 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %251 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%248, %217 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%250 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %252 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_102 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %253 = tensor.empty() : tensor<1x168x1x1xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_25 : tensor<168xf32>) outs(%253 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x168x1x1xf32>
    %255 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%252, %cst_26 : tensor<1x672x1x1xf32>, tensor<168x672x1x1xf32>) outs(%254 : tensor<1x168x1x1xf32>) -> tensor<1x168x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x168x1x1xf32>) outs(%253 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x168x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29 : tensor<672xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x672x1x1xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %cst_24 : tensor<1x168x1x1xf32>, tensor<672x168x1x1xf32>) outs(%257 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %260 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %261 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %248 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_23 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%230 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_31, %cst_32, %cst_32, %cst_31 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%264 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x112x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %232 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%229 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x112x2x2xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_22 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%234 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_28, %cst_29, %cst_29, %cst_28 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%267 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x672x2x2xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %271 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %10 : tensor<1x672x2x2xf32>, tensor<f32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x2x2xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %268 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%233 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_126 = tensor.pad %273 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x6x6xf32>
    %collapsed_127 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %274 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_126, %collapsed_127 : tensor<1x672x6x6xf32>, tensor<672x5x5xf32>) outs(%250 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_28, %cst_29, %cst_29, %cst_28 : tensor<1x672x1x1xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%274 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x672x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %277 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %278 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %10 : tensor<1x672x1x1xf32>, tensor<f32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %279 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %280 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %275 : tensor<1x672x1x1xf32>, tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %281 = tensor.empty() : tensor<1x1xf32>
    %282 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %281 : tensor<1x672x1x1xf32>, tensor<1x1xf32>) outs(%250 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %283 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %cst_20 : tensor<1x672x1x1xf32>, tensor<168x672x1x1xf32>) outs(%254 : tensor<1x168x1x1xf32>) -> tensor<1x168x1x1xf32>
    %284 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x168x1x1xf32>) outs(%253 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x168x1x1xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%284, %cst_19 : tensor<1x168x1x1xf32>, tensor<672x168x1x1xf32>) outs(%257 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %287 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %287 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %288 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x672x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %280 : tensor<1x672x1x1xf32>, tensor<1x672x1x1xf32>) outs(%249 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x672x1x1xf32>
    %291 = tensor.empty() : tensor<1x160x1x1xf32>
    %292 = linalg.fill ins(%cst_97 : f32) outs(%291 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_18 : tensor<1x672x1x1xf32>, tensor<160x672x1x1xf32>) outs(%292 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_16, %cst_17, %cst_17, %cst_16 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%293 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x160x1x1xf32>
    %295 = tensor.empty() : tensor<1x960x1x1xf32>
    %296 = linalg.fill ins(%cst_97 : f32) outs(%295 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%294, %cst_15 : tensor<1x160x1x1xf32>, tensor<960x160x1x1xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %298 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%297 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x960x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %300 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %301 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %10 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %302 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %298 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %padded_128 = tensor.pad %303 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x960x1x1xf32> to tensor<1x960x5x5xf32>
    %collapsed_129 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %304 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_128, %collapsed_129 : tensor<1x960x5x5xf32>, tensor<960x5x5xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%304 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x960x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %10 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %309 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %305 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %311 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %281 : tensor<1x960x1x1xf32>, tensor<1x1xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %312 = tensor.empty() : tensor<1x240x1x1xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_58 : tensor<240xf32>) outs(%312 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %314 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_11 : tensor<1x960x1x1xf32>, tensor<240x960x1x1xf32>) outs(%313 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<1x240x1x1xf32>) outs(%312 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_14 : tensor<960xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%315, %cst_10 : tensor<1x240x1x1xf32>, tensor<960x240x1x1xf32>) outs(%316 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %319 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %320 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %319 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %320 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %322 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %310 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %323 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %cst_9 : tensor<1x960x1x1xf32>, tensor<160x960x1x1xf32>) outs(%292 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %324 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %cst_16, %cst_17, %cst_17, %cst_16 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%323 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x160x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %294 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%291 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x160x1x1xf32>
    %326 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%325, %cst_8 : tensor<1x160x1x1xf32>, tensor<960x160x1x1xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %327 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%326 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x960x1x1xf32>
    %328 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %10 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %327 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %padded_130 = tensor.pad %332 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_97 : f32
    } : tensor<1x960x1x1xf32> to tensor<1x960x5x5xf32>
    %collapsed_131 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %333 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_130, %collapsed_131 : tensor<1x960x5x5xf32>, tensor<960x5x5xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%333 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x960x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %337 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %10 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %338 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %339 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %334 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %340 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%339, %281 : tensor<1x960x1x1xf32>, tensor<1x1xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %341 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%340, %cst_6 : tensor<1x960x1x1xf32>, tensor<240x960x1x1xf32>) outs(%313 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %342 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x240x1x1xf32>) outs(%312 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x240x1x1xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%342, %cst_5 : tensor<1x240x1x1xf32>, tensor<960x240x1x1xf32>) outs(%316 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %344 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %345 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %347 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %346 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %339 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %349 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%348, %cst_4 : tensor<1x960x1x1xf32>, tensor<160x960x1x1xf32>) outs(%292 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %cst_16, %cst_17, %cst_17, %cst_16 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%349 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x160x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %325 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%291 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x160x1x1xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %cst_3 : tensor<1x160x1x1xf32>, tensor<960x160x1x1xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_13, %cst_14, %cst_14, %cst_13 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%352 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %in_134: f32, %in_135: f32, %in_136: f32, %out: f32):
      %377 = arith.truncf %cst_98 : f64 to f32
      %378 = arith.addf %in_136, %377 : f32
      %379 = math.rsqrt %378 : f32
      %380 = arith.subf %in, %in_135 : f32
      %381 = arith.mulf %380, %379 : f32
      %382 = arith.mulf %381, %in_133 : f32
      %383 = arith.addf %382, %in_134 : f32
      linalg.yield %383 : f32
    } -> tensor<1x960x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %10 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x960x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %353 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%295 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x960x1x1xf32>
    %359 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %281 : tensor<1x960x1x1xf32>, tensor<1x1xf32>) outs(%296 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %collapsed_132 = tensor.collapse_shape %359 [[0], [1, 2, 3]] : tensor<1x960x1x1xf32> into tensor<1x960xf32>
    %360 = tensor.empty() : tensor<960x1280xf32>
    %361 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<1280x960xf32>) outs(%360 : tensor<960x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<960x1280xf32>
    %362 = tensor.empty() : tensor<1x1280xf32>
    %363 = linalg.fill ins(%cst_97 : f32) outs(%362 : tensor<1x1280xf32>) -> tensor<1x1280xf32>
    %364 = linalg.matmul ins(%collapsed_132, %361 : tensor<1x960xf32>, tensor<960x1280xf32>) outs(%363 : tensor<1x1280xf32>) -> tensor<1x1280xf32>
    %365 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%364, %cst_1 : tensor<1x1280xf32>, tensor<1280xf32>) outs(%362 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1280xf32>
    %366 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%365 : tensor<1x1280xf32>) outs(%362 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.addf %in, %cst_99 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1280xf32>
    %367 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%366 : tensor<1x1280xf32>) outs(%362 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.cmpf ugt, %in, %cst_97 : f32
      %378 = arith.select %377, %in, %cst_97 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1280xf32>
    %368 = linalg.generic {indexing_maps = [#map8, #map10, #map6], iterator_types = ["parallel", "parallel"]} ins(%367, %10 : tensor<1x1280xf32>, tensor<f32>) outs(%362 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.cmpf ult, %in, %in_133 : f32
      %378 = arith.select %377, %in, %in_133 : f32
      linalg.yield %378 : f32
    } -> tensor<1x1280xf32>
    %369 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%368 : tensor<1x1280xf32>) outs(%362 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %377 = arith.divf %in, %cst_100 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1280xf32>
    %370 = linalg.generic {indexing_maps = [#map8, #map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%369, %365 : tensor<1x1280xf32>, tensor<1x1280xf32>) outs(%362 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.mulf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1280xf32>
    %371 = tensor.empty() : tensor<1280x1000xf32>
    %372 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1280xf32>) outs(%371 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %373 = tensor.empty() : tensor<1x1000xf32>
    %374 = linalg.fill ins(%cst_97 : f32) outs(%373 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %375 = linalg.matmul ins(%370, %372 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%374 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %376 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%375, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%373 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_133: f32, %out: f32):
      %377 = arith.addf %in, %in_133 : f32
      linalg.yield %377 : f32
    } -> tensor<1x1000xf32>
    return %376 : tensor<1x1000xf32>
  }
}
