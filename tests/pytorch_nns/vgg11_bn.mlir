#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "VGG"} {
    func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.004424e+00> : tensor<1000x4096xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.001804e+00> : tensor<4096x4096xf32>
    %cst_2 = arith.constant dense<0.001595e+00> : tensor<4096x25088xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<0.011334e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<0.017243e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<0.005927e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_8 = arith.constant dense<0.008142e+00> : tensor<512x256x3x3xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_10 = arith.constant dense<0.014164e+00> : tensor<256x256x3x3xf32>
    %cst_11 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_12 = arith.constant dense<0.003668e+00> : tensor<256x128x3x3xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_15 = arith.constant dense<0.013586e+00> : tensor<128x64x3x3xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_18 = arith.constant dense<0.007845e+00> : tensor<64x3x3x3xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_20 = arith.constant 0.000000e+00 : f32
    %cst_21 = arith.constant -3.40282347E+38 : f32
    %cst_22 = arith.constant 1.000000e-05 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x64x224x224xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19 : tensor<64xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_18 : tensor<1x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_17, %cst_19, %cst_19, %cst_17 : tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x64x224x224xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x64x224x224xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.fill ins(%cst_21 : f32) outs(%6 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %8 = tensor.empty() : tensor<2x2xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%5, %8 : tensor<1x64x224x224xf32>, tensor<2x2xf32>) outs(%7 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %padded_23 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %10 = tensor.empty() : tensor<1x128x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_16 : tensor<128xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %cst_15 : tensor<1x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%11 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_14, %cst_16, %cst_16, %cst_14 : tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%12 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x128x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x128x112x112xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x128x112x112xf32>
    %15 = tensor.empty() : tensor<1x128x56x56xf32>
    %16 = linalg.fill ins(%cst_21 : f32) outs(%15 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %17 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%14, %8 : tensor<1x128x112x112xf32>, tensor<2x2xf32>) outs(%16 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %padded_24 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %18 = tensor.empty() : tensor<1x256x56x56xf32>
    %19 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<256xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_24, %cst_12 : tensor<1x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%20 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x256x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_25 = tensor.pad %22 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %cst_10 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %24 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%23 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x256x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x256x56x56xf32>
    %26 = tensor.empty() : tensor<1x256x28x28xf32>
    %27 = linalg.fill ins(%cst_21 : f32) outs(%26 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %28 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%25, %8 : tensor<1x256x56x56xf32>, tensor<2x2xf32>) outs(%27 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %padded_26 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %29 = tensor.empty() : tensor<1x512x28x28xf32>
    %30 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<512xf32>) outs(%29 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %cst_8 : tensor<1x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%30 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%31 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x512x28x28xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x512x28x28xf32>) outs(%29 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_27 = tensor.pad %33 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %cst_6 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%30 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %35 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%34 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x512x28x28xf32>
    %36 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x512x28x28xf32>) outs(%29 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x512x28x28xf32>
    %37 = tensor.empty() : tensor<1x512x14x14xf32>
    %38 = linalg.fill ins(%cst_21 : f32) outs(%37 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %39 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%36, %8 : tensor<1x512x28x28xf32>, tensor<2x2xf32>) outs(%38 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %padded_28 = tensor.pad %39 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %40 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<512xf32>) outs(%37 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %cst_5 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%40 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%41 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x512x14x14xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42 : tensor<1x512x14x14xf32>) outs(%37 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_29 = tensor.pad %43 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_20 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_29, %cst_4 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%40 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %45 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%44 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_30: f32, %in_31: f32, %in_32: f32, %in_33: f32, %out: f32):
      %71 = arith.truncf %cst_22 : f64 to f32
      %72 = arith.addf %in_33, %71 : f32
      %73 = math.rsqrt %72 : f32
      %74 = arith.subf %in, %in_32 : f32
      %75 = arith.mulf %74, %73 : f32
      %76 = arith.mulf %75, %in_30 : f32
      %77 = arith.addf %76, %in_31 : f32
      linalg.yield %77 : f32
    } -> tensor<1x512x14x14xf32>
    %46 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45 : tensor<1x512x14x14xf32>) outs(%37 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x512x14x14xf32>
    %47 = tensor.empty() : tensor<1x512x7x7xf32>
    %48 = linalg.fill ins(%cst_21 : f32) outs(%47 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %49 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%46, %8 : tensor<1x512x14x14xf32>, tensor<2x2xf32>) outs(%48 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %50 = linalg.fill ins(%cst_20 : f32) outs(%47 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %51 = tensor.empty() : tensor<1x1xf32>
    %52 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %51 : tensor<1x512x7x7xf32>, tensor<1x1xf32>) outs(%50 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %52 [[0], [1, 2, 3]] : tensor<1x512x7x7xf32> into tensor<1x25088xf32>
    %53 = tensor.empty() : tensor<25088x4096xf32>
    %54 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x25088xf32>) outs(%53 : tensor<25088x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<25088x4096xf32>
    %55 = tensor.empty() : tensor<1x4096xf32>
    %56 = linalg.fill ins(%cst_20 : f32) outs(%55 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %57 = linalg.matmul ins(%collapsed, %54 : tensor<1x25088xf32>, tensor<25088x4096xf32>) outs(%56 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %58 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%57, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%55 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %71 = arith.addf %in, %in_30 : f32
      linalg.yield %71 : f32
    } -> tensor<1x4096xf32>
    %59 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%58 : tensor<1x4096xf32>) outs(%55 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x4096xf32>
    %60 = tensor.empty() : tensor<4096x4096xf32>
    %61 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<4096x4096xf32>) outs(%60 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %62 = linalg.matmul ins(%59, %61 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%56 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %63 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%62, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%55 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %71 = arith.addf %in, %in_30 : f32
      linalg.yield %71 : f32
    } -> tensor<1x4096xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%63 : tensor<1x4096xf32>) outs(%55 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %71 = arith.cmpf ugt, %in, %cst_20 : f32
      %72 = arith.select %71, %in, %cst_20 : f32
      linalg.yield %72 : f32
    } -> tensor<1x4096xf32>
    %65 = tensor.empty() : tensor<4096x1000xf32>
    %66 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x4096xf32>) outs(%65 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %67 = tensor.empty() : tensor<1x1000xf32>
    %68 = linalg.fill ins(%cst_20 : f32) outs(%67 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %69 = linalg.matmul ins(%64, %66 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%68 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %70 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%69, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%67 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_30: f32, %out: f32):
      %71 = arith.addf %in, %in_30 : f32
      linalg.yield %71 : f32
    } -> tensor<1x1000xf32>
    return %70 : tensor<1x1000xf32>
  }
}
