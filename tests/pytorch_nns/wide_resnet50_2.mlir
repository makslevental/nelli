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
    %cst = arith.constant dense<-0.008397e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<-0.022167e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.006790e+00> : tensor<2048x1024x1x1xf32>
    %cst_2 = arith.constant dense<0.009763e+00> : tensor<1024x1024x3x3xf32>
    %cst_3 = arith.constant dense<0.014368e+00> : tensor<1024x2048x1x1xf32>
    %cst_4 = arith.constant dense<-0.012846e+00> : tensor<2048x1024x1x1xf32>
    %cst_5 = arith.constant dense<0.006901e+00> : tensor<1024x1024x3x3xf32>
    %cst_6 = arith.constant dense<0.002976e+00> : tensor<1024x2048x1x1xf32>
    %cst_7 = arith.constant dense<0.001106e+00> : tensor<2048x1024x1x1xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2048xf32>
    %cst_10 = arith.constant dense<-0.002074e+00> : tensor<2048x1024x1x1xf32>
    %cst_11 = arith.constant dense<-0.011455e+00> : tensor<1024x1024x3x3xf32>
    %cst_12 = arith.constant dense<-0.005723e+00> : tensor<1024x1024x1x1xf32>
    %cst_13 = arith.constant dense<0.002785e+00> : tensor<1024x512x1x1xf32>
    %cst_14 = arith.constant dense<-0.003218e+00> : tensor<512x512x3x3xf32>
    %cst_15 = arith.constant dense<0.000839e+00> : tensor<512x1024x1x1xf32>
    %cst_16 = arith.constant dense<0.014977e+00> : tensor<1024x512x1x1xf32>
    %cst_17 = arith.constant dense<-0.005984e+00> : tensor<512x512x3x3xf32>
    %cst_18 = arith.constant dense<-0.002796e+00> : tensor<512x1024x1x1xf32>
    %cst_19 = arith.constant dense<0.012507e+00> : tensor<1024x512x1x1xf32>
    %cst_20 = arith.constant dense<-0.002025e+00> : tensor<512x512x3x3xf32>
    %cst_21 = arith.constant dense<0.003821e+00> : tensor<512x1024x1x1xf32>
    %cst_22 = arith.constant dense<0.016147e+00> : tensor<1024x512x1x1xf32>
    %cst_23 = arith.constant dense<-0.000313e+00> : tensor<512x512x3x3xf32>
    %cst_24 = arith.constant dense<0.007436e+00> : tensor<512x1024x1x1xf32>
    %cst_25 = arith.constant dense<-0.014277e+00> : tensor<1024x512x1x1xf32>
    %cst_26 = arith.constant dense<-0.011843e+00> : tensor<512x512x3x3xf32>
    %cst_27 = arith.constant dense<0.000935e+00> : tensor<512x1024x1x1xf32>
    %cst_28 = arith.constant dense<-0.017859e+00> : tensor<1024x512x1x1xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_30 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_31 = arith.constant dense<0.015913e+00> : tensor<1024x512x1x1xf32>
    %cst_32 = arith.constant dense<-0.006836e+00> : tensor<512x512x3x3xf32>
    %cst_33 = arith.constant dense<0.021833e+00> : tensor<512x512x1x1xf32>
    %cst_34 = arith.constant dense<-0.000278e+00> : tensor<512x256x1x1xf32>
    %cst_35 = arith.constant dense<0.026201e+00> : tensor<256x256x3x3xf32>
    %cst_36 = arith.constant dense<-0.006915e+00> : tensor<256x512x1x1xf32>
    %cst_37 = arith.constant dense<-0.008566e+00> : tensor<512x256x1x1xf32>
    %cst_38 = arith.constant dense<0.003347e+00> : tensor<256x256x3x3xf32>
    %cst_39 = arith.constant dense<0.000315e+00> : tensor<256x512x1x1xf32>
    %cst_40 = arith.constant dense<0.008202e+00> : tensor<512x256x1x1xf32>
    %cst_41 = arith.constant dense<0.014379e+00> : tensor<256x256x3x3xf32>
    %cst_42 = arith.constant dense<0.003017e+00> : tensor<256x512x1x1xf32>
    %cst_43 = arith.constant dense<-0.019892e+00> : tensor<512x256x1x1xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_45 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_46 = arith.constant dense<-0.011680e+00> : tensor<512x256x1x1xf32>
    %cst_47 = arith.constant dense<-0.001588e+00> : tensor<256x256x3x3xf32>
    %cst_48 = arith.constant dense<0.005001e+00> : tensor<256x256x1x1xf32>
    %cst_49 = arith.constant dense<-0.003049e+00> : tensor<256x128x1x1xf32>
    %cst_50 = arith.constant dense<-0.010282e+00> : tensor<128x128x3x3xf32>
    %cst_51 = arith.constant dense<-0.014762e+00> : tensor<128x256x1x1xf32>
    %cst_52 = arith.constant dense<-0.007356e+00> : tensor<256x128x1x1xf32>
    %cst_53 = arith.constant dense<0.000122e+00> : tensor<128x128x3x3xf32>
    %cst_54 = arith.constant dense<-0.009849e+00> : tensor<128x256x1x1xf32>
    %cst_55 = arith.constant dense<0.018018e+00> : tensor<256x64x1x1xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_57 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_58 = arith.constant dense<-0.014801e+00> : tensor<256x128x1x1xf32>
    %cst_59 = arith.constant dense<-0.013179e+00> : tensor<128x128x3x3xf32>
    %cst_60 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_61 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_62 = arith.constant dense<0.003764e+00> : tensor<128x64x1x1xf32>
    %cst_63 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_64 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_65 = arith.constant dense<-0.001497e+00> : tensor<64x3x7x7xf32>
    %cst_66 = arith.constant 0.000000e+00 : f32
    %cst_67 = arith.constant -3.40282347E+38 : f32
    %cst_68 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_66 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_65 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_69 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_67 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_67 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_69, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %10 = tensor.empty() : tensor<1x128x8x8xf32>
    %11 = linalg.fill ins(%cst_66 : f32) outs(%10 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_62 : tensor<1x64x8x8xf32>, tensor<128x64x1x1xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_70 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_70, %cst_59 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%15 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x128x8x8xf32>
    %18 = tensor.empty() : tensor<1x256x8x8xf32>
    %19 = linalg.fill ins(%cst_66 : f32) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%17, %cst_58 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%20 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_55 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%22 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %23 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x256x8x8xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x8x8xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%25, %cst_54 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%26 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_71 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_71, %cst_53 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x128x8x8xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%31, %cst_52 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%32 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %25 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x256x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x8x8xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%35, %cst_51 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_72 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_72, %cst_50 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_61, %cst_60, %cst_60, %cst_61 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x128x8x8xf32>) outs(%10 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x128x8x8xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_49 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%42 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %35 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x256x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x8x8xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_48 : tensor<1x256x8x8xf32>, tensor<256x256x1x1xf32>) outs(%19 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%46 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x8x8xf32>) outs(%18 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x8x8xf32>
    %padded_73 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x8x8xf32> to tensor<1x256x10x10xf32>
    %49 = tensor.empty() : tensor<1x256x4x4xf32>
    %50 = linalg.fill ins(%cst_66 : f32) outs(%49 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_73, %cst_47 : tensor<1x256x10x10xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%51 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %54 = tensor.empty() : tensor<1x512x4x4xf32>
    %55 = linalg.fill ins(%cst_66 : f32) outs(%54 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%53, %cst_46 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %57 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%56 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%45, %cst_43 : tensor<1x256x8x8xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %59 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%58 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %59 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x512x4x4xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x4x4xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%61, %cst_42 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%62 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_74 = tensor.pad %64 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_74, %cst_41 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%65 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%67, %cst_40 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %61 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x512x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x4x4xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%71, %cst_39 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%72 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_75 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_75, %cst_38 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%75 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_37 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%78 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %71 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x512x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x4x4xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%81, %cst_36 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%82 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_76 = tensor.pad %84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_76, %cst_35 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%85 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x256x4x4xf32>) outs(%49 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x256x4x4xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_34 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%88 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %81 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x512x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x4x4xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %cst_33 : tensor<1x512x4x4xf32>, tensor<512x512x1x1xf32>) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%92 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x512x4x4xf32>) outs(%54 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x4x4xf32>
    %padded_77 = tensor.pad %94 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x4x4xf32> to tensor<1x512x6x6xf32>
    %95 = tensor.empty() : tensor<1x512x2x2xf32>
    %96 = linalg.fill ins(%cst_66 : f32) outs(%95 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_77, %cst_32 : tensor<1x512x6x6xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%97 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %100 = tensor.empty() : tensor<1x1024x2x2xf32>
    %101 = linalg.fill ins(%cst_66 : f32) outs(%100 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_31 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%102 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%91, %cst_28 : tensor<1x512x4x4xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%104 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %105 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1024x2x2xf32>
    %107 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %cst_27 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %109 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%108 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_78 = tensor.pad %110 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_78, %cst_26 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%113, %cst_25 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%114 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %107 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1024x2x2xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_24 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%118 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_79 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_79, %cst_23 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%121 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%123, %cst_22 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%124 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %117 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1024x2x2xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_21 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%128 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_80 = tensor.pad %130 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %cst_20 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%131 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_19 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%134 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %127 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1024x2x2xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_18 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%138 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_81 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_81, %cst_17 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%141 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_16 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%144 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %137 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1024x2x2xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%147, %cst_15 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%148 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_82 = tensor.pad %150 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_82, %cst_14 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%151 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x512x2x2xf32>) outs(%95 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x512x2x2xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_13 : tensor<1x512x2x2xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%154 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %147 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1024x2x2xf32>
    %157 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %158 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%157, %cst_12 : tensor<1x1024x2x2xf32>, tensor<1024x1024x1x1xf32>) outs(%101 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %159 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%158 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x1024x2x2xf32>) outs(%100 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x2x2xf32>
    %padded_83 = tensor.pad %160 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x1024x2x2xf32> to tensor<1x1024x4x4xf32>
    %161 = tensor.empty() : tensor<1x1024x1x1xf32>
    %162 = linalg.fill ins(%cst_66 : f32) outs(%161 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %163 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_83, %cst_11 : tensor<1x1024x4x4xf32>, tensor<1024x1024x3x3xf32>) outs(%162 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%163 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x1024x1x1xf32>) outs(%161 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x1x1xf32>
    %166 = tensor.empty() : tensor<1x2048x1x1xf32>
    %167 = linalg.fill ins(%cst_66 : f32) outs(%166 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_10 : tensor<1x1024x1x1xf32>, tensor<2048x1024x1x1xf32>) outs(%167 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%168 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%157, %cst_7 : tensor<1x1024x2x2xf32>, tensor<2048x1024x1x1xf32>) outs(%167 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%170 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %171 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%166 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x2048x1x1xf32>
    %173 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x2048x1x1xf32>) outs(%166 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x2048x1x1xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%173, %cst_6 : tensor<1x2048x1x1xf32>, tensor<1024x2048x1x1xf32>) outs(%162 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%174 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x1024x1x1xf32>) outs(%161 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x1x1xf32>
    %padded_84 = tensor.pad %176 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x3x3xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_84, %cst_5 : tensor<1x1024x3x3xf32>, tensor<1024x1024x3x3xf32>) outs(%162 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%177 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x1024x1x1xf32>) outs(%161 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x1x1xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%179, %cst_4 : tensor<1x1024x1x1xf32>, tensor<2048x1024x1x1xf32>) outs(%167 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %181 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%180 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %173 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%166 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x2048x1x1xf32>
    %183 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x2048x1x1xf32>) outs(%166 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x2048x1x1xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_3 : tensor<1x2048x1x1xf32>, tensor<1024x2048x1x1xf32>) outs(%162 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%184 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x1024x1x1xf32>) outs(%161 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x1x1xf32>
    %padded_85 = tensor.pad %186 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x3x3xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_85, %cst_2 : tensor<1x1024x3x3xf32>, tensor<1024x1024x3x3xf32>) outs(%162 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%187 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x1024x1x1xf32>) outs(%161 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x1024x1x1xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%189, %cst_1 : tensor<1x1024x1x1xf32>, tensor<2048x1024x1x1xf32>) outs(%167 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %191 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%190 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %202 = arith.truncf %cst_68 : f64 to f32
      %203 = arith.addf %in_89, %202 : f32
      %204 = math.rsqrt %203 : f32
      %205 = arith.subf %in, %in_88 : f32
      %206 = arith.mulf %205, %204 : f32
      %207 = arith.mulf %206, %in_86 : f32
      %208 = arith.addf %207, %in_87 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %183 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%166 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x2048x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x2048x1x1xf32>) outs(%166 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %202 = arith.cmpf ugt, %in, %cst_66 : f32
      %203 = arith.select %202, %in, %cst_66 : f32
      linalg.yield %203 : f32
    } -> tensor<1x2048x1x1xf32>
    %194 = tensor.empty() : tensor<1x1xf32>
    %195 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %194 : tensor<1x2048x1x1xf32>, tensor<1x1xf32>) outs(%167 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %195 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %196 = tensor.empty() : tensor<2048x1000xf32>
    %197 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%196 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %198 = tensor.empty() : tensor<1x1000xf32>
    %199 = linalg.fill ins(%cst_66 : f32) outs(%198 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %200 = linalg.matmul ins(%collapsed, %197 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%199 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %201 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%200, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%198 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %202 = arith.addf %in, %in_86 : f32
      linalg.yield %202 : f32
    } -> tensor<1x1000xf32>
    return %201 : tensor<1x1000xf32>
  }
}
