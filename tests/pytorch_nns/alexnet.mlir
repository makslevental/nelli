#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "AlexNet"} {
    func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<-0.021650e+00> : tensor<1000xf32>
    %cst_0 = arith.constant dense<-0.006649e+00> : tensor<1000x4096xf32>
    %cst_1 = arith.constant dense<-0.006697e+00> : tensor<4096xf32>
    %cst_2 = arith.constant dense<-0.006155e+00> : tensor<4096x4096xf32>
    %cst_3 = arith.constant dense<0.012516e+00> : tensor<4096xf32>
    %cst_4 = arith.constant dense<-0.003546e+00> : tensor<4096x9216xf32>
    %cst_5 = arith.constant dense<0.003691e+00> : tensor<256xf32>
    %cst_6 = arith.constant dense<0.005688e+00> : tensor<256x256x3x3xf32>
    %cst_7 = arith.constant dense<-0.017195e+00> : tensor<256xf32>
    %cst_8 = arith.constant dense<0.004232e+00> : tensor<256x384x3x3xf32>
    %cst_9 = arith.constant dense<-0.001458e+00> : tensor<384xf32>
    %cst_10 = arith.constant dense<-0.014753e+00> : tensor<384x192x3x3xf32>
    %cst_11 = arith.constant dense<-0.003397e+00> : tensor<192xf32>
    %cst_12 = arith.constant dense<-0.008791e+00> : tensor<192x64x5x5xf32>
    %cst_13 = arith.constant dense<0.007302e+00> : tensor<64xf32>
    %cst_14 = arith.constant dense<0.005099e+00> : tensor<64x3x11x11xf32>
    %cst_15 = arith.constant 0.000000e+00 : f32
    %cst_16 = arith.constant -3.40282347E+38 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_15 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x228x228xf32>
    %0 = tensor.empty() : tensor<1x64x55x55xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<64xf32>) outs(%0 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x55x55xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%padded, %cst_14 : tensor<1x3x228x228xf32>, tensor<64x3x11x11xf32>) outs(%1 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x64x55x55xf32>) outs(%0 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x64x55x55xf32>
    %4 = tensor.empty() : tensor<1x64x27x27xf32>
    %5 = linalg.fill ins(%cst_16 : f32) outs(%4 : tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xf32>
    %6 = tensor.empty() : tensor<3x3xf32>
    %7 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%3, %6 : tensor<1x64x55x55xf32>, tensor<3x3xf32>) outs(%5 : tensor<1x64x27x27xf32>) -> tensor<1x64x27x27xf32>
    %padded_17 = tensor.pad %7 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_15 : f32
    } : tensor<1x64x27x27xf32> to tensor<1x64x31x31xf32>
    %8 = tensor.empty() : tensor<1x192x27x27xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11 : tensor<192xf32>) outs(%8 : tensor<1x192x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x27x27xf32>
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_17, %cst_12 : tensor<1x64x31x31xf32>, tensor<192x64x5x5xf32>) outs(%9 : tensor<1x192x27x27xf32>) -> tensor<1x192x27x27xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x192x27x27xf32>) outs(%8 : tensor<1x192x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x192x27x27xf32>
    %12 = tensor.empty() : tensor<1x192x13x13xf32>
    %13 = linalg.fill ins(%cst_16 : f32) outs(%12 : tensor<1x192x13x13xf32>) -> tensor<1x192x13x13xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%11, %6 : tensor<1x192x27x27xf32>, tensor<3x3xf32>) outs(%13 : tensor<1x192x13x13xf32>) -> tensor<1x192x13x13xf32>
    %padded_18 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_15 : f32
    } : tensor<1x192x13x13xf32> to tensor<1x192x15x15xf32>
    %15 = tensor.empty() : tensor<1x384x13x13xf32>
    %16 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<384xf32>) outs(%15 : tensor<1x384x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x13x13xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_18, %cst_10 : tensor<1x192x15x15xf32>, tensor<384x192x3x3xf32>) outs(%16 : tensor<1x384x13x13xf32>) -> tensor<1x384x13x13xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<1x384x13x13xf32>) outs(%15 : tensor<1x384x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x384x13x13xf32>
    %padded_19 = tensor.pad %18 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_15 : f32
    } : tensor<1x384x13x13xf32> to tensor<1x384x15x15xf32>
    %19 = tensor.empty() : tensor<1x256x13x13xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<256xf32>) outs(%19 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x13x13xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_19, %cst_8 : tensor<1x384x15x15xf32>, tensor<256x384x3x3xf32>) outs(%20 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x256x13x13xf32>) outs(%19 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x256x13x13xf32>
    %padded_20 = tensor.pad %22 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_15 : f32
    } : tensor<1x256x13x13xf32> to tensor<1x256x15x15xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<256xf32>) outs(%19 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x13x13xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_20, %cst_6 : tensor<1x256x15x15xf32>, tensor<256x256x3x3xf32>) outs(%23 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x256x13x13xf32>) outs(%19 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x256x13x13xf32>
    %26 = tensor.empty() : tensor<1x256x6x6xf32>
    %27 = linalg.fill ins(%cst_16 : f32) outs(%26 : tensor<1x256x6x6xf32>) -> tensor<1x256x6x6xf32>
    %28 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%25, %6 : tensor<1x256x13x13xf32>, tensor<3x3xf32>) outs(%27 : tensor<1x256x6x6xf32>) -> tensor<1x256x6x6xf32>
    %29 = linalg.fill ins(%cst_15 : f32) outs(%26 : tensor<1x256x6x6xf32>) -> tensor<1x256x6x6xf32>
    %30 = tensor.empty() : tensor<1x1xf32>
    %31 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %30 : tensor<1x256x6x6xf32>, tensor<1x1xf32>) outs(%29 : tensor<1x256x6x6xf32>) -> tensor<1x256x6x6xf32>
    %collapsed = tensor.collapse_shape %31 [[0], [1, 2, 3]] : tensor<1x256x6x6xf32> into tensor<1x9216xf32>
    %32 = tensor.empty() : tensor<9216x4096xf32>
    %33 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_4 : tensor<4096x9216xf32>) outs(%32 : tensor<9216x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<9216x4096xf32>
    %34 = tensor.empty() : tensor<1x4096xf32>
    %35 = linalg.fill ins(%cst_15 : f32) outs(%34 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %36 = linalg.matmul ins(%collapsed, %33 : tensor<1x9216xf32>, tensor<9216x4096xf32>) outs(%35 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %37 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%36, %cst_3 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%34 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %50 = arith.addf %in, %in_21 : f32
      linalg.yield %50 : f32
    } -> tensor<1x4096xf32>
    %38 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%37 : tensor<1x4096xf32>) outs(%34 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x4096xf32>
    %39 = tensor.empty() : tensor<4096x4096xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x4096xf32>) outs(%39 : tensor<4096x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x4096xf32>
    %41 = linalg.matmul ins(%38, %40 : tensor<1x4096xf32>, tensor<4096x4096xf32>) outs(%35 : tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %42 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%41, %cst_1 : tensor<1x4096xf32>, tensor<4096xf32>) outs(%34 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %50 = arith.addf %in, %in_21 : f32
      linalg.yield %50 : f32
    } -> tensor<1x4096xf32>
    %43 = linalg.generic {indexing_maps = [#map5, #map3], iterator_types = ["parallel", "parallel"]} ins(%42 : tensor<1x4096xf32>) outs(%34 : tensor<1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %50 = arith.cmpf ugt, %in, %cst_15 : f32
      %51 = arith.select %50, %in, %cst_15 : f32
      linalg.yield %51 : f32
    } -> tensor<1x4096xf32>
    %44 = tensor.empty() : tensor<4096x1000xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x4096xf32>) outs(%44 : tensor<4096x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1000xf32>
    %46 = tensor.empty() : tensor<1x1000xf32>
    %47 = linalg.fill ins(%cst_15 : f32) outs(%46 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %48 = linalg.matmul ins(%43, %45 : tensor<1x4096xf32>, tensor<4096x1000xf32>) outs(%47 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %49 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%48, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%46 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_21: f32, %out: f32):
      %50 = arith.addf %in, %in_21 : f32
      linalg.yield %50 : f32
    } -> tensor<1x1000xf32>
    return %49 : tensor<1x1000xf32>
  }
}
