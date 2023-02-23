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
    %cst = arith.constant dense<0.005456e+00> : tensor<1000x4096xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.004059e+00> : tensor<4096x4096xf32>
    %cst_2 = arith.constant dense<0.002405e+00> : tensor<4096x25088xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<-0.011056e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<-0.018935e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<0.002156e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<0.004496e+00> : tensor<512x512x3x3xf32>
    %cst_8 = arith.constant dense<0.013082e+00> : tensor<512x512x3x3xf32>
    %cst_9 = arith.constant dense<-0.011963e+00> : tensor<512x512x3x3xf32>
    %cst_10 = arith.constant dense<0.027310e+00> : tensor<512x512x3x3xf32>
    %cst_11 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_12 = arith.constant dense<0.003361e+00> : tensor<512x256x3x3xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_14 = arith.constant dense<-0.006002e+00> : tensor<256x256x3x3xf32>
    %cst_15 = arith.constant dense<-0.003525e+00> : tensor<256x256x3x3xf32>
    %cst_16 = arith.constant dense<0.008241e+00> : tensor<256x256x3x3xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_18 = arith.constant dense<-0.010327e+00> : tensor<256x128x3x3xf32>
    %cst_19 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_20 = arith.constant dense<0.000969e+00> : tensor<128x128x3x3xf32>
    %cst_21 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_22 = arith.constant dense<0.020355e+00> : tensor<128x64x3x3xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_24 = arith.constant dense<0.007795e+00> : tensor<64x64x3x3xf32>
    %cst_25 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_26 = arith.constant dense<0.005244e+00> : tensor<64x3x3x3xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_28 = arith.constant 0.000000e+00 : f32
    %cst_29 = arith.constant -3.40282347E+38 : f32
    %cst_30 = arith.constant 1.000000e-05 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x64x224x224xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_27 : tensor<64xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_26 : tensor<1x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_25, %cst_27, %cst_27, %cst_25 : tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x64x224x224xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x224x224xf32>
    %padded_31 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x64x224x224xf32> to tensor<1x64x226x226xf32>
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_31, %cst_24 : tensor<1x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    cf.assert %3, "training is not supported for now"
    %7 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %cst_25, %cst_27, %cst_27, %cst_25 : tensor<1x64x224x224xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%6 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x64x224x224xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x224x224xf32>
    %9 = tensor.empty() : tensor<1x64x112x112xf32>
    %10 = linalg.fill ins(%cst_29 : f32) outs(%9 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %11 = tensor.empty() : tensor<2x2xf32>
    %12 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%8, %11 : tensor<1x64x224x224xf32>, tensor<2x2xf32>) outs(%10 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %padded_32 = tensor.pad %12 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %13 = tensor.empty() : tensor<1x128x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_23 : tensor<128xf32>) outs(%13 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %cst_22 : tensor<1x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%14 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_21, %cst_23, %cst_23, %cst_21 : tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%15 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x128x112x112xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x128x112x112xf32>) outs(%13 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x112x112xf32>
    %padded_33 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x128x112x112xf32> to tensor<1x128x114x114xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_33, %cst_20 : tensor<1x128x114x114xf32>, tensor<128x128x3x3xf32>) outs(%14 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_21, %cst_23, %cst_23, %cst_21 : tensor<1x128x112x112xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%18 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x128x112x112xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x128x112x112xf32>) outs(%13 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x112x112xf32>
    %21 = tensor.empty() : tensor<1x128x56x56xf32>
    %22 = linalg.fill ins(%cst_29 : f32) outs(%21 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %23 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%20, %11 : tensor<1x128x112x112xf32>, tensor<2x2xf32>) outs(%22 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %padded_34 = tensor.pad %23 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %24 = tensor.empty() : tensor<1x256x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_19 : tensor<256xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %cst_18 : tensor<1x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%25 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %cst_17, %cst_19, %cst_19, %cst_17 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%26 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x256x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x256x56x56xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_35 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_35, %cst_16 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%25 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_17, %cst_19, %cst_19, %cst_17 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%29 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x256x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x256x56x56xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_36 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_36, %cst_15 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%25 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_17, %cst_19, %cst_19, %cst_17 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%32 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x256x56x56xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x256x56x56xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_37 = tensor.pad %34 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_37, %cst_14 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%25 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_17, %cst_19, %cst_19, %cst_17 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%35 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x256x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x256x56x56xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x56x56xf32>
    %38 = tensor.empty() : tensor<1x256x28x28xf32>
    %39 = linalg.fill ins(%cst_29 : f32) outs(%38 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %40 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%37, %11 : tensor<1x256x56x56xf32>, tensor<2x2xf32>) outs(%39 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %padded_38 = tensor.pad %40 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %41 = tensor.empty() : tensor<1x512x28x28xf32>
    %42 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<512xf32>) outs(%41 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_38, %cst_12 : tensor<1x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%42 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%43 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x28x28xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x512x28x28xf32>) outs(%41 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_39 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_39, %cst_10 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%42 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%46 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x28x28xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x512x28x28xf32>) outs(%41 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_40 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %49 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_40, %cst_9 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%42 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %50 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x28x28xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x512x28x28xf32>) outs(%41 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_41 = tensor.pad %51 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %cst_8 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%42 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%52 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x28x28xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x512x28x28xf32>) outs(%41 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x28x28xf32>
    %55 = tensor.empty() : tensor<1x512x14x14xf32>
    %56 = linalg.fill ins(%cst_29 : f32) outs(%55 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %57 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%54, %11 : tensor<1x512x28x28xf32>, tensor<2x2xf32>) outs(%56 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %padded_42 = tensor.pad %57 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %58 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<512xf32>) outs(%55 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_42, %cst_7 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%58 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%59 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x14x14xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x512x14x14xf32>) outs(%55 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_43 = tensor.pad %61 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_43, %cst_6 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%58 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%62 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x14x14xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x512x14x14xf32>) outs(%55 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_44 = tensor.pad %64 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_44, %cst_5 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%58 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%65 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x14x14xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x512x14x14xf32>) outs(%55 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_45 = tensor.pad %67 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_28 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_45, %cst_4 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%58 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map1, #map, #map, #map, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_11, %cst_13, %cst_13, %cst_11 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_46: f32, %in_47: f32, %in_48: f32, %in_49: f32, %out: f32):
      %95 = arith.truncf %cst_30 : f64 to f32
      %96 = arith.addf %in_49, %95 : f32
      %97 = math.rsqrt %96 : f32
      %98 = arith.subf %in, %in_48 : f32
      %99 = arith.mulf %98, %97 : f32
      %100 = arith.mulf %99, %in_46 : f32
      %101 = arith.addf %100, %in_47 : f32
      linalg.yield %101 : f32
    } -> tensor<1x512x14x14xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x512x14x14xf32>) outs(%55 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x14x14xf32>
    %71 = tensor.empty() : tensor<1x512x7x7xf32>
    %72 = linalg.fill ins(%cst_29 : f32) outs(%71 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %73 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%70, %11 : tensor<1x512x14x14xf32>, tensor<2x2xf32>) outs(%72 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %74 = linalg.fill ins(%cst_28 : f32) outs(%71 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %75 = tensor.empty() : tensor<1x1xf32>
    %76 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%73, %75 : tensor<1x512x7x7xf32>, tensor<1x1xf32>) outs(%74 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %76 [[0], [1, 2, 3]] : tensor<1x512x7x7xf32> into tensor<1x25088xf32>
    %77 = tensor.empty() : tensor<25088x4096xf32>
    %78 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x25088xf32>) outs(%77 : tensor<25088x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<25088x4096xf32>
    %79 = tensor.empty() : tensor<1x4096xf32>
    %80 = linalg.fill ins(%cst_28 : f32) outs(%79 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %81 = linalg.matmul ins(%collapsed, %78 : tensor<1x25088xf32>, tensor<25088x4096xf32>) outs(%80 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %82 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%81, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%79 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_46: f32, %out: f32):
      %95 = arith.addf %in, %in_46 : f32
      linalg.yield %95 : f32
    } -> tensor<1x4096xf32>
    %83 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%82 : tensor<1x4096xf32>) outs(%79 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x4096xf32>
    %84 = tensor.empty() : tensor<4096x4096xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<4096x4096xf32>) outs(%84 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %86 = linalg.matmul ins(%83, %85 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%80 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %87 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%86, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%79 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_46: f32, %out: f32):
      %95 = arith.addf %in, %in_46 : f32
      linalg.yield %95 : f32
    } -> tensor<1x4096xf32>
    %88 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%87 : tensor<1x4096xf32>) outs(%79 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_28 : f32
      %96 = arith.select %95, %in, %cst_28 : f32
      linalg.yield %96 : f32
    } -> tensor<1x4096xf32>
    %89 = tensor.empty() : tensor<4096x1000xf32>
    %90 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x4096xf32>) outs(%89 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %91 = tensor.empty() : tensor<1x1000xf32>
    %92 = linalg.fill ins(%cst_28 : f32) outs(%91 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %93 = linalg.matmul ins(%88, %90 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%92 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %94 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%93, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%91 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_46: f32, %out: f32):
      %95 = arith.addf %in, %in_46 : f32
      linalg.yield %95 : f32
    } -> tensor<1x1000xf32>
    return %94 : tensor<1x1000xf32>
  }
}
