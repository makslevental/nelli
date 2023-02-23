#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "VGG"} {
    func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<-0.000744e+00> : tensor<1000x4096xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.007773e+00> : tensor<4096x4096xf32>
    %cst_2 = arith.constant dense<-0.010078e+00> : tensor<4096x25088xf32>
    %cst_3 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<-0.000462e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<-0.001242e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<-0.013379e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<-0.012233e+00> : tensor<512x256x3x3xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_9 = arith.constant dense<0.004438e+00> : tensor<256x256x3x3xf32>
    %cst_10 = arith.constant dense<0.011584e+00> : tensor<256x128x3x3xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_12 = arith.constant dense<-0.000328e+00> : tensor<128x64x3x3xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_14 = arith.constant dense<0.017812e+00> : tensor<64x3x3x3xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_16 = arith.constant 0.000000e+00 : f32
    %cst_17 = arith.constant -3.40282347E+38 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x64x224x224xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_15 : tensor<64xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %cst_14 : tensor<1x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x64x224x224xf32>) outs(%0 : tensor<1x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x64x224x224xf32>
    %4 = tensor.empty() : tensor<1x64x112x112xf32>
    %5 = linalg.fill ins(%cst_17 : f32) outs(%4 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %6 = tensor.empty() : tensor<2x2xf32>
    %7 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%3, %6 : tensor<1x64x224x224xf32>, tensor<2x2xf32>) outs(%5 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %padded_18 = tensor.pad %7 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %8 = tensor.empty() : tensor<1x128x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<128xf32>) outs(%8 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x112x112xf32>
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_18, %cst_12 : tensor<1x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%9 : tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x128x112x112xf32>) outs(%8 : tensor<1x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x128x112x112xf32>
    %12 = tensor.empty() : tensor<1x128x56x56xf32>
    %13 = linalg.fill ins(%cst_17 : f32) outs(%12 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%11, %6 : tensor<1x128x112x112xf32>, tensor<2x2xf32>) outs(%13 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %padded_19 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %15 = tensor.empty() : tensor<1x256x56x56xf32>
    %16 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11 : tensor<256xf32>) outs(%15 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x56x56xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_19, %cst_10 : tensor<1x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%16 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<1x256x56x56xf32>) outs(%15 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_20 = tensor.pad %18 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_20, %cst_9 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%16 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x256x56x56xf32>) outs(%15 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x256x56x56xf32>
    %21 = tensor.empty() : tensor<1x256x28x28xf32>
    %22 = linalg.fill ins(%cst_17 : f32) outs(%21 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %23 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%20, %6 : tensor<1x256x56x56xf32>, tensor<2x2xf32>) outs(%22 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %padded_21 = tensor.pad %23 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %24 = tensor.empty() : tensor<1x512x28x28xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<512xf32>) outs(%24 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x28x28xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_21, %cst_7 : tensor<1x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%25 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x512x28x28xf32>) outs(%24 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_22 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_22, %cst_6 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%25 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x512x28x28xf32>) outs(%24 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x512x28x28xf32>
    %30 = tensor.empty() : tensor<1x512x14x14xf32>
    %31 = linalg.fill ins(%cst_17 : f32) outs(%30 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %32 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%29, %6 : tensor<1x512x28x28xf32>, tensor<2x2xf32>) outs(%31 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %padded_23 = tensor.pad %32 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<512xf32>) outs(%30 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x14x14xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %cst_5 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%33 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x512x14x14xf32>) outs(%30 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_24 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_16 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_24, %cst_4 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%33 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x512x14x14xf32>) outs(%30 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x512x14x14xf32>
    %38 = tensor.empty() : tensor<1x512x7x7xf32>
    %39 = linalg.fill ins(%cst_17 : f32) outs(%38 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %40 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%37, %6 : tensor<1x512x14x14xf32>, tensor<2x2xf32>) outs(%39 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %41 = linalg.fill ins(%cst_16 : f32) outs(%38 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %42 = tensor.empty() : tensor<1x1xf32>
    %43 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %42 : tensor<1x512x7x7xf32>, tensor<1x1xf32>) outs(%41 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %collapsed = tensor.collapse_shape %43 [[0], [1, 2, 3]] : tensor<1x512x7x7xf32> into tensor<1x25088xf32>
    %44 = tensor.empty() : tensor<25088x4096xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x25088xf32>) outs(%44 : tensor<25088x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<25088x4096xf32>
    %46 = tensor.empty() : tensor<1x4096xf32>
    %47 = linalg.fill ins(%cst_16 : f32) outs(%46 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %48 = linalg.matmul ins(%collapsed, %45 : tensor<1x25088xf32>, tensor<25088x4096xf32>) outs(%47 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %49 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%48, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%46 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_25: f32, %out: f32):
      %62 = arith.addf %in, %in_25 : f32
      linalg.yield %62 : f32
    } -> tensor<1x4096xf32>
    %50 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%49 : tensor<1x4096xf32>) outs(%46 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x4096xf32>
    %51 = tensor.empty() : tensor<4096x4096xf32>
    %52 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<4096x4096xf32>) outs(%51 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %53 = linalg.matmul ins(%50, %52 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%47 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %54 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%53, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%46 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_25: f32, %out: f32):
      %62 = arith.addf %in, %in_25 : f32
      linalg.yield %62 : f32
    } -> tensor<1x4096xf32>
    %55 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%54 : tensor<1x4096xf32>) outs(%46 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %62 = arith.cmpf ugt, %in, %cst_16 : f32
      %63 = arith.select %62, %in, %cst_16 : f32
      linalg.yield %63 : f32
    } -> tensor<1x4096xf32>
    %56 = tensor.empty() : tensor<4096x1000xf32>
    %57 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x4096xf32>) outs(%56 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %58 = tensor.empty() : tensor<1x1000xf32>
    %59 = linalg.fill ins(%cst_16 : f32) outs(%58 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %60 = linalg.matmul ins(%55, %57 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%59 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %61 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%60, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%58 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_25: f32, %out: f32):
      %62 = arith.addf %in, %in_25 : f32
      linalg.yield %62 : f32
    } -> tensor<1x1000xf32>
    return %61 : tensor<1x1000xf32>
  }
}
