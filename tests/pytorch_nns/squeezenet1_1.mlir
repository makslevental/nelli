#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
module attributes {torch.debug_module_name = "SqueezeNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.002781e+00> : tensor<1000x512x1x1xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.001644e+00> : tensor<256x64x3x3xf32>
    %cst_2 = arith.constant dense<0.011439e+00> : tensor<256x64x1x1xf32>
    %cst_3 = arith.constant dense<0.009759e+00> : tensor<64x512x1x1xf32>
    %cst_4 = arith.constant dense<-0.003838e+00> : tensor<256x64x3x3xf32>
    %cst_5 = arith.constant dense<0.008382e+00> : tensor<256x64x1x1xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_7 = arith.constant dense<0.011214e+00> : tensor<64x384x1x1xf32>
    %cst_8 = arith.constant dense<0.014268e+00> : tensor<192x48x3x3xf32>
    %cst_9 = arith.constant dense<-0.004102e+00> : tensor<192x48x1x1xf32>
    %cst_10 = arith.constant dense<0.019309e+00> : tensor<48x384x1x1xf32>
    %cst_11 = arith.constant dense<-0.000102e+00> : tensor<192x48x3x3xf32>
    %cst_12 = arith.constant dense<-0.007946e+00> : tensor<192x48x1x1xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_14 = arith.constant dense<0.010183e+00> : tensor<48x256x1x1xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_16 = arith.constant dense<-0.009843e+00> : tensor<128x32x3x3xf32>
    %cst_17 = arith.constant dense<0.000595e+00> : tensor<128x32x1x1xf32>
    %cst_18 = arith.constant dense<0.010284e+00> : tensor<32x256x1x1xf32>
    %cst_19 = arith.constant dense<-0.015116e+00> : tensor<128x32x3x3xf32>
    %cst_20 = arith.constant dense<0.016927e+00> : tensor<128x32x1x1xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_22 = arith.constant dense<-0.004885e+00> : tensor<32x128x1x1xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_24 = arith.constant dense<0.000994e+00> : tensor<64x16x3x3xf32>
    %cst_25 = arith.constant dense<0.005391e+00> : tensor<64x16x1x1xf32>
    %cst_26 = arith.constant dense<0.002716e+00> : tensor<16x128x1x1xf32>
    %cst_27 = arith.constant dense<0.004752e+00> : tensor<64x16x3x3xf32>
    %cst_28 = arith.constant dense<-0.005733e+00> : tensor<64x16x1x1xf32>
    %cst_29 = arith.constant dense<0.002598e+00> : tensor<16x64x1x1xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_31 = arith.constant dense<-0.004565e+00> : tensor<64x3x3x3xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_33 = arith.constant 0.000000e+00 : f32
    %cst_34 = arith.constant -3.40282347E+38 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = tensor.empty() : tensor<1x64x15x15xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<64xf32>) outs(%0 : tensor<1x64x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x15x15xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%arg0, %cst_31 : tensor<1x3x32x32xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x15x15xf32>) -> tensor<1x64x15x15xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x64x15x15xf32>) outs(%0 : tensor<1x64x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x15x15xf32>
    %padded = tensor.pad %3 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x64x15x15xf32> to tensor<1x64x17x17xf32>
    %4 = tensor.empty() : tensor<1x64x7x7xf32>
    %5 = linalg.fill ins(%cst_34 : f32) outs(%4 : tensor<1x64x7x7xf32>) -> tensor<1x64x7x7xf32>
    %6 = tensor.empty() : tensor<3x3xf32>
    %7 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %6 : tensor<1x64x17x17xf32>, tensor<3x3xf32>) outs(%5 : tensor<1x64x7x7xf32>) -> tensor<1x64x7x7xf32>
    %8 = tensor.empty() : tensor<1x16x7x7xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30 : tensor<16xf32>) outs(%8 : tensor<1x16x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x7x7xf32>
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%7, %cst_29 : tensor<1x64x7x7xf32>, tensor<16x64x1x1xf32>) outs(%9 : tensor<1x16x7x7xf32>) -> tensor<1x16x7x7xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x16x7x7xf32>) outs(%8 : tensor<1x16x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x16x7x7xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<64xf32>) outs(%4 : tensor<1x64x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x7x7xf32>
    %13 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%11, %cst_28 : tensor<1x16x7x7xf32>, tensor<64x16x1x1xf32>) outs(%12 : tensor<1x64x7x7xf32>) -> tensor<1x64x7x7xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x64x7x7xf32>) outs(%4 : tensor<1x64x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x7x7xf32>
    %padded_35 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x16x7x7xf32> to tensor<1x16x9x9xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_35, %cst_27 : tensor<1x16x9x9xf32>, tensor<64x16x3x3xf32>) outs(%12 : tensor<1x64x7x7xf32>) -> tensor<1x64x7x7xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x7x7xf32>) outs(%4 : tensor<1x64x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x7x7xf32>
    %17 = tensor.empty() : tensor<1x128x7x7xf32>
    %inserted_slice = tensor.insert_slice %14 into %17[0, 0, 0, 0] [1, 64, 7, 7] [1, 1, 1, 1] : tensor<1x64x7x7xf32> into tensor<1x128x7x7xf32>
    %inserted_slice_36 = tensor.insert_slice %16 into %inserted_slice[0, 64, 0, 0] [1, 64, 7, 7] [1, 1, 1, 1] : tensor<1x64x7x7xf32> into tensor<1x128x7x7xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_36, %cst_26 : tensor<1x128x7x7xf32>, tensor<16x128x1x1xf32>) outs(%9 : tensor<1x16x7x7xf32>) -> tensor<1x16x7x7xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x16x7x7xf32>) outs(%8 : tensor<1x16x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x16x7x7xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%19, %cst_25 : tensor<1x16x7x7xf32>, tensor<64x16x1x1xf32>) outs(%12 : tensor<1x64x7x7xf32>) -> tensor<1x64x7x7xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<1x64x7x7xf32>) outs(%4 : tensor<1x64x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x7x7xf32>
    %padded_37 = tensor.pad %19 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x16x7x7xf32> to tensor<1x16x9x9xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_37, %cst_24 : tensor<1x16x9x9xf32>, tensor<64x16x3x3xf32>) outs(%12 : tensor<1x64x7x7xf32>) -> tensor<1x64x7x7xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x64x7x7xf32>) outs(%4 : tensor<1x64x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x7x7xf32>
    %inserted_slice_38 = tensor.insert_slice %21 into %17[0, 0, 0, 0] [1, 64, 7, 7] [1, 1, 1, 1] : tensor<1x64x7x7xf32> into tensor<1x128x7x7xf32>
    %inserted_slice_39 = tensor.insert_slice %23 into %inserted_slice_38[0, 64, 0, 0] [1, 64, 7, 7] [1, 1, 1, 1] : tensor<1x64x7x7xf32> into tensor<1x128x7x7xf32>
    %padded_40 = tensor.pad %inserted_slice_39 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x128x7x7xf32> to tensor<1x128x9x9xf32>
    %24 = tensor.empty() : tensor<1x128x3x3xf32>
    %25 = linalg.fill ins(%cst_34 : f32) outs(%24 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %26 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_40, %6 : tensor<1x128x9x9xf32>, tensor<3x3xf32>) outs(%25 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %27 = tensor.empty() : tensor<1x32x3x3xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_23 : tensor<32xf32>) outs(%27 : tensor<1x32x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x3x3xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%26, %cst_22 : tensor<1x128x3x3xf32>, tensor<32x128x1x1xf32>) outs(%28 : tensor<1x32x3x3xf32>) -> tensor<1x32x3x3xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x32x3x3xf32>) outs(%27 : tensor<1x32x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x32x3x3xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21 : tensor<128xf32>) outs(%24 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x3x3xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %cst_20 : tensor<1x32x3x3xf32>, tensor<128x32x1x1xf32>) outs(%31 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x128x3x3xf32>) outs(%24 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x128x3x3xf32>
    %padded_41 = tensor.pad %30 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x32x3x3xf32> to tensor<1x32x5x5xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %cst_19 : tensor<1x32x5x5xf32>, tensor<128x32x3x3xf32>) outs(%31 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x128x3x3xf32>) outs(%24 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x128x3x3xf32>
    %36 = tensor.empty() : tensor<1x256x3x3xf32>
    %inserted_slice_42 = tensor.insert_slice %33 into %36[0, 0, 0, 0] [1, 128, 3, 3] [1, 1, 1, 1] : tensor<1x128x3x3xf32> into tensor<1x256x3x3xf32>
    %inserted_slice_43 = tensor.insert_slice %35 into %inserted_slice_42[0, 128, 0, 0] [1, 128, 3, 3] [1, 1, 1, 1] : tensor<1x128x3x3xf32> into tensor<1x256x3x3xf32>
    %37 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_43, %cst_18 : tensor<1x256x3x3xf32>, tensor<32x256x1x1xf32>) outs(%28 : tensor<1x32x3x3xf32>) -> tensor<1x32x3x3xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x32x3x3xf32>) outs(%27 : tensor<1x32x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x32x3x3xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %cst_17 : tensor<1x32x3x3xf32>, tensor<128x32x1x1xf32>) outs(%31 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x128x3x3xf32>) outs(%24 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x128x3x3xf32>
    %padded_44 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x32x3x3xf32> to tensor<1x32x5x5xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_44, %cst_16 : tensor<1x32x5x5xf32>, tensor<128x32x3x3xf32>) outs(%31 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x128x3x3xf32>) outs(%24 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x128x3x3xf32>
    %inserted_slice_45 = tensor.insert_slice %40 into %36[0, 0, 0, 0] [1, 128, 3, 3] [1, 1, 1, 1] : tensor<1x128x3x3xf32> into tensor<1x256x3x3xf32>
    %inserted_slice_46 = tensor.insert_slice %42 into %inserted_slice_45[0, 128, 0, 0] [1, 128, 3, 3] [1, 1, 1, 1] : tensor<1x128x3x3xf32> into tensor<1x256x3x3xf32>
    %padded_47 = tensor.pad %inserted_slice_46 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x256x3x3xf32> to tensor<1x256x5x5xf32>
    %43 = tensor.empty() : tensor<1x256x1x1xf32>
    %44 = linalg.fill ins(%cst_34 : f32) outs(%43 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %45 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_47, %6 : tensor<1x256x5x5xf32>, tensor<3x3xf32>) outs(%44 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %46 = tensor.empty() : tensor<1x48x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_15 : tensor<48xf32>) outs(%46 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_14 : tensor<1x256x1x1xf32>, tensor<48x256x1x1xf32>) outs(%47 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %49 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x48x1x1xf32>) outs(%46 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x48x1x1xf32>
    %50 = tensor.empty() : tensor<1x192x1x1xf32>
    %51 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<192xf32>) outs(%50 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x1x1xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_12 : tensor<1x48x1x1xf32>, tensor<192x48x1x1xf32>) outs(%51 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %53 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x192x1x1xf32>) outs(%50 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_48 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x48x1x1xf32> to tensor<1x48x3x3xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_48, %cst_11 : tensor<1x48x3x3xf32>, tensor<192x48x3x3xf32>) outs(%51 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %55 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54 : tensor<1x192x1x1xf32>) outs(%50 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x192x1x1xf32>
    %56 = tensor.empty() : tensor<1x384x1x1xf32>
    %inserted_slice_49 = tensor.insert_slice %53 into %56[0, 0, 0, 0] [1, 192, 1, 1] [1, 1, 1, 1] : tensor<1x192x1x1xf32> into tensor<1x384x1x1xf32>
    %inserted_slice_50 = tensor.insert_slice %55 into %inserted_slice_49[0, 192, 0, 0] [1, 192, 1, 1] [1, 1, 1, 1] : tensor<1x192x1x1xf32> into tensor<1x384x1x1xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_50, %cst_10 : tensor<1x384x1x1xf32>, tensor<48x384x1x1xf32>) outs(%47 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57 : tensor<1x48x1x1xf32>) outs(%46 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x48x1x1xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%58, %cst_9 : tensor<1x48x1x1xf32>, tensor<192x48x1x1xf32>) outs(%51 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x192x1x1xf32>) outs(%50 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_51 = tensor.pad %58 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x48x1x1xf32> to tensor<1x48x3x3xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_51, %cst_8 : tensor<1x48x3x3xf32>, tensor<192x48x3x3xf32>) outs(%51 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x192x1x1xf32>) outs(%50 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x192x1x1xf32>
    %inserted_slice_52 = tensor.insert_slice %60 into %56[0, 0, 0, 0] [1, 192, 1, 1] [1, 1, 1, 1] : tensor<1x192x1x1xf32> into tensor<1x384x1x1xf32>
    %inserted_slice_53 = tensor.insert_slice %62 into %inserted_slice_52[0, 192, 0, 0] [1, 192, 1, 1] [1, 1, 1, 1] : tensor<1x192x1x1xf32> into tensor<1x384x1x1xf32>
    %63 = tensor.empty() : tensor<1x64x1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<64xf32>) outs(%63 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_53, %cst_7 : tensor<1x384x1x1xf32>, tensor<64x384x1x1xf32>) outs(%64 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %66 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x64x1x1xf32>) outs(%63 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<256xf32>) outs(%43 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x1x1xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%66, %cst_5 : tensor<1x64x1x1xf32>, tensor<256x64x1x1xf32>) outs(%67 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x256x1x1xf32>) outs(%43 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x256x1x1xf32>
    %padded_54 = tensor.pad %66 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x64x1x1xf32> to tensor<1x64x3x3xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_54, %cst_4 : tensor<1x64x3x3xf32>, tensor<256x64x3x3xf32>) outs(%67 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x256x1x1xf32>) outs(%43 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x256x1x1xf32>
    %72 = tensor.empty() : tensor<1x512x1x1xf32>
    %inserted_slice_55 = tensor.insert_slice %69 into %72[0, 0, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x512x1x1xf32>
    %inserted_slice_56 = tensor.insert_slice %71 into %inserted_slice_55[0, 256, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x512x1x1xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_56, %cst_3 : tensor<1x512x1x1xf32>, tensor<64x512x1x1xf32>) outs(%64 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x64x1x1xf32>) outs(%63 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x64x1x1xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%74, %cst_2 : tensor<1x64x1x1xf32>, tensor<256x64x1x1xf32>) outs(%67 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %76 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x256x1x1xf32>) outs(%43 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x256x1x1xf32>
    %padded_57 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x64x1x1xf32> to tensor<1x64x3x3xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_57, %cst_1 : tensor<1x64x3x3xf32>, tensor<256x64x3x3xf32>) outs(%67 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %78 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x256x1x1xf32>) outs(%43 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x256x1x1xf32>
    %inserted_slice_58 = tensor.insert_slice %76 into %72[0, 0, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x512x1x1xf32>
    %inserted_slice_59 = tensor.insert_slice %78 into %inserted_slice_58[0, 256, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x512x1x1xf32>
    %79 = tensor.empty() : tensor<1x1000x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : tensor<1000xf32>) outs(%79 : tensor<1x1000x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x1x1xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_59, %cst : tensor<1x512x1x1xf32>, tensor<1000x512x1x1xf32>) outs(%80 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x1000x1x1xf32>) outs(%79 : tensor<1x1000x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %86 = arith.cmpf ugt, %in, %cst_33 : f32
      %87 = arith.select %86, %in, %cst_33 : f32
      linalg.yield %87 : f32
    } -> tensor<1x1000x1x1xf32>
    %83 = linalg.fill ins(%cst_33 : f32) outs(%79 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %84 = tensor.empty() : tensor<1x1xf32>
    %85 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %84 : tensor<1x1000x1x1xf32>, tensor<1x1xf32>) outs(%83 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %collapsed = tensor.collapse_shape %85 [[0], [1, 2, 3]] : tensor<1x1000x1x1xf32> into tensor<1x1000xf32>
    return %collapsed : tensor<1x1000xf32>
  }
}
