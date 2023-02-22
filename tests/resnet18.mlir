#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: tensor<1x3x64x64xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<1.000000e+00> : tensor<1000xf32>
    %cst_0 = arith.constant dense<1.000000e+00> : tensor<1000x512xf32>
    %cst_1 = arith.constant dense<1.000000e+00> : tensor<512x256x1x1xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<512x512x3x3xf32>
    %cst_3 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_5 = arith.constant dense<1.000000e+00> : tensor<512x256x3x3xf32>
    %cst_6 = arith.constant dense<1.000000e+00> : tensor<256x128x1x1xf32>
    %cst_7 = arith.constant dense<1.000000e+00> : tensor<256x256x3x3xf32>
    %cst_8 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_10 = arith.constant dense<1.000000e+00> : tensor<256x128x3x3xf32>
    %cst_11 = arith.constant dense<1.000000e+00> : tensor<128x64x1x1xf32>
    %cst_12 = arith.constant dense<1.000000e+00> : tensor<128x128x3x3xf32>
    %cst_13 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_15 = arith.constant dense<1.000000e+00> : tensor<128x64x3x3xf32>
    %cst_16 = arith.constant dense<1.000000e+00> : tensor<64x64x3x3xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_19 = arith.constant dense<1.000000e+00> : tensor<64x3x7x7xf32>
    %cst_20 = arith.constant 0.000000e+00 : f32
    %cst_21 = arith.constant -3.40282347E+38 : f32
    %cst_22 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_23 = arith.constant 4.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x3x64x64xf32> to tensor<1x3x70x70xf32>
    %0 = tensor.empty() : tensor<1x64x32x32xf32>
    %1 = linalg.fill ins(%cst_20 : f32) outs(%0 : tensor<1x64x32x32xf32>) -> tensor<1x64x32x32xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_19 : tensor<1x3x70x70xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x32x32xf32>) -> tensor<1x64x32x32xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_17, %cst_17, %cst_18, %cst_17 : tensor<1x64x32x32xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x32x32xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x32x32xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x32x32xf32>) outs(%0 : tensor<1x64x32x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x32x32xf32>
    %padded_24 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x64x32x32xf32> to tensor<1x64x34x34xf32>
    %6 = tensor.empty() : tensor<1x64x16x16xf32>
    %7 = linalg.fill ins(%cst_21 : f32) outs(%6 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_24, %8 : tensor<1x64x34x34xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %padded_25 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %10 = linalg.fill ins(%cst_20 : f32) outs(%6 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %cst_16 : tensor<1x64x18x18xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_17, %cst_17, %cst_18, %cst_17 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x16x16xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x16x16xf32>) outs(%6 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_26 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %cst_16 : tensor<1x64x18x18xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_17, %cst_17, %cst_18, %cst_17 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x16x16xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %9 : tensor<1x64x16x16xf32>, tensor<1x64x16x16xf32>) outs(%6 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x64x16x16xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x64x16x16xf32>) outs(%6 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_27 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %cst_16 : tensor<1x64x18x18xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_17, %cst_17, %cst_18, %cst_17 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%18 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x16x16xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x16x16xf32>) outs(%6 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_28 = tensor.pad %20 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %cst_16 : tensor<1x64x18x18xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_17, %cst_17, %cst_18, %cst_17 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%21 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x16x16xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %17 : tensor<1x64x16x16xf32>, tensor<1x64x16x16xf32>) outs(%6 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x64x16x16xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x16x16xf32>) outs(%6 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_29 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %25 = tensor.empty() : tensor<1x128x8x8xf32>
    %26 = linalg.fill ins(%cst_20 : f32) outs(%25 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_29, %cst_15 : tensor<1x64x18x18xf32>, tensor<128x64x3x3xf32>) outs(%26 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_13, %cst_13, %cst_14, %cst_13 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%27 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x8x8xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x128x8x8xf32>) outs(%25 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_30 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_30, %cst_12 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %31 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %cst_13, %cst_13, %cst_14, %cst_13 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%30 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x8x8xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%24, %cst_11 : tensor<1x64x16x16xf32>, tensor<128x64x1x1xf32>) outs(%26 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_13, %cst_13, %cst_14, %cst_13 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%32 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %33 : tensor<1x128x8x8xf32>, tensor<1x128x8x8xf32>) outs(%25 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x128x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x128x8x8xf32>) outs(%25 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_31 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_31, %cst_12 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_13, %cst_13, %cst_14, %cst_13 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x8x8xf32>) outs(%25 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_32 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %cst_12 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_13, %cst_13, %cst_14, %cst_13 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x8x8xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %35 : tensor<1x128x8x8xf32>, tensor<1x128x8x8xf32>) outs(%25 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x128x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x128x8x8xf32>) outs(%25 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_33 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %43 = tensor.empty() : tensor<1x256x4x4xf32>
    %44 = linalg.fill ins(%cst_20 : f32) outs(%43 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_33, %cst_10 : tensor<1x128x10x10xf32>, tensor<256x128x3x3xf32>) outs(%44 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_8, %cst_8, %cst_9, %cst_8 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%45 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x4x4xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x256x4x4xf32>) outs(%43 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_34 = tensor.pad %47 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %cst_7 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_8, %cst_8, %cst_9, %cst_8 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%48 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x4x4xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%42, %cst_6 : tensor<1x128x8x8xf32>, tensor<256x128x1x1xf32>) outs(%44 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_8, %cst_8, %cst_9, %cst_8 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%50 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x4x4xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %51 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%43 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x256x4x4xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x256x4x4xf32>) outs(%43 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_35 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_35, %cst_7 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %cst_8, %cst_8, %cst_9, %cst_8 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%54 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x4x4xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x256x4x4xf32>) outs(%43 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_36 = tensor.pad %56 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_36, %cst_7 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_8, %cst_8, %cst_9, %cst_8 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%57 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x4x4xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %53 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%43 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x256x4x4xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x256x4x4xf32>) outs(%43 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_37 = tensor.pad %60 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %61 = tensor.empty() : tensor<1x512x2x2xf32>
    %62 = linalg.fill ins(%cst_20 : f32) outs(%61 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_37, %cst_5 : tensor<1x256x6x6xf32>, tensor<512x256x3x3xf32>) outs(%62 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_3, %cst_3, %cst_4, %cst_3 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%63 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x2x2xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x512x2x2xf32>) outs(%61 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_38 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_38, %cst_2 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_3, %cst_3, %cst_4, %cst_3 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%66 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x2x2xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%60, %cst_1 : tensor<1x256x4x4xf32>, tensor<512x256x1x1xf32>) outs(%62 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_3, %cst_3, %cst_4, %cst_3 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x2x2xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %69 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%61 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x512x2x2xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x512x2x2xf32>) outs(%61 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_39 = tensor.pad %71 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_39, %cst_2 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_3, %cst_3, %cst_4, %cst_3 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%72 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x2x2xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x512x2x2xf32>) outs(%61 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_40 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_40, %cst_2 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_3, %cst_3, %cst_4, %cst_3 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%75 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %in_42: f32, %in_43: f32, %in_44: f32, %out: f32):
      %90 = arith.truncf %cst_22 : f64 to f32
      %91 = arith.addf %in_44, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_43 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_41 : f32
      %96 = arith.addf %95, %in_42 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x2x2xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %71 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%61 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x512x2x2xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x512x2x2xf32>) outs(%61 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_20 : f32
      %91 = arith.select %90, %in, %cst_20 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x2x2xf32>
    %79 = tensor.empty() : tensor<1x512x1x1xf32>
    %80 = linalg.fill ins(%cst_20 : f32) outs(%79 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %81 = tensor.empty() : tensor<2x2xf32>
    %82 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %81 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%80 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x512x1x1xf32>) outs(%79 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.divf %in, %cst_23 : f32
      linalg.yield %90 : f32
    } -> tensor<1x512x1x1xf32>
    %collapsed = tensor.collapse_shape %83 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %84 = tensor.empty() : tensor<512x1000xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x512xf32>) outs(%84 : tensor<512x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1000xf32>
    %86 = tensor.empty() : tensor<1x1000xf32>
    %87 = linalg.fill ins(%cst_20 : f32) outs(%86 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %88 = linalg.matmul ins(%collapsed, %85 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%87 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %89 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%88, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%86 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_41: f32, %out: f32):
      %90 = arith.addf %in, %in_41 : f32
      linalg.yield %90 : f32
    } -> tensor<1x1000xf32>
    return %89 : tensor<1x1000xf32>
  }
}
