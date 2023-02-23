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
    %cst = arith.constant dense<-0.001434e+00> : tensor<1000x4096xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.008122e+00> : tensor<4096x4096xf32>
    %cst_2 = arith.constant dense<-0.002004e+00> : tensor<4096x25088xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<0.004053e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<0.000176e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<0.001362e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_8 = arith.constant dense<-0.006980e+00> : tensor<512x256x3x3xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_10 = arith.constant dense<0.004100e+00> : tensor<256x256x3x3xf32>
    %cst_11 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_12 = arith.constant dense<0.015606e+00> : tensor<256x128x3x3xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_14 = arith.constant dense<-0.022055e+00> : tensor<128x128x3x3xf32>
    %cst_15 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_16 = arith.constant dense<0.000916e+00> : tensor<128x64x3x3xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_18 = arith.constant dense<0.012996e+00> : tensor<64x64x3x3xf32>
    %cst_19 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_20 = arith.constant dense<0.012896e+00> : tensor<64x3x3x3xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_22 = arith.constant 0.000000e+00 : f32
    %cst_23 = arith.constant -3.40282347E+38 : f32
    %cst_24 = arith.constant 1.000000e-05 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x64x224x224xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21 : tensor<64xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_20 : tensor<1x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_19, %cst_21, %cst_21, %cst_19 : tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x64x224x224xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x64x224x224xf32>
    %padded_25 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x64x224x224xf32> to tensor<1x64x226x226xf32>
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %cst_18 : tensor<1x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    cf.assert %3, "training is not supported for now"
    %7 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %cst_19, %cst_21, %cst_21, %cst_19 : tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%6 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x64x224x224xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x64x224x224xf32>
    %9 = tensor.empty() : tensor<1x64x112x112xf32>
    %10 = linalg.fill ins(%cst_23 : f32) outs(%9 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %11 = tensor.empty() : tensor<2x2xf32>
    %12 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%8, %11 : tensor<1x64x224x224xf32>, tensor<2x2xf32>) outs(%10 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %padded_26 = tensor.pad %12 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %13 = tensor.empty() : tensor<1x128x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_17 : tensor<128xf32>) outs(%13 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %cst_16 : tensor<1x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%14 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_15, %cst_17, %cst_17, %cst_15 : tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%15 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x128x112x112xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x128x112x112xf32>) outs(%13 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x128x112x112xf32>
    %padded_27 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x128x112x112xf32> to tensor<1x128x114x114xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %cst_14 : tensor<1x128x114x114xf32>, tensor<128x128x3x3xf32>) outs(%14 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_15, %cst_17, %cst_17, %cst_15 : tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%18 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x128x112x112xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x128x112x112xf32>) outs(%13 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x128x112x112xf32>
    %21 = tensor.empty() : tensor<1x128x56x56xf32>
    %22 = linalg.fill ins(%cst_23 : f32) outs(%21 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %23 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%20, %11 : tensor<1x128x112x112xf32>, tensor<2x2xf32>) outs(%22 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %padded_28 = tensor.pad %23 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %24 = tensor.empty() : tensor<1x256x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<256xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %cst_12 : tensor<1x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%25 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%26 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x256x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x256x56x56xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_29 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_29, %cst_10 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%25 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%29 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x256x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x256x56x56xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x256x56x56xf32>
    %32 = tensor.empty() : tensor<1x256x28x28xf32>
    %33 = linalg.fill ins(%cst_23 : f32) outs(%32 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %34 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%31, %11 : tensor<1x256x56x56xf32>, tensor<2x2xf32>) outs(%33 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %padded_30 = tensor.pad %34 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %35 = tensor.empty() : tensor<1x512x28x28xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<512xf32>) outs(%35 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %37 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_30, %cst_8 : tensor<1x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%36 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %38 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%37 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x512x28x28xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<1x512x28x28xf32>) outs(%35 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_31 = tensor.pad %39 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_31, %cst_6 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%36 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%40 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x512x28x28xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x512x28x28xf32>) outs(%35 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x512x28x28xf32>
    %43 = tensor.empty() : tensor<1x512x14x14xf32>
    %44 = linalg.fill ins(%cst_23 : f32) outs(%43 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %45 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%42, %11 : tensor<1x512x28x28xf32>, tensor<2x2xf32>) outs(%44 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %padded_32 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<512xf32>) outs(%43 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %cst_5 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%46 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%47 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x512x14x14xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x512x14x14xf32>) outs(%43 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_33 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_22 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_33, %cst_4 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%46 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_7, %cst_9, %cst_9, %cst_7 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%50 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_34: f32, %in_35: f32, %in_36: f32, %in_37: f32, %out: f32):
      %77 = arith.truncf %cst_24 : f64 to f32
      %78 = arith.addf %in_37, %77 : f32
      %79 = math.rsqrt %78 : f32
      %80 = arith.subf %in, %in_36 : f32
      %81 = arith.mulf %80, %79 : f32
      %82 = arith.mulf %81, %in_34 : f32
      %83 = arith.addf %82, %in_35 : f32
      linalg.yield %83 : f32
    } -> tensor<1x512x14x14xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x512x14x14xf32>) outs(%43 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x512x14x14xf32>
    %53 = tensor.empty() : tensor<1x512x7x7xf32>
    %54 = linalg.fill ins(%cst_23 : f32) outs(%53 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %55 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%52, %11 : tensor<1x512x14x14xf32>, tensor<2x2xf32>) outs(%54 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %56 = linalg.fill ins(%cst_22 : f32) outs(%53 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %57 = tensor.empty() : tensor<1x1xf32>
    %58 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%55, %57 : tensor<1x512x7x7xf32>, tensor<1x1xf32>) outs(%56 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %58 [[0], [1, 2, 3]] : tensor<1x512x7x7xf32> into tensor<1x25088xf32>
    %59 = tensor.empty() : tensor<25088x4096xf32>
    %60 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x25088xf32>) outs(%59 : tensor<25088x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<25088x4096xf32>
    %61 = tensor.empty() : tensor<1x4096xf32>
    %62 = linalg.fill ins(%cst_22 : f32) outs(%61 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %63 = linalg.matmul ins(%collapsed, %60 : tensor<1x25088xf32>, tensor<25088x4096xf32>) outs(%62 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%63, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%61 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %77 = arith.addf %in, %in_34 : f32
      linalg.yield %77 : f32
    } -> tensor<1x4096xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%64 : tensor<1x4096xf32>) outs(%61 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x4096xf32>
    %66 = tensor.empty() : tensor<4096x4096xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<4096x4096xf32>) outs(%66 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %68 = linalg.matmul ins(%65, %67 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%62 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %69 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%68, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%61 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %77 = arith.addf %in, %in_34 : f32
      linalg.yield %77 : f32
    } -> tensor<1x4096xf32>
    %70 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%69 : tensor<1x4096xf32>) outs(%61 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %77 = arith.cmpf ugt, %in, %cst_22 : f32
      %78 = arith.select %77, %in, %cst_22 : f32
      linalg.yield %78 : f32
    } -> tensor<1x4096xf32>
    %71 = tensor.empty() : tensor<4096x1000xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x4096xf32>) outs(%71 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %73 = tensor.empty() : tensor<1x1000xf32>
    %74 = linalg.fill ins(%cst_22 : f32) outs(%73 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %75 = linalg.matmul ins(%70, %72 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%74 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %76 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%75, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%73 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %77 = arith.addf %in, %in_34 : f32
      linalg.yield %77 : f32
    } -> tensor<1x1000xf32>
    return %76 : tensor<1x1000xf32>
  }
}
