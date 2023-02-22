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
  func.func @forward(%arg0: tensor<1x3x64x64xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<1.000000e+00> : tensor<1000xf32>
    %cst_0 = arith.constant dense<1.000000e+00> : tensor<1000x1024xf32>
    %cst_1 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1024x576xf32>
    %cst_3 = arith.constant dense<1.000000e+00> : tensor<96x576x1x1xf32>
    %cst_4 = arith.constant dense<1.000000e+00> : tensor<576x144x1x1xf32>
    %cst_5 = arith.constant dense<1.000000e+00> : tensor<144x576x1x1xf32>
    %cst_6 = arith.constant dense<1.000000e+00> : tensor<576x1x5x5xf32>
    %cst_7 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<576x96x1x1xf32>
    %cst_10 = arith.constant dense<1.000000e+00> : tensor<96x288x1x1xf32>
    %cst_11 = arith.constant dense<1.000000e+00> : tensor<288x72x1x1xf32>
    %cst_12 = arith.constant dense<1.000000e+00> : tensor<72x288x1x1xf32>
    %cst_13 = arith.constant dense<1.000000e+00> : tensor<288x1x5x5xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_16 = arith.constant dense<1.000000e+00> : tensor<288x48x1x1xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<48x144x1x1xf32>
    %cst_18 = arith.constant dense<1.000000e+00> : tensor<144x40x1x1xf32>
    %cst_19 = arith.constant dense<1.000000e+00> : tensor<40x144x1x1xf32>
    %cst_20 = arith.constant dense<1.000000e+00> : tensor<144x1x5x5xf32>
    %cst_21 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_23 = arith.constant dense<1.000000e+00> : tensor<144x48x1x1xf32>
    %cst_24 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_25 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_26 = arith.constant dense<1.000000e+00> : tensor<48x120x1x1xf32>
    %cst_27 = arith.constant dense<1.000000e+00> : tensor<120x32x1x1xf32>
    %cst_28 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_29 = arith.constant dense<1.000000e+00> : tensor<32x120x1x1xf32>
    %cst_30 = arith.constant dense<1.000000e+00> : tensor<120x1x5x5xf32>
    %cst_31 = arith.constant dense<1.000000e+00> : tensor<120xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<120xf32>
    %cst_33 = arith.constant dense<1.000000e+00> : tensor<120x40x1x1xf32>
    %cst_34 = arith.constant dense<1.000000e+00> : tensor<40x240x1x1xf32>
    %cst_35 = arith.constant dense<1.000000e+00> : tensor<240x64x1x1xf32>
    %cst_36 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_37 = arith.constant dense<1.000000e+00> : tensor<64x240x1x1xf32>
    %cst_38 = arith.constant dense<1.000000e+00> : tensor<240x1x5x5xf32>
    %cst_39 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_41 = arith.constant dense<1.000000e+00> : tensor<240x40x1x1xf32>
    %cst_42 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_44 = arith.constant dense<1.000000e+00> : tensor<40x96x1x1xf32>
    %cst_45 = arith.constant dense<1.000000e+00> : tensor<24x96x1x1xf32>
    %cst_46 = arith.constant dense<1.000000e+00> : tensor<96x1x5x5xf32>
    %cst_47 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_48 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_49 = arith.constant dense<1.000000e+00> : tensor<96x24x1x1xf32>
    %cst_50 = arith.constant dense<1.000000e+00> : tensor<24x88x1x1xf32>
    %cst_51 = arith.constant dense<1.000000e+00> : tensor<88x1x3x3xf32>
    %cst_52 = arith.constant dense<1.000000e+00> : tensor<88xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<88xf32>
    %cst_54 = arith.constant dense<1.000000e+00> : tensor<88x24x1x1xf32>
    %cst_55 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_57 = arith.constant dense<1.000000e+00> : tensor<24x72x1x1xf32>
    %cst_58 = arith.constant dense<1.000000e+00> : tensor<72x1x3x3xf32>
    %cst_59 = arith.constant dense<1.000000e+00> : tensor<72xf32>
    %cst_60 = arith.constant dense<0.000000e+00> : tensor<72xf32>
    %cst_61 = arith.constant dense<1.000000e+00> : tensor<72x16x1x1xf32>
    %cst_62 = arith.constant dense<1.000000e+00> : tensor<16x16x1x1xf32>
    %cst_63 = arith.constant dense<1.000000e+00> : tensor<16x8x1x1xf32>
    %cst_64 = arith.constant dense<1.000000e+00> : tensor<8xf32>
    %cst_65 = arith.constant dense<1.000000e+00> : tensor<8x16x1x1xf32>
    %cst_66 = arith.constant dense<1.000000e+00> : tensor<16x1x3x3xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_68 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_69 = arith.constant dense<1.000000e+00> : tensor<16x3x3x3xf32>
    %cst_70 = arith.constant 0.000000e+00 : f32
    %cst_71 = arith.constant 1.000000e-03 : f64
    %cst_72 = arith.constant 3.000000e+00 : f32
    %cst_73 = arith.constant 6.000000e+00 : f32
    %cst_74 = arith.constant 2.560000e+02 : f32
    %cst_75 = arith.constant 1.600000e+01 : f32
    %c6_i64 = arith.constant 6 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %cst_76 = arith.constant 4.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x3x64x64xf32> to tensor<1x3x66x66xf32>
    %0 = tensor.empty() : tensor<1x16x32x32xf32>
    %1 = linalg.fill ins(%cst_70 : f32) outs(%0 : tensor<1x16x32x32xf32>) -> tensor<1x16x32x32xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_69 : tensor<1x3x66x66xf32>, tensor<16x3x3x3xf32>) outs(%1 : tensor<1x16x32x32xf32>) -> tensor<1x16x32x32xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_67, %cst_67, %cst_68, %cst_67 : tensor<1x16x32x32xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%2 : tensor<1x16x32x32xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x16x32x32xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x16x32x32xf32>) outs(%0 : tensor<1x16x32x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x32x32xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x16x32x32xf32>) outs(%0 : tensor<1x16x32x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x16x32x32xf32>
    %7 = tensor.empty() : tensor<i64>
    %8 = linalg.fill ins(%c6_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %9 = tensor.empty() : tensor<f32>
    %10 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%8 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %357 = arith.sitofp %in : i64 to f32
      linalg.yield %357 : f32
    } -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %10 : tensor<1x16x32x32xf32>, tensor<f32>) outs(%0 : tensor<1x16x32x32xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x16x32x32xf32>
    %12 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<1x16x32x32xf32>) outs(%0 : tensor<1x16x32x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x32x32xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %4 : tensor<1x16x32x32xf32>, tensor<1x16x32x32xf32>) outs(%0 : tensor<1x16x32x32xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x32x32xf32>
    %padded_77 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x16x32x32xf32> to tensor<1x16x34x34xf32>
    %14 = tensor.empty() : tensor<1x16x16x16xf32>
    %15 = linalg.fill ins(%cst_70 : f32) outs(%14 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %collapsed = tensor.collapse_shape %cst_66 [[0, 1], [2], [3]] : tensor<16x1x3x3xf32> into tensor<16x3x3xf32>
    %16 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_77, %collapsed : tensor<1x16x34x34xf32>, tensor<16x3x3xf32>) outs(%15 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %17 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %cst_67, %cst_67, %cst_68, %cst_67 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%16 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x16x16x16xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<1x16x16x16xf32>) outs(%14 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x16x16x16xf32>
    %19 = tensor.empty() : tensor<1x16x1x1xf32>
    %20 = linalg.fill ins(%cst_70 : f32) outs(%19 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %21 = tensor.empty() : tensor<16x16xf32>
    %22 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%18, %21 : tensor<1x16x16x16xf32>, tensor<16x16xf32>) outs(%20 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_74 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x1x1xf32>
    %24 = tensor.empty() : tensor<1x8x1x1xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_64 : tensor<8xf32>) outs(%24 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%23, %cst_65 : tensor<1x16x1x1xf32>, tensor<8x16x1x1xf32>) outs(%25 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x8x1x1xf32>) outs(%24 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x8x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_67 : tensor<16xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%27, %cst_63 : tensor<1x8x1x1xf32>, tensor<16x8x1x1xf32>) outs(%28 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x1x1xf32>
    %31 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x1x1xf32>
    %32 = linalg.fill ins(%c1_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %33 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%32 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %357 = arith.sitofp %in : i64 to f32
      linalg.yield %357 : f32
    } -> tensor<f32>
    %34 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %31 : tensor<f32>, tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x16x1x1xf32>
    %35 = linalg.fill ins(%c0_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %36 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%35 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %357 = arith.sitofp %in : i64 to f32
      linalg.yield %357 : f32
    } -> tensor<f32>
    %37 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %34 : tensor<f32>, tensor<1x16x1x1xf32>) outs(%19 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x16x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %18 : tensor<1x16x1x1xf32>, tensor<1x16x16x16xf32>) outs(%14 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x16x16x16xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %cst_62 : tensor<1x16x16x16xf32>, tensor<16x16x1x1xf32>) outs(%15 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_67, %cst_67, %cst_68, %cst_67 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%39 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x16x16x16xf32>
    %41 = tensor.empty() : tensor<1x72x16x16xf32>
    %42 = linalg.fill ins(%cst_70 : f32) outs(%41 : tensor<1x72x16x16xf32>) -> tensor<1x72x16x16xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_61 : tensor<1x16x16x16xf32>, tensor<72x16x1x1xf32>) outs(%42 : tensor<1x72x16x16xf32>) -> tensor<1x72x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_59, %cst_59, %cst_60, %cst_59 : tensor<1x72x16x16xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%43 : tensor<1x72x16x16xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x72x16x16xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x72x16x16xf32>) outs(%41 : tensor<1x72x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x72x16x16xf32>
    %padded_78 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x72x16x16xf32> to tensor<1x72x18x18xf32>
    %46 = tensor.empty() : tensor<1x72x8x8xf32>
    %47 = linalg.fill ins(%cst_70 : f32) outs(%46 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    %collapsed_79 = tensor.collapse_shape %cst_58 [[0, 1], [2], [3]] : tensor<72x1x3x3xf32> into tensor<72x3x3xf32>
    %48 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_78, %collapsed_79 : tensor<1x72x18x18xf32>, tensor<72x3x3xf32>) outs(%47 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_59, %cst_59, %cst_60, %cst_59 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%48 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x72x8x8xf32>
    %50 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<1x72x8x8xf32>) outs(%46 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x72x8x8xf32>
    %51 = tensor.empty() : tensor<1x24x8x8xf32>
    %52 = linalg.fill ins(%cst_70 : f32) outs(%51 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%50, %cst_57 : tensor<1x72x8x8xf32>, tensor<24x72x1x1xf32>) outs(%52 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %54 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_55, %cst_55, %cst_56, %cst_55 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%53 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x24x8x8xf32>
    %55 = tensor.empty() : tensor<1x88x8x8xf32>
    %56 = linalg.fill ins(%cst_70 : f32) outs(%55 : tensor<1x88x8x8xf32>) -> tensor<1x88x8x8xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_54 : tensor<1x24x8x8xf32>, tensor<88x24x1x1xf32>) outs(%56 : tensor<1x88x8x8xf32>) -> tensor<1x88x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_52, %cst_52, %cst_53, %cst_52 : tensor<1x88x8x8xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%57 : tensor<1x88x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x88x8x8xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x88x8x8xf32>) outs(%55 : tensor<1x88x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x88x8x8xf32>
    %padded_80 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x88x8x8xf32> to tensor<1x88x10x10xf32>
    %collapsed_81 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<88x1x3x3xf32> into tensor<88x3x3xf32>
    %60 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %collapsed_81 : tensor<1x88x10x10xf32>, tensor<88x3x3xf32>) outs(%56 : tensor<1x88x8x8xf32>) -> tensor<1x88x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %61 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_52, %cst_52, %cst_53, %cst_52 : tensor<1x88x8x8xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%60 : tensor<1x88x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x88x8x8xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x88x8x8xf32>) outs(%55 : tensor<1x88x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x88x8x8xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_50 : tensor<1x88x8x8xf32>, tensor<24x88x1x1xf32>) outs(%52 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_55, %cst_55, %cst_56, %cst_55 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%63 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x24x8x8xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %54 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%51 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x24x8x8xf32>
    %66 = tensor.empty() : tensor<1x96x8x8xf32>
    %67 = linalg.fill ins(%cst_70 : f32) outs(%66 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_49 : tensor<1x24x8x8xf32>, tensor<96x24x1x1xf32>) outs(%67 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_47, %cst_47, %cst_48, %cst_47 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%68 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x96x8x8xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x96x8x8xf32>) outs(%66 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x8x8xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x96x8x8xf32>) outs(%66 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x96x8x8xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %10 : tensor<1x96x8x8xf32>, tensor<f32>) outs(%66 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x96x8x8xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x96x8x8xf32>) outs(%66 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x8x8xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %69 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%66 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x8x8xf32>
    %padded_82 = tensor.pad %74 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x96x8x8xf32> to tensor<1x96x12x12xf32>
    %75 = tensor.empty() : tensor<1x96x4x4xf32>
    %76 = linalg.fill ins(%cst_70 : f32) outs(%75 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    %collapsed_83 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<96x1x5x5xf32> into tensor<96x5x5xf32>
    %77 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_82, %collapsed_83 : tensor<1x96x12x12xf32>, tensor<96x5x5xf32>) outs(%76 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %78 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %cst_47, %cst_47, %cst_48, %cst_47 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%77 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x96x4x4xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x96x4x4xf32>) outs(%75 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x96x4x4xf32>) outs(%75 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x96x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %10 : tensor<1x96x4x4xf32>, tensor<f32>) outs(%75 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x96x4x4xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x96x4x4xf32>) outs(%75 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %78 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%75 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x4x4xf32>
    %84 = tensor.empty() : tensor<1x96x1x1xf32>
    %85 = linalg.fill ins(%cst_70 : f32) outs(%84 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %86 = tensor.empty() : tensor<4x4xf32>
    %87 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%83, %86 : tensor<1x96x4x4xf32>, tensor<4x4xf32>) outs(%85 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_75 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x1x1xf32>
    %89 = tensor.empty() : tensor<1x24x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_55 : tensor<24xf32>) outs(%89 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_45 : tensor<1x96x1x1xf32>, tensor<24x96x1x1xf32>) outs(%90 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x24x1x1xf32>) outs(%89 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x24x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_47 : tensor<96xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_49 : tensor<1x24x1x1xf32>, tensor<96x24x1x1xf32>) outs(%93 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %96 : tensor<f32>, tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x96x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %97 : tensor<f32>, tensor<1x96x1x1xf32>) outs(%84 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x96x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %83 : tensor<1x96x1x1xf32>, tensor<1x96x4x4xf32>) outs(%75 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x4x4xf32>
    %100 = tensor.empty() : tensor<1x40x4x4xf32>
    %101 = linalg.fill ins(%cst_70 : f32) outs(%100 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_44 : tensor<1x96x4x4xf32>, tensor<40x96x1x1xf32>) outs(%101 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_42, %cst_42, %cst_43, %cst_42 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%102 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x40x4x4xf32>
    %104 = tensor.empty() : tensor<1x240x4x4xf32>
    %105 = linalg.fill ins(%cst_70 : f32) outs(%104 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_41 : tensor<1x40x4x4xf32>, tensor<240x40x1x1xf32>) outs(%105 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_39, %cst_39, %cst_40, %cst_39 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%106 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x240x4x4xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %10 : tensor<1x240x4x4xf32>, tensor<f32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %107 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %padded_84 = tensor.pad %112 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x240x4x4xf32> to tensor<1x240x8x8xf32>
    %collapsed_85 = tensor.collapse_shape %cst_38 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %113 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_84, %collapsed_85 : tensor<1x240x8x8xf32>, tensor<240x5x5xf32>) outs(%105 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_39, %cst_39, %cst_40, %cst_39 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%113 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x240x4x4xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %10 : tensor<1x240x4x4xf32>, tensor<f32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %114 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %120 = tensor.empty() : tensor<1x240x1x1xf32>
    %121 = linalg.fill ins(%cst_70 : f32) outs(%120 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %122 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%119, %86 : tensor<1x240x4x4xf32>, tensor<4x4xf32>) outs(%121 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %123 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_75 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x1x1xf32>
    %124 = tensor.empty() : tensor<1x64x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_36 : tensor<64xf32>) outs(%124 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%123, %cst_37 : tensor<1x240x1x1xf32>, tensor<64x240x1x1xf32>) outs(%125 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x64x1x1xf32>) outs(%124 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x64x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_39 : tensor<240xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_35 : tensor<1x64x1x1xf32>, tensor<240x64x1x1xf32>) outs(%128 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %131 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %132 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %119 : tensor<1x240x1x1xf32>, tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_34 : tensor<1x240x4x4xf32>, tensor<40x240x1x1xf32>) outs(%101 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_42, %cst_42, %cst_43, %cst_42 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%135 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x40x4x4xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %103 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%100 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x40x4x4xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_41 : tensor<1x40x4x4xf32>, tensor<240x40x1x1xf32>) outs(%105 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_39, %cst_39, %cst_40, %cst_39 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%138 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x240x4x4xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %10 : tensor<1x240x4x4xf32>, tensor<f32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %139 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %padded_86 = tensor.pad %144 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x240x4x4xf32> to tensor<1x240x8x8xf32>
    %145 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_86, %collapsed_85 : tensor<1x240x8x8xf32>, tensor<240x5x5xf32>) outs(%105 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %146 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %cst_39, %cst_39, %cst_40, %cst_39 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%145 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x240x4x4xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %148 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %10 : tensor<1x240x4x4xf32>, tensor<f32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %146 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %152 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%151, %86 : tensor<1x240x4x4xf32>, tensor<4x4xf32>) outs(%121 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_75 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x1x1xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_37 : tensor<1x240x1x1xf32>, tensor<64x240x1x1xf32>) outs(%125 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x64x1x1xf32>) outs(%124 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x64x1x1xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_35 : tensor<1x64x1x1xf32>, tensor<240x64x1x1xf32>) outs(%128 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %157 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x1x1xf32>
    %159 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %158 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x1x1xf32>
    %160 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %159 : tensor<f32>, tensor<1x240x1x1xf32>) outs(%120 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x240x1x1xf32>
    %161 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %151 : tensor<1x240x1x1xf32>, tensor<1x240x4x4xf32>) outs(%104 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x240x4x4xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%161, %cst_34 : tensor<1x240x4x4xf32>, tensor<40x240x1x1xf32>) outs(%101 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_42, %cst_42, %cst_43, %cst_42 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%162 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x40x4x4xf32>
    %164 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %137 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%100 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x40x4x4xf32>
    %165 = tensor.empty() : tensor<1x120x4x4xf32>
    %166 = linalg.fill ins(%cst_70 : f32) outs(%165 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%164, %cst_33 : tensor<1x40x4x4xf32>, tensor<120x40x1x1xf32>) outs(%166 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_31, %cst_31, %cst_32, %cst_31 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%167 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x120x4x4xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x120x4x4xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %10 : tensor<1x120x4x4xf32>, tensor<f32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x120x4x4xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %168 : tensor<1x120x4x4xf32>, tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %padded_87 = tensor.pad %173 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x120x4x4xf32> to tensor<1x120x8x8xf32>
    %collapsed_88 = tensor.collapse_shape %cst_30 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %174 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_87, %collapsed_88 : tensor<1x120x8x8xf32>, tensor<120x5x5xf32>) outs(%166 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_31, %cst_31, %cst_32, %cst_31 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%174 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x120x4x4xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x120x4x4xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %10 : tensor<1x120x4x4xf32>, tensor<f32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x120x4x4xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %175 : tensor<1x120x4x4xf32>, tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %181 = tensor.empty() : tensor<1x120x1x1xf32>
    %182 = linalg.fill ins(%cst_70 : f32) outs(%181 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %183 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %86 : tensor<1x120x4x4xf32>, tensor<4x4xf32>) outs(%182 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_75 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x1x1xf32>
    %185 = tensor.empty() : tensor<1x32x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_28 : tensor<32xf32>) outs(%185 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_29 : tensor<1x120x1x1xf32>, tensor<32x120x1x1xf32>) outs(%186 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x32x1x1xf32>) outs(%185 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x32x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<120xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x120x1x1xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_27 : tensor<1x32x1x1xf32>, tensor<120x32x1x1xf32>) outs(%189 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %191 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %192 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x120x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %193 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%181 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x120x1x1xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %180 : tensor<1x120x1x1xf32>, tensor<1x120x4x4xf32>) outs(%165 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x120x4x4xf32>
    %196 = tensor.empty() : tensor<1x48x4x4xf32>
    %197 = linalg.fill ins(%cst_70 : f32) outs(%196 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%195, %cst_26 : tensor<1x120x4x4xf32>, tensor<48x120x1x1xf32>) outs(%197 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_24, %cst_24, %cst_25, %cst_24 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%198 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x48x4x4xf32>
    %200 = tensor.empty() : tensor<1x144x4x4xf32>
    %201 = linalg.fill ins(%cst_70 : f32) outs(%200 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    %202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %cst_23 : tensor<1x48x4x4xf32>, tensor<144x48x1x1xf32>) outs(%201 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %cst_21, %cst_21, %cst_22, %cst_21 : tensor<1x144x4x4xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%202 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x144x4x4xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x4x4xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %10 : tensor<1x144x4x4xf32>, tensor<f32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x4x4xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %203 : tensor<1x144x4x4xf32>, tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %padded_89 = tensor.pad %208 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x144x4x4xf32> to tensor<1x144x8x8xf32>
    %collapsed_90 = tensor.collapse_shape %cst_20 [[0, 1], [2], [3]] : tensor<144x1x5x5xf32> into tensor<144x5x5xf32>
    %209 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_89, %collapsed_90 : tensor<1x144x8x8xf32>, tensor<144x5x5xf32>) outs(%201 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %cst_21, %cst_21, %cst_22, %cst_21 : tensor<1x144x4x4xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%209 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x144x4x4xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x4x4xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %10 : tensor<1x144x4x4xf32>, tensor<f32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x4x4xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %210 : tensor<1x144x4x4xf32>, tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %216 = tensor.empty() : tensor<1x144x1x1xf32>
    %217 = linalg.fill ins(%cst_70 : f32) outs(%216 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %218 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%215, %86 : tensor<1x144x4x4xf32>, tensor<4x4xf32>) outs(%217 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_75 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x1x1xf32>
    %220 = tensor.empty() : tensor<1x40x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_42 : tensor<40xf32>) outs(%220 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%219, %cst_19 : tensor<1x144x1x1xf32>, tensor<40x144x1x1xf32>) outs(%221 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x40x1x1xf32>) outs(%220 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x40x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21 : tensor<144xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_18 : tensor<1x40x1x1xf32>, tensor<144x40x1x1xf32>) outs(%224 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %227 : tensor<f32>, tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %228 : tensor<f32>, tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %215 : tensor<1x144x1x1xf32>, tensor<1x144x4x4xf32>) outs(%200 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x144x4x4xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_17 : tensor<1x144x4x4xf32>, tensor<48x144x1x1xf32>) outs(%197 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_24, %cst_24, %cst_25, %cst_24 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%231 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x48x4x4xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %199 : tensor<1x48x4x4xf32>, tensor<1x48x4x4xf32>) outs(%196 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x48x4x4xf32>
    %234 = tensor.empty() : tensor<1x288x4x4xf32>
    %235 = linalg.fill ins(%cst_70 : f32) outs(%234 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_16 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%235 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %237 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_14, %cst_14, %cst_15, %cst_14 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%236 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x288x4x4xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x288x4x4xf32>) outs(%234 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x4x4xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x288x4x4xf32>) outs(%234 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x288x4x4xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %10 : tensor<1x288x4x4xf32>, tensor<f32>) outs(%234 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x288x4x4xf32>
    %241 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x288x4x4xf32>) outs(%234 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x4x4xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %237 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%234 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_91 = tensor.pad %242 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x8x8xf32>
    %243 = tensor.empty() : tensor<1x288x2x2xf32>
    %244 = linalg.fill ins(%cst_70 : f32) outs(%243 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %collapsed_92 = tensor.collapse_shape %cst_13 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %245 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_91, %collapsed_92 : tensor<1x288x8x8xf32>, tensor<288x5x5xf32>) outs(%244 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %246 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_14, %cst_14, %cst_15, %cst_14 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%245 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x288x2x2xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x288x2x2xf32>) outs(%243 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x2x2xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x288x2x2xf32>) outs(%243 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x288x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %10 : tensor<1x288x2x2xf32>, tensor<f32>) outs(%243 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x288x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x288x2x2xf32>) outs(%243 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x2x2xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %246 : tensor<1x288x2x2xf32>, tensor<1x288x2x2xf32>) outs(%243 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x2x2xf32>
    %252 = tensor.empty() : tensor<1x288x1x1xf32>
    %253 = linalg.fill ins(%cst_70 : f32) outs(%252 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %254 = tensor.empty() : tensor<2x2xf32>
    %255 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %254 : tensor<1x288x2x2xf32>, tensor<2x2xf32>) outs(%253 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x288x1x1xf32>) outs(%252 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_76 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x1x1xf32>
    %257 = tensor.empty() : tensor<1x72x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_59 : tensor<72xf32>) outs(%257 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x72x1x1xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %cst_12 : tensor<1x288x1x1xf32>, tensor<72x288x1x1xf32>) outs(%258 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x72x1x1xf32>) outs(%257 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x72x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_14 : tensor<288xf32>) outs(%252 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %262 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_11 : tensor<1x72x1x1xf32>, tensor<288x72x1x1xf32>) outs(%261 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x288x1x1xf32>) outs(%252 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x288x1x1xf32>) outs(%252 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %264 : tensor<f32>, tensor<1x288x1x1xf32>) outs(%252 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x288x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %265 : tensor<f32>, tensor<1x288x1x1xf32>) outs(%252 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x288x1x1xf32>
    %267 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %251 : tensor<1x288x1x1xf32>, tensor<1x288x2x2xf32>) outs(%243 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x288x2x2xf32>
    %268 = tensor.empty() : tensor<1x96x2x2xf32>
    %269 = linalg.fill ins(%cst_70 : f32) outs(%268 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %270 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_10 : tensor<1x288x2x2xf32>, tensor<96x288x1x1xf32>) outs(%269 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_47, %cst_47, %cst_48, %cst_47 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%270 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x96x2x2xf32>
    %272 = tensor.empty() : tensor<1x576x2x2xf32>
    %273 = linalg.fill ins(%cst_70 : f32) outs(%272 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %cst_9 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%273 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_7, %cst_7, %cst_8, %cst_7 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%274 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x576x2x2xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %278 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %10 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %275 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_93 = tensor.pad %280 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x6x6xf32>
    %collapsed_94 = tensor.collapse_shape %cst_6 [[0, 1], [2], [3]] : tensor<576x1x5x5xf32> into tensor<576x5x5xf32>
    %281 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_93, %collapsed_94 : tensor<1x576x6x6xf32>, tensor<576x5x5xf32>) outs(%273 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_7, %cst_7, %cst_8, %cst_7 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%281 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x576x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %285 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %10 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %282 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %288 = tensor.empty() : tensor<1x576x1x1xf32>
    %289 = linalg.fill ins(%cst_70 : f32) outs(%288 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %290 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%287, %254 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%289 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_76 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %292 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%291, %cst_5 : tensor<1x576x1x1xf32>, tensor<144x576x1x1xf32>) outs(%224 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x1x1xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<576xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x576x1x1xf32>
    %295 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_4 : tensor<1x144x1x1xf32>, tensor<576x144x1x1xf32>) outs(%294 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %297 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %297 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %298 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x1x1xf32>
    %300 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %287 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%300, %cst_3 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%269 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_47, %cst_47, %cst_48, %cst_47 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%301 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x96x2x2xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %271 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%268 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x2x2xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_9 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%273 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_7, %cst_7, %cst_8, %cst_7 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%304 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x576x2x2xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %10 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %305 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_95 = tensor.pad %310 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_70 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x6x6xf32>
    %311 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_95, %collapsed_94 : tensor<1x576x6x6xf32>, tensor<576x5x5xf32>) outs(%273 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %312 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_7, %cst_7, %cst_8, %cst_7 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%311 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x576x2x2xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %315 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %10 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %312 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %318 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %254 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%289 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %319 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_76 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%319, %cst_5 : tensor<1x576x1x1xf32>, tensor<144x576x1x1xf32>) outs(%224 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x144x1x1xf32>) outs(%216 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x144x1x1xf32>
    %322 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%321, %cst_4 : tensor<1x144x1x1xf32>, tensor<576x144x1x1xf32>) outs(%294 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %323 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %324 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %325 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %317 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_3 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%269 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %cst_47, %cst_47, %cst_48, %cst_47 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%328 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x96x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %303 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%268 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x96x2x2xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_9 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%273 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_7, %cst_7, %cst_8, %cst_7 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%331 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %in_98: f32, %in_99: f32, %in_100: f32, %out: f32):
      %357 = arith.truncf %cst_71 : f64 to f32
      %358 = arith.addf %in_100, %357 : f32
      %359 = math.rsqrt %358 : f32
      %360 = arith.subf %in, %in_99 : f32
      %361 = arith.mulf %360, %359 : f32
      %362 = arith.mulf %361, %in_97 : f32
      %363 = arith.addf %362, %in_98 : f32
      linalg.yield %363 : f32
    } -> tensor<1x576x2x2xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %334 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %10 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x576x2x2xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %332 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%272 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x2x2xf32>
    %338 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%337, %254 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%289 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %339 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338 : tensor<1x576x1x1xf32>) outs(%288 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_76 : f32
      linalg.yield %357 : f32
    } -> tensor<1x576x1x1xf32>
    %collapsed_96 = tensor.collapse_shape %339 [[0], [1, 2, 3]] : tensor<1x576x1x1xf32> into tensor<1x576xf32>
    %340 = tensor.empty() : tensor<576x1024xf32>
    %341 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<1024x576xf32>) outs(%340 : tensor<576x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<576x1024xf32>
    %342 = tensor.empty() : tensor<1x1024xf32>
    %343 = linalg.fill ins(%cst_70 : f32) outs(%342 : tensor<1x1024xf32>) -> tensor<1x1024xf32>
    %344 = linalg.matmul ins(%collapsed_96, %341 : tensor<1x576xf32>, tensor<576x1024xf32>) outs(%343 : tensor<1x1024xf32>) -> tensor<1x1024xf32>
    %345 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%344, %cst_1 : tensor<1x1024xf32>, tensor<1024xf32>) outs(%342 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x1024xf32>
    %346 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%345 : tensor<1x1024xf32>) outs(%342 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.addf %in, %cst_72 : f32
      linalg.yield %357 : f32
    } -> tensor<1x1024xf32>
    %347 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%346 : tensor<1x1024xf32>) outs(%342 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.cmpf ugt, %in, %cst_70 : f32
      %358 = arith.select %357, %in, %cst_70 : f32
      linalg.yield %358 : f32
    } -> tensor<1x1024xf32>
    %348 = linalg.generic {indexing_maps = [#map8, #map10, #map6], iterator_types = ["parallel", "parallel"]} ins(%347, %10 : tensor<1x1024xf32>, tensor<f32>) outs(%342 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.cmpf ult, %in, %in_97 : f32
      %358 = arith.select %357, %in, %in_97 : f32
      linalg.yield %358 : f32
    } -> tensor<1x1024xf32>
    %349 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%348 : tensor<1x1024xf32>) outs(%342 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %357 = arith.divf %in, %cst_73 : f32
      linalg.yield %357 : f32
    } -> tensor<1x1024xf32>
    %350 = linalg.generic {indexing_maps = [#map8, #map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%349, %345 : tensor<1x1024xf32>, tensor<1x1024xf32>) outs(%342 : tensor<1x1024xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.mulf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x1024xf32>
    %351 = tensor.empty() : tensor<1024x1000xf32>
    %352 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1024xf32>) outs(%351 : tensor<1024x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1000xf32>
    %353 = tensor.empty() : tensor<1x1000xf32>
    %354 = linalg.fill ins(%cst_70 : f32) outs(%353 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %355 = linalg.matmul ins(%350, %352 : tensor<1x1024xf32>, tensor<1024x1000xf32>) outs(%354 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %356 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%355, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%353 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_97: f32, %out: f32):
      %357 = arith.addf %in, %in_97 : f32
      linalg.yield %357 : f32
    } -> tensor<1x1000xf32>
    return %356 : tensor<1x1000xf32>
  }
}
