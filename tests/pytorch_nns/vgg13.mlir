#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "VGG"} {
    func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.022884e+00> : tensor<1000x4096xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.003061e+00> : tensor<4096x4096xf32>
    %cst_2 = arith.constant dense<-0.008541e+00> : tensor<4096x25088xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<-0.002804e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<0.020002e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<-0.001465e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<0.005616e+00> : tensor<512x256x3x3xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_9 = arith.constant dense<-0.007598e+00> : tensor<256x256x3x3xf32>
    %cst_10 = arith.constant dense<0.004200e+00> : tensor<256x128x3x3xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_12 = arith.constant dense<-0.005467e+00> : tensor<128x128x3x3xf32>
    %cst_13 = arith.constant dense<0.002539e+00> : tensor<128x64x3x3xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_15 = arith.constant dense<-0.000135e+00> : tensor<64x64x3x3xf32>
    %cst_16 = arith.constant dense<0.014950e+00> : tensor<64x3x3x3xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_18 = arith.constant 0.000000e+00 : f32
    %cst_19 = arith.constant -3.40282347E+38 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x64x224x224xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_17 : tensor<64xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_16 : tensor<1x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x64x224x224xf32>
    %padded_20 = tensor.pad %3 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x64x224x224xf32> to tensor<1x64x226x226xf32>
    %4 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_20, %cst_15 : tensor<1x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x64x224x224xf32>
    %6 = tensor.empty() : tensor<1x64x112x112xf32>
    %7 = linalg.fill ins(%cst_19 : f32) outs(%6 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %8 = tensor.empty() : tensor<2x2xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%5, %8 : tensor<1x64x224x224xf32>, tensor<2x2xf32>) outs(%7 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %padded_21 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %10 = tensor.empty() : tensor<1x128x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_14 : tensor<128xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_21, %cst_13 : tensor<1x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%11 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x128x112x112xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x128x112x112xf32>
    %padded_22 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x128x112x112xf32> to tensor<1x128x114x114xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_22, %cst_12 : tensor<1x128x114x114xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x128x112x112xf32>) outs(%10 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x128x112x112xf32>
    %16 = tensor.empty() : tensor<1x128x56x56xf32>
    %17 = linalg.fill ins(%cst_19 : f32) outs(%16 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %18 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%15, %8 : tensor<1x128x112x112xf32>, tensor<2x2xf32>) outs(%17 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %padded_23 = tensor.pad %18 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %19 = tensor.empty() : tensor<1x256x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11 : tensor<256xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %cst_10 : tensor<1x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%20 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x256x56x56xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_24 = tensor.pad %22 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_24, %cst_9 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%20 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x56x56xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x256x56x56xf32>
    %25 = tensor.empty() : tensor<1x256x28x28xf32>
    %26 = linalg.fill ins(%cst_19 : f32) outs(%25 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %27 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%24, %8 : tensor<1x256x56x56xf32>, tensor<2x2xf32>) outs(%26 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %padded_25 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %28 = tensor.empty() : tensor<1x512x28x28xf32>
    %29 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<512xf32>) outs(%28 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %cst_7 : tensor<1x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%29 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x512x28x28xf32>) outs(%28 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_26 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %cst_6 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%29 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x512x28x28xf32>) outs(%28 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x512x28x28xf32>
    %34 = tensor.empty() : tensor<1x512x14x14xf32>
    %35 = linalg.fill ins(%cst_19 : f32) outs(%34 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %36 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%33, %8 : tensor<1x512x28x28xf32>, tensor<2x2xf32>) outs(%35 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %padded_27 = tensor.pad %36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<512xf32>) outs(%34 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %cst_5 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%37 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<1x512x14x14xf32>) outs(%34 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_28 = tensor.pad %39 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_18 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %cst_4 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%37 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x512x14x14xf32>) outs(%34 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x512x14x14xf32>
    %42 = tensor.empty() : tensor<1x512x7x7xf32>
    %43 = linalg.fill ins(%cst_19 : f32) outs(%42 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %44 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%41, %8 : tensor<1x512x14x14xf32>, tensor<2x2xf32>) outs(%43 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %45 = linalg.fill ins(%cst_18 : f32) outs(%42 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %46 = tensor.empty() : tensor<1x1xf32>
    %47 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %46 : tensor<1x512x7x7xf32>, tensor<1x1xf32>) outs(%45 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %47 [[0], [1, 2, 3]] : tensor<1x512x7x7xf32> into tensor<1x25088xf32>
    %48 = tensor.empty() : tensor<25088x4096xf32>
    %49 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x25088xf32>) outs(%48 : tensor<25088x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<25088x4096xf32>
    %50 = tensor.empty() : tensor<1x4096xf32>
    %51 = linalg.fill ins(%cst_18 : f32) outs(%50 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %52 = linalg.matmul ins(%collapsed, %49 : tensor<1x25088xf32>, tensor<25088x4096xf32>) outs(%51 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %53 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%52, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%50 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %66 = arith.addf %in, %in_29 : f32
      linalg.yield %66 : f32
    } -> tensor<1x4096xf32>
    %54 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%53 : tensor<1x4096xf32>) outs(%50 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x4096xf32>
    %55 = tensor.empty() : tensor<4096x4096xf32>
    %56 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<4096x4096xf32>) outs(%55 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %57 = linalg.matmul ins(%54, %56 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%51 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %58 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%57, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%50 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %66 = arith.addf %in, %in_29 : f32
      linalg.yield %66 : f32
    } -> tensor<1x4096xf32>
    %59 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%58 : tensor<1x4096xf32>) outs(%50 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %66 = arith.cmpf ugt, %in, %cst_18 : f32
      %67 = arith.select %66, %in, %cst_18 : f32
      linalg.yield %67 : f32
    } -> tensor<1x4096xf32>
    %60 = tensor.empty() : tensor<4096x1000xf32>
    %61 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x4096xf32>) outs(%60 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %62 = tensor.empty() : tensor<1x1000xf32>
    %63 = linalg.fill ins(%cst_18 : f32) outs(%62 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %64 = linalg.matmul ins(%59, %61 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%63 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%64, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%62 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_29: f32, %out: f32):
      %66 = arith.addf %in, %in_29 : f32
      linalg.yield %66 : f32
    } -> tensor<1x1000xf32>
    return %65 : tensor<1x1000xf32>
  }
}
