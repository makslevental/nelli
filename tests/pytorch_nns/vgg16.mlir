#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "VGG"} {
    func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.008464e+00> : tensor<1000x4096xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.006195e+00> : tensor<4096x4096xf32>
    %cst_2 = arith.constant dense<-0.001829e+00> : tensor<4096x25088xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<0.011256e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<-0.011880e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<-0.000073e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<0.000352e+00> : tensor<512x512x3x3xf32>
    %cst_8 = arith.constant dense<0.008832e+00> : tensor<512x512x3x3xf32>
    %cst_9 = arith.constant dense<-0.004443e+00> : tensor<512x256x3x3xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_11 = arith.constant dense<0.001043e+00> : tensor<256x256x3x3xf32>
    %cst_12 = arith.constant dense<-0.003201e+00> : tensor<256x256x3x3xf32>
    %cst_13 = arith.constant dense<0.010575e+00> : tensor<256x128x3x3xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_15 = arith.constant dense<-0.000848e+00> : tensor<128x128x3x3xf32>
    %cst_16 = arith.constant dense<0.005163e+00> : tensor<128x64x3x3xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_18 = arith.constant dense<-0.007627e+00> : tensor<64x64x3x3xf32>
    %cst_19 = arith.constant dense<0.002889e+00> : tensor<64x3x3x3xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_21 = arith.constant 0.000000e+00 : f32
    %cst_22 = arith.constant -3.40282347E+38 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x64x224x224xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20 : tensor<64xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_19 : tensor<1x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x64x224x224xf32>
    %padded_23 = tensor.pad %3 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x64x224x224xf32> to tensor<1x64x226x226xf32>
    %4 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %cst_18 : tensor<1x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x64x224x224xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.fill ins(%cst_22 : f32) outs(%6 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %8 = tensor.empty() : tensor<2x2xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%5, %8 : tensor<1x64x224x224xf32>, tensor<2x2xf32>) outs(%7 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %padded_24 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %10 = tensor.empty() : tensor<1x128x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_17 : tensor<128xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_24, %cst_16 : tensor<1x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%11 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x128x112x112xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x128x112x112xf32>
    %padded_25 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x128x112x112xf32> to tensor<1x128x114x114xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %cst_15 : tensor<1x128x114x114xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x128x112x112xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x128x112x112xf32>
    %16 = tensor.empty() : tensor<1x128x56x56xf32>
    %17 = linalg.fill ins(%cst_22 : f32) outs(%16 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %18 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%15, %8 : tensor<1x128x112x112xf32>, tensor<2x2xf32>) outs(%17 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %padded_26 = tensor.pad %18 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %19 = tensor.empty() : tensor<1x256x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_14 : tensor<256xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %cst_13 : tensor<1x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%20 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x256x56x56xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_27 = tensor.pad %22 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %cst_12 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%20 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x56x56xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_28 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %cst_11 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%20 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x256x56x56xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x256x56x56xf32>
    %27 = tensor.empty() : tensor<1x256x28x28xf32>
    %28 = linalg.fill ins(%cst_22 : f32) outs(%27 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %29 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%26, %8 : tensor<1x256x56x56xf32>, tensor<2x2xf32>) outs(%28 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %padded_29 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %30 = tensor.empty() : tensor<1x512x28x28xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_10 : tensor<512xf32>) outs(%30 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_29, %cst_9 : tensor<1x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%31 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x512x28x28xf32>) outs(%30 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_30 = tensor.pad %33 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_30, %cst_8 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%31 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x512x28x28xf32>) outs(%30 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_31 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_31, %cst_7 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%31 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x512x28x28xf32>) outs(%30 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x512x28x28xf32>
    %38 = tensor.empty() : tensor<1x512x14x14xf32>
    %39 = linalg.fill ins(%cst_22 : f32) outs(%38 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %40 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%37, %8 : tensor<1x512x28x28xf32>, tensor<2x2xf32>) outs(%39 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %padded_32 = tensor.pad %40 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_10 : tensor<512xf32>) outs(%38 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %cst_6 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%41 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42 : tensor<1x512x14x14xf32>) outs(%38 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_33 = tensor.pad %43 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_33, %cst_5 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%41 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x512x14x14xf32>) outs(%38 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_34 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_21 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %cst_4 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%41 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x512x14x14xf32>) outs(%38 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x512x14x14xf32>
    %48 = tensor.empty() : tensor<1x512x7x7xf32>
    %49 = linalg.fill ins(%cst_22 : f32) outs(%48 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %50 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%47, %8 : tensor<1x512x14x14xf32>, tensor<2x2xf32>) outs(%49 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %51 = linalg.fill ins(%cst_21 : f32) outs(%48 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %52 = tensor.empty() : tensor<1x1xf32>
    %53 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%50, %52 : tensor<1x512x7x7xf32>, tensor<1x1xf32>) outs(%51 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %53 [[0], [1, 2, 3]] : tensor<1x512x7x7xf32> into tensor<1x25088xf32>
    %54 = tensor.empty() : tensor<25088x4096xf32>
    %55 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x25088xf32>) outs(%54 : tensor<25088x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<25088x4096xf32>
    %56 = tensor.empty() : tensor<1x4096xf32>
    %57 = linalg.fill ins(%cst_21 : f32) outs(%56 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %58 = linalg.matmul ins(%collapsed, %55 : tensor<1x25088xf32>, tensor<25088x4096xf32>) outs(%57 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %59 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%58, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%56 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_35: f32, %out: f32):
      %72 = arith.addf %in, %in_35 : f32
      linalg.yield %72 : f32
    } -> tensor<1x4096xf32>
    %60 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%59 : tensor<1x4096xf32>) outs(%56 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x4096xf32>
    %61 = tensor.empty() : tensor<4096x4096xf32>
    %62 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<4096x4096xf32>) outs(%61 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %63 = linalg.matmul ins(%60, %62 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%57 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%63, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%56 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_35: f32, %out: f32):
      %72 = arith.addf %in, %in_35 : f32
      linalg.yield %72 : f32
    } -> tensor<1x4096xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%64 : tensor<1x4096xf32>) outs(%56 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %72 = arith.cmpf ugt, %in, %cst_21 : f32
      %73 = arith.select %72, %in, %cst_21 : f32
      linalg.yield %73 : f32
    } -> tensor<1x4096xf32>
    %66 = tensor.empty() : tensor<4096x1000xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x4096xf32>) outs(%66 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %68 = tensor.empty() : tensor<1x1000xf32>
    %69 = linalg.fill ins(%cst_21 : f32) outs(%68 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %70 = linalg.matmul ins(%65, %67 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%69 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %71 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%70, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%68 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_35: f32, %out: f32):
      %72 = arith.addf %in, %in_35 : f32
      linalg.yield %72 : f32
    } -> tensor<1x1000xf32>
    return %71 : tensor<1x1000xf32>
  }
}
