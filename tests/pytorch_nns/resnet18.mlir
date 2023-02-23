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
    %cst = arith.constant dense<0.007046e+00> : tensor<1000x512xf32>
    %cst_0 = arith.constant dense<0.005192e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000974e+00> : tensor<512x512x3x3xf32>
    %cst_2 = arith.constant dense<-0.004719e+00> : tensor<512x512x3x3xf32>
    %cst_3 = arith.constant dense<0.001865e+00> : tensor<512x256x1x1xf32>
    %cst_4 = arith.constant dense<-0.008138e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_6 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_7 = arith.constant dense<0.008069e+00> : tensor<512x256x3x3xf32>
    %cst_8 = arith.constant dense<0.012785e+00> : tensor<256x256x3x3xf32>
    %cst_9 = arith.constant dense<-0.007922e+00> : tensor<256x256x3x3xf32>
    %cst_10 = arith.constant dense<0.006154e+00> : tensor<256x128x1x1xf32>
    %cst_11 = arith.constant dense<-0.004008e+00> : tensor<256x256x3x3xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_13 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_14 = arith.constant dense<-0.014835e+00> : tensor<256x128x3x3xf32>
    %cst_15 = arith.constant dense<-0.002543e+00> : tensor<128x128x3x3xf32>
    %cst_16 = arith.constant dense<-0.010307e+00> : tensor<128x128x3x3xf32>
    %cst_17 = arith.constant dense<0.004690e+00> : tensor<128x64x1x1xf32>
    %cst_18 = arith.constant dense<0.017556e+00> : tensor<128x128x3x3xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_20 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_21 = arith.constant dense<-0.000458e+00> : tensor<128x64x3x3xf32>
    %cst_22 = arith.constant dense<-0.011996e+00> : tensor<64x64x3x3xf32>
    %cst_23 = arith.constant dense<-0.011225e+00> : tensor<64x64x3x3xf32>
    %cst_24 = arith.constant dense<0.016818e+00> : tensor<64x64x3x3xf32>
    %cst_25 = arith.constant dense<0.004765e+00> : tensor<64x64x3x3xf32>
    %cst_26 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_27 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_28 = arith.constant dense<0.004909e+00> : tensor<64x3x7x7xf32>
    %cst_29 = arith.constant 0.000000e+00 : f32
    %cst_30 = arith.constant -3.40282347E+38 : f32
    %cst_31 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_29 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_28 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_32 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_30 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_30 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_32, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %padded_33 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %10 = linalg.fill ins(%cst_29 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_33, %cst_25 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x64x8x8xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_34 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %cst_24 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x64x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %9 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x8x8xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_35 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_35, %cst_23 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%18 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x64x8x8xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_36 = tensor.pad %20 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_36, %cst_22 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_27, %cst_26, %cst_26, %cst_27 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%21 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x64x8x8xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %17 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_37 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %25 = tensor.empty() : tensor<1x128x4x4xf32>
    %26 = linalg.fill ins(%cst_29 : f32) outs(%25 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_37, %cst_21 : tensor<1x64x10x10xf32>, tensor<128x64x3x3xf32>) outs(%26 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_20, %cst_19, %cst_19, %cst_20 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%27 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x128x4x4xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x128x4x4xf32>) outs(%25 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_38 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_38, %cst_18 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %31 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %cst_20, %cst_19, %cst_19, %cst_20 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%30 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x128x4x4xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%24, %cst_17 : tensor<1x64x8x8xf32>, tensor<128x64x1x1xf32>) outs(%26 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_20, %cst_19, %cst_19, %cst_20 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x128x4x4xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %33 : tensor<1x128x4x4xf32>, tensor<1x128x4x4xf32>) outs(%25 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x128x4x4xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x128x4x4xf32>) outs(%25 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_39 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_39, %cst_16 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_20, %cst_19, %cst_19, %cst_20 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x128x4x4xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x4x4xf32>) outs(%25 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_40 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_40, %cst_15 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_20, %cst_19, %cst_19, %cst_20 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x128x4x4xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %35 : tensor<1x128x4x4xf32>, tensor<1x128x4x4xf32>) outs(%25 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x128x4x4xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x128x4x4xf32>) outs(%25 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_41 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %43 = tensor.empty() : tensor<1x256x2x2xf32>
    %44 = linalg.fill ins(%cst_29 : f32) outs(%43 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_41, %cst_14 : tensor<1x128x6x6xf32>, tensor<256x128x3x3xf32>) outs(%44 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_13, %cst_12, %cst_12, %cst_13 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%45 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x256x2x2xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x256x2x2xf32>) outs(%43 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_42 = tensor.pad %47 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_42, %cst_11 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_13, %cst_12, %cst_12, %cst_13 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%48 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x256x2x2xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%42, %cst_10 : tensor<1x128x4x4xf32>, tensor<256x128x1x1xf32>) outs(%44 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_13, %cst_12, %cst_12, %cst_13 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%50 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x256x2x2xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %51 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%43 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x256x2x2xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x256x2x2xf32>) outs(%43 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_43 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_43, %cst_9 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %cst_13, %cst_12, %cst_12, %cst_13 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%54 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x256x2x2xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x256x2x2xf32>) outs(%43 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_44 = tensor.pad %56 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_44, %cst_8 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_13, %cst_12, %cst_12, %cst_13 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%57 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x256x2x2xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %53 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%43 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x256x2x2xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x256x2x2xf32>) outs(%43 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_45 = tensor.pad %60 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %61 = tensor.empty() : tensor<1x512x1x1xf32>
    %62 = linalg.fill ins(%cst_29 : f32) outs(%61 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_45, %cst_7 : tensor<1x256x4x4xf32>, tensor<512x256x3x3xf32>) outs(%62 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%63 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x512x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x512x1x1xf32>) outs(%61 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_46 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_46, %cst_4 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%66 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x512x1x1xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%60, %cst_3 : tensor<1x256x2x2xf32>, tensor<512x256x1x1xf32>) outs(%62 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x512x1x1xf32>
    %70 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %69 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%61 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x512x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x512x1x1xf32>) outs(%61 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_47 = tensor.pad %71 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_47, %cst_2 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%72 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x512x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x512x1x1xf32>) outs(%61 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_48 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_29 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_48, %cst_1 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%75 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %in_51: f32, %in_52: f32, %out: f32):
      %87 = arith.truncf %cst_31 : f64 to f32
      %88 = arith.addf %in_52, %87 : f32
      %89 = math.rsqrt %88 : f32
      %90 = arith.subf %in, %in_51 : f32
      %91 = arith.mulf %90, %89 : f32
      %92 = arith.mulf %91, %in_49 : f32
      %93 = arith.addf %92, %in_50 : f32
      linalg.yield %93 : f32
    } -> tensor<1x512x1x1xf32>
    %77 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %71 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%61 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x512x1x1xf32>
    %78 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x512x1x1xf32>) outs(%61 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %87 = arith.cmpf ugt, %in, %cst_29 : f32
      %88 = arith.select %87, %in, %cst_29 : f32
      linalg.yield %88 : f32
    } -> tensor<1x512x1x1xf32>
    %79 = tensor.empty() : tensor<1x1xf32>
    %80 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %79 : tensor<1x512x1x1xf32>, tensor<1x1xf32>) outs(%62 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %collapsed = tensor.collapse_shape %80 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %81 = tensor.empty() : tensor<512x1000xf32>
    %82 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x512xf32>) outs(%81 : tensor<512x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1000xf32>
    %83 = tensor.empty() : tensor<1x1000xf32>
    %84 = linalg.fill ins(%cst_29 : f32) outs(%83 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %85 = linalg.matmul ins(%collapsed, %82 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%84 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %86 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%85, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%83 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_49: f32, %out: f32):
      %87 = arith.addf %in, %in_49 : f32
      linalg.yield %87 : f32
    } -> tensor<1x1000xf32>
    return %86 : tensor<1x1000xf32>
  }
}
