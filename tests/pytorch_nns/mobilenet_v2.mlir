#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<() -> ()>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> ()>
#map5 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1) -> (d1, d0)>
#map8 = affine_map<(d0, d1) -> (0, d1)>
#map9 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "MobileNetV2"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_0 = arith.constant dense<0.018797e+00> : tensor<1000x1280xf32>
    %cst_1 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_3 = arith.constant dense<-0.006224e+00> : tensor<1280x320x1x1xf32>
    %cst_4 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_6 = arith.constant dense<0.008722e+00> : tensor<320x960x1x1xf32>
    %cst_7 = arith.constant dense<0.004129e+00> : tensor<960x1x3x3xf32>
    %cst_8 = arith.constant dense<-0.002463e+00> : tensor<960x160x1x1xf32>
    %cst_9 = arith.constant dense<0.002229e+00> : tensor<160x960x1x1xf32>
    %cst_10 = arith.constant dense<0.000021e+00> : tensor<960x1x3x3xf32>
    %cst_11 = arith.constant dense<-0.004157e+00> : tensor<960x160x1x1xf32>
    %cst_12 = arith.constant dense<-0.010888e+00> : tensor<160x960x1x1xf32>
    %cst_13 = arith.constant dense<0.004829e+00> : tensor<960x1x3x3xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_16 = arith.constant dense<0.016727e+00> : tensor<960x160x1x1xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_19 = arith.constant dense<0.013271e+00> : tensor<160x576x1x1xf32>
    %cst_20 = arith.constant dense<0.008232e+00> : tensor<576x1x3x3xf32>
    %cst_21 = arith.constant dense<-0.003328e+00> : tensor<576x96x1x1xf32>
    %cst_22 = arith.constant dense<0.021117e+00> : tensor<96x576x1x1xf32>
    %cst_23 = arith.constant dense<0.004105e+00> : tensor<576x1x3x3xf32>
    %cst_24 = arith.constant dense<0.000530e+00> : tensor<576x96x1x1xf32>
    %cst_25 = arith.constant dense<-0.004582e+00> : tensor<96x576x1x1xf32>
    %cst_26 = arith.constant dense<0.011964e+00> : tensor<576x1x3x3xf32>
    %cst_27 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_28 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_29 = arith.constant dense<0.000824e+00> : tensor<576x96x1x1xf32>
    %cst_30 = arith.constant dense<0.007937e+00> : tensor<96x384x1x1xf32>
    %cst_31 = arith.constant dense<0.009185e+00> : tensor<384x1x3x3xf32>
    %cst_32 = arith.constant dense<0.000563e+00> : tensor<384x64x1x1xf32>
    %cst_33 = arith.constant dense<-0.007144e+00> : tensor<64x384x1x1xf32>
    %cst_34 = arith.constant dense<-0.002319e+00> : tensor<384x1x3x3xf32>
    %cst_35 = arith.constant dense<-0.004922e+00> : tensor<384x64x1x1xf32>
    %cst_36 = arith.constant dense<-0.001556e+00> : tensor<64x384x1x1xf32>
    %cst_37 = arith.constant dense<0.010170e+00> : tensor<384x1x3x3xf32>
    %cst_38 = arith.constant dense<-0.004220e+00> : tensor<384x64x1x1xf32>
    %cst_39 = arith.constant dense<0.016875e+00> : tensor<64x384x1x1xf32>
    %cst_40 = arith.constant dense<0.008208e+00> : tensor<384x1x3x3xf32>
    %cst_41 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_43 = arith.constant dense<0.001189e+00> : tensor<384x64x1x1xf32>
    %cst_44 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_45 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_46 = arith.constant dense<-0.000449e+00> : tensor<64x192x1x1xf32>
    %cst_47 = arith.constant dense<0.005599e+00> : tensor<192x1x3x3xf32>
    %cst_48 = arith.constant dense<0.017845e+00> : tensor<192x32x1x1xf32>
    %cst_49 = arith.constant dense<0.000583e+00> : tensor<32x192x1x1xf32>
    %cst_50 = arith.constant dense<0.003872e+00> : tensor<192x1x3x3xf32>
    %cst_51 = arith.constant dense<-0.001189e+00> : tensor<192x32x1x1xf32>
    %cst_52 = arith.constant dense<-0.000984e+00> : tensor<32x192x1x1xf32>
    %cst_53 = arith.constant dense<0.003445e+00> : tensor<192x1x3x3xf32>
    %cst_54 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_55 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_56 = arith.constant dense<0.008938e+00> : tensor<192x32x1x1xf32>
    %cst_57 = arith.constant dense<-0.005052e+00> : tensor<32x144x1x1xf32>
    %cst_58 = arith.constant dense<0.003426e+00> : tensor<144x1x3x3xf32>
    %cst_59 = arith.constant dense<0.000873e+00> : tensor<144x24x1x1xf32>
    %cst_60 = arith.constant dense<-0.015866e+00> : tensor<24x144x1x1xf32>
    %cst_61 = arith.constant dense<0.012612e+00> : tensor<144x1x3x3xf32>
    %cst_62 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_63 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_64 = arith.constant dense<0.009284e+00> : tensor<144x24x1x1xf32>
    %cst_65 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_67 = arith.constant dense<0.001561e+00> : tensor<24x96x1x1xf32>
    %cst_68 = arith.constant dense<0.009545e+00> : tensor<96x1x3x3xf32>
    %cst_69 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_70 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_71 = arith.constant dense<0.011037e+00> : tensor<96x16x1x1xf32>
    %cst_72 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_73 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_74 = arith.constant dense<-0.013727e+00> : tensor<16x32x1x1xf32>
    %cst_75 = arith.constant dense<-0.001505e+00> : tensor<32x1x3x3xf32>
    %cst_76 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_77 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_78 = arith.constant dense<-0.002117e+00> : tensor<32x3x3x3xf32>
    %cst_79 = arith.constant 0.000000e+00 : f32
    %cst_80 = arith.constant 1.000000e-05 : f64
    %cst_81 = arith.constant 6.000000e+00 : f64
    %cst_82 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x32x16x16xf32>
    %1 = linalg.fill ins(%cst_79 : f32) outs(%0 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_78 : tensor<1x3x34x34xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_76, %cst_77, %cst_77, %cst_76 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x32x16x16xf32>
    %5 = tensor.empty() : tensor<f64>
    %6 = linalg.fill ins(%cst_82 : f64) outs(%5 : tensor<f64>) -> tensor<f64>
    %7 = tensor.empty() : tensor<f32>
    %8 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = []} ins(%6 : tensor<f64>) outs(%7 : tensor<f32>) {
    ^bb0(%in: f64, %out: f32):
      %237 = arith.truncf %in : f64 to f32
      linalg.yield %237 : f32
    } -> tensor<f32>
    %9 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %8 : tensor<1x32x16x16xf32>, tensor<f32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x32x16x16xf32>
    %10 = linalg.fill ins(%cst_81 : f64) outs(%5 : tensor<f64>) -> tensor<f64>
    %11 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = []} ins(%10 : tensor<f64>) outs(%7 : tensor<f32>) {
    ^bb0(%in: f64, %out: f32):
      %237 = arith.truncf %in : f64 to f32
      linalg.yield %237 : f32
    } -> tensor<f32>
    %12 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %9 : tensor<f32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_83 = tensor.pad %12 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_75 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %13 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_83, %collapsed : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %14 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %cst_76, %cst_77, %cst_77, %cst_76 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%13 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x32x16x16xf32>
    %15 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %8 : tensor<1x32x16x16xf32>, tensor<f32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x32x16x16xf32>
    %16 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %15 : tensor<f32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x32x16x16xf32>
    %17 = tensor.empty() : tensor<1x16x16x16xf32>
    %18 = linalg.fill ins(%cst_79 : f32) outs(%17 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_74 : tensor<1x32x16x16xf32>, tensor<16x32x1x1xf32>) outs(%18 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_72, %cst_73, %cst_73, %cst_72 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%19 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x16x16x16xf32>
    %21 = tensor.empty() : tensor<1x96x16x16xf32>
    %22 = linalg.fill ins(%cst_79 : f32) outs(%21 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_71 : tensor<1x16x16x16xf32>, tensor<96x16x1x1xf32>) outs(%22 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %24 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %cst_69, %cst_70, %cst_70, %cst_69 : tensor<1x96x16x16xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%23 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x96x16x16xf32>
    %25 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %8 : tensor<1x96x16x16xf32>, tensor<f32>) outs(%21 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x96x16x16xf32>
    %26 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %25 : tensor<f32>, tensor<1x96x16x16xf32>) outs(%21 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x96x16x16xf32>
    %padded_84 = tensor.pad %26 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x96x16x16xf32> to tensor<1x96x18x18xf32>
    %27 = tensor.empty() : tensor<1x96x8x8xf32>
    %28 = linalg.fill ins(%cst_79 : f32) outs(%27 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %collapsed_85 = tensor.collapse_shape %cst_68 [[0, 1], [2], [3]] : tensor<96x1x3x3xf32> into tensor<96x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_84, %collapsed_85 : tensor<1x96x18x18xf32>, tensor<96x3x3xf32>) outs(%28 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_69, %cst_70, %cst_70, %cst_69 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%29 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x96x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %8 : tensor<1x96x8x8xf32>, tensor<f32>) outs(%27 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x96x8x8xf32>
    %32 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %31 : tensor<f32>, tensor<1x96x8x8xf32>) outs(%27 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x96x8x8xf32>
    %33 = tensor.empty() : tensor<1x24x8x8xf32>
    %34 = linalg.fill ins(%cst_79 : f32) outs(%33 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_67 : tensor<1x96x8x8xf32>, tensor<24x96x1x1xf32>) outs(%34 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_65, %cst_66, %cst_66, %cst_65 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%35 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x24x8x8xf32>
    %37 = tensor.empty() : tensor<1x144x8x8xf32>
    %38 = linalg.fill ins(%cst_79 : f32) outs(%37 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_64 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%38 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_62, %cst_63, %cst_63, %cst_62 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%39 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x144x8x8xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %8 : tensor<1x144x8x8xf32>, tensor<f32>) outs(%37 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %41 : tensor<f32>, tensor<1x144x8x8xf32>) outs(%37 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_86 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x10x10xf32>
    %collapsed_87 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %43 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_86, %collapsed_87 : tensor<1x144x10x10xf32>, tensor<144x3x3xf32>) outs(%38 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_62, %cst_63, %cst_63, %cst_62 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%43 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x144x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %8 : tensor<1x144x8x8xf32>, tensor<f32>) outs(%37 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x8x8xf32>
    %46 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %45 : tensor<f32>, tensor<1x144x8x8xf32>) outs(%37 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x8x8xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%46, %cst_60 : tensor<1x144x8x8xf32>, tensor<24x144x1x1xf32>) outs(%34 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_65, %cst_66, %cst_66, %cst_65 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%47 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x24x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %48 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%33 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x24x8x8xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_59 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%38 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_62, %cst_63, %cst_63, %cst_62 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%50 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x144x8x8xf32>
    %52 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %8 : tensor<1x144x8x8xf32>, tensor<f32>) outs(%37 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x8x8xf32>
    %53 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %52 : tensor<f32>, tensor<1x144x8x8xf32>) outs(%37 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_88 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x10x10xf32>
    %54 = tensor.empty() : tensor<1x144x4x4xf32>
    %55 = linalg.fill ins(%cst_79 : f32) outs(%54 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    %collapsed_89 = tensor.collapse_shape %cst_58 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %56 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_88, %collapsed_89 : tensor<1x144x10x10xf32>, tensor<144x3x3xf32>) outs(%55 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %57 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_62, %cst_63, %cst_63, %cst_62 : tensor<1x144x4x4xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%56 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x144x4x4xf32>
    %58 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %8 : tensor<1x144x4x4xf32>, tensor<f32>) outs(%54 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x4x4xf32>
    %59 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %58 : tensor<f32>, tensor<1x144x4x4xf32>) outs(%54 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x144x4x4xf32>
    %60 = tensor.empty() : tensor<1x32x4x4xf32>
    %61 = linalg.fill ins(%cst_79 : f32) outs(%60 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%59, %cst_57 : tensor<1x144x4x4xf32>, tensor<32x144x1x1xf32>) outs(%61 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_76, %cst_77, %cst_77, %cst_76 : tensor<1x32x4x4xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%62 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x32x4x4xf32>
    %64 = tensor.empty() : tensor<1x192x4x4xf32>
    %65 = linalg.fill ins(%cst_79 : f32) outs(%64 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %cst_56 : tensor<1x32x4x4xf32>, tensor<192x32x1x1xf32>) outs(%65 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_54, %cst_55, %cst_55, %cst_54 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%66 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x192x4x4xf32>
    %68 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %8 : tensor<1x192x4x4xf32>, tensor<f32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %69 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %68 : tensor<f32>, tensor<1x192x4x4xf32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_90 = tensor.pad %69 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %collapsed_91 = tensor.collapse_shape %cst_53 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %70 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_90, %collapsed_91 : tensor<1x192x6x6xf32>, tensor<192x3x3xf32>) outs(%65 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %71 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_54, %cst_55, %cst_55, %cst_54 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%70 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x192x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %8 : tensor<1x192x4x4xf32>, tensor<f32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %73 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %72 : tensor<f32>, tensor<1x192x4x4xf32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%73, %cst_52 : tensor<1x192x4x4xf32>, tensor<32x192x1x1xf32>) outs(%61 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_76, %cst_77, %cst_77, %cst_76 : tensor<1x32x4x4xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%74 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x32x4x4xf32>
    %76 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %75 : tensor<1x32x4x4xf32>, tensor<1x32x4x4xf32>) outs(%60 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x32x4x4xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_51 : tensor<1x32x4x4xf32>, tensor<192x32x1x1xf32>) outs(%65 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %78 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %cst_54, %cst_55, %cst_55, %cst_54 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%77 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x192x4x4xf32>
    %79 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %8 : tensor<1x192x4x4xf32>, tensor<f32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %79 : tensor<f32>, tensor<1x192x4x4xf32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_92 = tensor.pad %80 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %collapsed_93 = tensor.collapse_shape %cst_50 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %81 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_92, %collapsed_93 : tensor<1x192x6x6xf32>, tensor<192x3x3xf32>) outs(%65 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_54, %cst_55, %cst_55, %cst_54 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%81 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x192x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %8 : tensor<1x192x4x4xf32>, tensor<f32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %84 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %83 : tensor<f32>, tensor<1x192x4x4xf32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%84, %cst_49 : tensor<1x192x4x4xf32>, tensor<32x192x1x1xf32>) outs(%61 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_76, %cst_77, %cst_77, %cst_76 : tensor<1x32x4x4xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%85 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x32x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %86 : tensor<1x32x4x4xf32>, tensor<1x32x4x4xf32>) outs(%60 : tensor<1x32x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x32x4x4xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_48 : tensor<1x32x4x4xf32>, tensor<192x32x1x1xf32>) outs(%65 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_54, %cst_55, %cst_55, %cst_54 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%88 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x192x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %8 : tensor<1x192x4x4xf32>, tensor<f32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %90 : tensor<f32>, tensor<1x192x4x4xf32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_94 = tensor.pad %91 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %92 = tensor.empty() : tensor<1x192x2x2xf32>
    %93 = linalg.fill ins(%cst_79 : f32) outs(%92 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    %collapsed_95 = tensor.collapse_shape %cst_47 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %94 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_94, %collapsed_95 : tensor<1x192x6x6xf32>, tensor<192x3x3xf32>) outs(%93 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %95 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_54, %cst_55, %cst_55, %cst_54 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%94 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x192x2x2xf32>
    %96 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %8 : tensor<1x192x2x2xf32>, tensor<f32>) outs(%92 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x2x2xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %96 : tensor<f32>, tensor<1x192x2x2xf32>) outs(%92 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x192x2x2xf32>
    %98 = tensor.empty() : tensor<1x64x2x2xf32>
    %99 = linalg.fill ins(%cst_79 : f32) outs(%98 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%97, %cst_46 : tensor<1x192x2x2xf32>, tensor<64x192x1x1xf32>) outs(%99 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_44, %cst_45, %cst_45, %cst_44 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%100 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x64x2x2xf32>
    %102 = tensor.empty() : tensor<1x384x2x2xf32>
    %103 = linalg.fill ins(%cst_79 : f32) outs(%102 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %cst_43 : tensor<1x64x2x2xf32>, tensor<384x64x1x1xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%104 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %106 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %107 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %106 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_96 = tensor.pad %107 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x4x4xf32>
    %collapsed_97 = tensor.collapse_shape %cst_40 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %108 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_96, %collapsed_97 : tensor<1x384x4x4xf32>, tensor<384x3x3xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %109 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%108 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %111 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %110 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %cst_39 : tensor<1x384x2x2xf32>, tensor<64x384x1x1xf32>) outs(%99 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %113 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %cst_44, %cst_45, %cst_45, %cst_44 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%112 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x64x2x2xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %113 : tensor<1x64x2x2xf32>, tensor<1x64x2x2xf32>) outs(%98 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x64x2x2xf32>
    %115 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%114, %cst_38 : tensor<1x64x2x2xf32>, tensor<384x64x1x1xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %116 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%115 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %117 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %118 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %117 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_98 = tensor.pad %118 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x4x4xf32>
    %collapsed_99 = tensor.collapse_shape %cst_37 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %119 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_98, %collapsed_99 : tensor<1x384x4x4xf32>, tensor<384x3x3xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%119 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %121 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %122 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %121 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_36 : tensor<1x384x2x2xf32>, tensor<64x384x1x1xf32>) outs(%99 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_44, %cst_45, %cst_45, %cst_44 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%123 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x64x2x2xf32>
    %125 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %124 : tensor<1x64x2x2xf32>, tensor<1x64x2x2xf32>) outs(%98 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x64x2x2xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %cst_35 : tensor<1x64x2x2xf32>, tensor<384x64x1x1xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%126 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %128 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %129 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %128 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_100 = tensor.pad %129 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x4x4xf32>
    %collapsed_101 = tensor.collapse_shape %cst_34 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %130 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_100, %collapsed_101 : tensor<1x384x4x4xf32>, tensor<384x3x3xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %131 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%130 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %133 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %132 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_33 : tensor<1x384x2x2xf32>, tensor<64x384x1x1xf32>) outs(%99 : tensor<1x64x2x2xf32>) -> tensor<1x64x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_44, %cst_45, %cst_45, %cst_44 : tensor<1x64x2x2xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%134 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x64x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %135 : tensor<1x64x2x2xf32>, tensor<1x64x2x2xf32>) outs(%98 : tensor<1x64x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x64x2x2xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_32 : tensor<1x64x2x2xf32>, tensor<384x64x1x1xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%137 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %139 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %139 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_102 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x4x4xf32>
    %collapsed_103 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_102, %collapsed_103 : tensor<1x384x4x4xf32>, tensor<384x3x3xf32>) outs(%103 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_41, %cst_42, %cst_42, %cst_41 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%141 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x384x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %8 : tensor<1x384x2x2xf32>, tensor<f32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %144 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %143 : tensor<f32>, tensor<1x384x2x2xf32>) outs(%102 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x384x2x2xf32>
    %145 = tensor.empty() : tensor<1x96x2x2xf32>
    %146 = linalg.fill ins(%cst_79 : f32) outs(%145 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %cst_30 : tensor<1x384x2x2xf32>, tensor<96x384x1x1xf32>) outs(%146 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_69, %cst_70, %cst_70, %cst_69 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%147 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x96x2x2xf32>
    %149 = tensor.empty() : tensor<1x576x2x2xf32>
    %150 = linalg.fill ins(%cst_79 : f32) outs(%149 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%148, %cst_29 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%150 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%151 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x576x2x2xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %8 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %154 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %153 : tensor<f32>, tensor<1x576x2x2xf32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_104 = tensor.pad %154 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_105 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %155 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %collapsed_105 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%150 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %156 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%155 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x576x2x2xf32>
    %157 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %8 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %157 : tensor<f32>, tensor<1x576x2x2xf32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %159 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_25 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%146 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %160 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %cst_69, %cst_70, %cst_70, %cst_69 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%159 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x96x2x2xf32>
    %161 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %160 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%145 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x96x2x2xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%161, %cst_24 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%150 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%162 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x576x2x2xf32>
    %164 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %8 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %165 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %164 : tensor<f32>, tensor<1x576x2x2xf32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_106 = tensor.pad %165 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_107 = tensor.collapse_shape %cst_23 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %166 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_106, %collapsed_107 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%150 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %167 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%166 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x576x2x2xf32>
    %168 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %8 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %168 : tensor<f32>, tensor<1x576x2x2xf32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%169, %cst_22 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%146 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_69, %cst_70, %cst_70, %cst_69 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%170 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x96x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %171 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%145 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x96x2x2xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%172, %cst_21 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%150 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %174 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%173 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x576x2x2xf32>
    %175 = linalg.generic {indexing_maps = [#map3, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %8 : tensor<1x576x2x2xf32>, tensor<f32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map4, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %175 : tensor<f32>, tensor<1x576x2x2xf32>) outs(%149 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_108 = tensor.pad %176 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %177 = tensor.empty() : tensor<1x576x1x1xf32>
    %178 = linalg.fill ins(%cst_79 : f32) outs(%177 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %collapsed_109 = tensor.collapse_shape %cst_20 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %179 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_108, %collapsed_109 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%178 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_27, %cst_28, %cst_28, %cst_27 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%179 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x576x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %8 : tensor<1x576x1x1xf32>, tensor<f32>) outs(%177 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %181 : tensor<f32>, tensor<1x576x1x1xf32>) outs(%177 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x576x1x1xf32>
    %183 = tensor.empty() : tensor<1x160x1x1xf32>
    %184 = linalg.fill ins(%cst_79 : f32) outs(%183 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%182, %cst_19 : tensor<1x576x1x1xf32>, tensor<160x576x1x1xf32>) outs(%184 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %186 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %cst_17, %cst_18, %cst_18, %cst_17 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%185 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x160x1x1xf32>
    %187 = tensor.empty() : tensor<1x960x1x1xf32>
    %188 = linalg.fill ins(%cst_79 : f32) outs(%187 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_16 : tensor<1x160x1x1xf32>, tensor<960x160x1x1xf32>) outs(%188 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_14, %cst_15, %cst_15, %cst_14 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%189 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x960x1x1xf32>
    %191 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %8 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %191 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %padded_110 = tensor.pad %192 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x960x1x1xf32> to tensor<1x960x3x3xf32>
    %collapsed_111 = tensor.collapse_shape %cst_13 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %193 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_110, %collapsed_111 : tensor<1x960x3x3xf32>, tensor<960x3x3xf32>) outs(%188 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %194 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %cst_14, %cst_15, %cst_15, %cst_14 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%193 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x960x1x1xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %8 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %195 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %cst_12 : tensor<1x960x1x1xf32>, tensor<160x960x1x1xf32>) outs(%184 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_17, %cst_18, %cst_18, %cst_17 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%197 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x160x1x1xf32>
    %199 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %198 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%183 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x160x1x1xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %cst_11 : tensor<1x160x1x1xf32>, tensor<960x160x1x1xf32>) outs(%188 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %201 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %cst_14, %cst_15, %cst_15, %cst_14 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%200 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x960x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %8 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %202 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %padded_112 = tensor.pad %203 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x960x1x1xf32> to tensor<1x960x3x3xf32>
    %collapsed_113 = tensor.collapse_shape %cst_10 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %204 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_112, %collapsed_113 : tensor<1x960x3x3xf32>, tensor<960x3x3xf32>) outs(%188 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_14, %cst_15, %cst_15, %cst_14 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%204 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x960x1x1xf32>
    %206 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %8 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %207 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %206 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%207, %cst_9 : tensor<1x960x1x1xf32>, tensor<160x960x1x1xf32>) outs(%184 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %209 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %cst_17, %cst_18, %cst_18, %cst_17 : tensor<1x160x1x1xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%208 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x160x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map5, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %209 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%183 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x160x1x1xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%210, %cst_8 : tensor<1x160x1x1xf32>, tensor<960x160x1x1xf32>) outs(%188 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_14, %cst_15, %cst_15, %cst_14 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%211 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x960x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %8 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %213 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %padded_114 = tensor.pad %214 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_79 : f32
    } : tensor<1x960x1x1xf32> to tensor<1x960x3x3xf32>
    %collapsed_115 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %215 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_114, %collapsed_115 : tensor<1x960x3x3xf32>, tensor<960x3x3xf32>) outs(%188 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_14, %cst_15, %cst_15, %cst_14 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%215 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x960x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %8 : tensor<1x960x1x1xf32>, tensor<f32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %218 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %217 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%187 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x960x1x1xf32>
    %219 = tensor.empty() : tensor<1x320x1x1xf32>
    %220 = linalg.fill ins(%cst_79 : f32) outs(%219 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_6 : tensor<1x960x1x1xf32>, tensor<320x960x1x1xf32>) outs(%220 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_4, %cst_5, %cst_5, %cst_4 : tensor<1x320x1x1xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%221 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x320x1x1xf32>
    %223 = tensor.empty() : tensor<1x1280x1x1xf32>
    %224 = linalg.fill ins(%cst_79 : f32) outs(%223 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%222, %cst_3 : tensor<1x320x1x1xf32>, tensor<1280x320x1x1xf32>) outs(%224 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %226 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_1, %cst_2, %cst_2, %cst_1 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%225 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %in_118: f32, %in_119: f32, %in_120: f32, %out: f32):
      %237 = arith.truncf %cst_80 : f64 to f32
      %238 = arith.addf %in_120, %237 : f32
      %239 = math.rsqrt %238 : f32
      %240 = arith.subf %in, %in_119 : f32
      %241 = arith.mulf %240, %239 : f32
      %242 = arith.mulf %241, %in_117 : f32
      %243 = arith.addf %242, %in_118 : f32
      linalg.yield %243 : f32
    } -> tensor<1x1280x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %8 : tensor<1x1280x1x1xf32>, tensor<f32>) outs(%223 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ugt, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x1280x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %227 : tensor<f32>, tensor<1x1280x1x1xf32>) outs(%223 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.cmpf ult, %in, %in_117 : f32
      %238 = arith.select %237, %in, %in_117 : f32
      linalg.yield %238 : f32
    } -> tensor<1x1280x1x1xf32>
    %229 = tensor.empty() : tensor<1x1xf32>
    %230 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%228, %229 : tensor<1x1280x1x1xf32>, tensor<1x1xf32>) outs(%224 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %collapsed_116 = tensor.collapse_shape %230 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %231 = tensor.empty() : tensor<1280x1000xf32>
    %232 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1280xf32>) outs(%231 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %233 = tensor.empty() : tensor<1x1000xf32>
    %234 = linalg.fill ins(%cst_79 : f32) outs(%233 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %235 = linalg.matmul ins(%collapsed_116, %232 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%234 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %236 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%235, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%233 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_117: f32, %out: f32):
      %237 = arith.addf %in, %in_117 : f32
      linalg.yield %237 : f32
    } -> tensor<1x1000xf32>
    return %236 : tensor<1x1000xf32>
  }
}
