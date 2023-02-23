#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
module attributes {torch.debug_module_name = "SqueezeNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<-0.003266e+00> : tensor<1000x512x1x1xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.009742e+00> : tensor<256x64x3x3xf32>
    %cst_2 = arith.constant dense<-0.009117e+00> : tensor<256x64x1x1xf32>
    %cst_3 = arith.constant dense<-0.005152e+00> : tensor<64x512x1x1xf32>
    %cst_4 = arith.constant dense<-0.001028e+00> : tensor<256x64x3x3xf32>
    %cst_5 = arith.constant dense<0.016072e+00> : tensor<256x64x1x1xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_7 = arith.constant dense<-0.004874e+00> : tensor<64x384x1x1xf32>
    %cst_8 = arith.constant dense<0.006302e+00> : tensor<192x48x3x3xf32>
    %cst_9 = arith.constant dense<-0.005272e+00> : tensor<192x48x1x1xf32>
    %cst_10 = arith.constant dense<-0.004423e+00> : tensor<48x384x1x1xf32>
    %cst_11 = arith.constant dense<0.002131e+00> : tensor<192x48x3x3xf32>
    %cst_12 = arith.constant dense<0.003270e+00> : tensor<192x48x1x1xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_14 = arith.constant dense<0.007032e+00> : tensor<48x256x1x1xf32>
    %cst_15 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_16 = arith.constant dense<0.013132e+00> : tensor<128x32x3x3xf32>
    %cst_17 = arith.constant dense<0.018342e+00> : tensor<128x32x1x1xf32>
    %cst_18 = arith.constant dense<0.001721e+00> : tensor<32x256x1x1xf32>
    %cst_19 = arith.constant dense<-0.017481e+00> : tensor<128x32x3x3xf32>
    %cst_20 = arith.constant dense<-0.000010e+00> : tensor<128x32x1x1xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_22 = arith.constant dense<0.012083e+00> : tensor<32x128x1x1xf32>
    %cst_23 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_24 = arith.constant dense<-0.001915e+00> : tensor<64x16x3x3xf32>
    %cst_25 = arith.constant dense<-0.005632e+00> : tensor<64x16x1x1xf32>
    %cst_26 = arith.constant dense<0.005635e+00> : tensor<16x128x1x1xf32>
    %cst_27 = arith.constant dense<-0.002743e+00> : tensor<64x16x3x3xf32>
    %cst_28 = arith.constant dense<0.005728e+00> : tensor<64x16x1x1xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_30 = arith.constant dense<-0.004871e+00> : tensor<16x96x1x1xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_32 = arith.constant dense<0.021716e+00> : tensor<96x3x7x7xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_34 = arith.constant 0.000000e+00 : f32
    %cst_35 = arith.constant -3.40282347E+38 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = tensor.empty() : tensor<1x96x13x13xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_33 : tensor<96xf32>) outs(%0 : tensor<1x96x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x13x13xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%arg0, %cst_32 : tensor<1x3x32x32xf32>, tensor<96x3x7x7xf32>) outs(%1 : tensor<1x96x13x13xf32>) -> tensor<1x96x13x13xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x96x13x13xf32>) outs(%0 : tensor<1x96x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x96x13x13xf32>
    %padded = tensor.pad %3 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x96x13x13xf32> to tensor<1x96x15x15xf32>
    %4 = tensor.empty() : tensor<1x96x6x6xf32>
    %5 = linalg.fill ins(%cst_35 : f32) outs(%4 : tensor<1x96x6x6xf32>) -> tensor<1x96x6x6xf32>
    %6 = tensor.empty() : tensor<3x3xf32>
    %7 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %6 : tensor<1x96x15x15xf32>, tensor<3x3xf32>) outs(%5 : tensor<1x96x6x6xf32>) -> tensor<1x96x6x6xf32>
    %8 = tensor.empty() : tensor<1x16x6x6xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<16xf32>) outs(%8 : tensor<1x16x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x6x6xf32>
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%7, %cst_30 : tensor<1x96x6x6xf32>, tensor<16x96x1x1xf32>) outs(%9 : tensor<1x16x6x6xf32>) -> tensor<1x16x6x6xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x16x6x6xf32>) outs(%8 : tensor<1x16x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x16x6x6xf32>
    %12 = tensor.empty() : tensor<1x64x6x6xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29 : tensor<64xf32>) outs(%12 : tensor<1x64x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x6x6xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%11, %cst_28 : tensor<1x16x6x6xf32>, tensor<64x16x1x1xf32>) outs(%13 : tensor<1x64x6x6xf32>) -> tensor<1x64x6x6xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x6x6xf32>) outs(%12 : tensor<1x64x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x6x6xf32>
    %padded_36 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x16x6x6xf32> to tensor<1x16x8x8xf32>
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_36, %cst_27 : tensor<1x16x8x8xf32>, tensor<64x16x3x3xf32>) outs(%13 : tensor<1x64x6x6xf32>) -> tensor<1x64x6x6xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x64x6x6xf32>) outs(%12 : tensor<1x64x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x6x6xf32>
    %18 = tensor.empty() : tensor<1x128x6x6xf32>
    %inserted_slice = tensor.insert_slice %15 into %18[0, 0, 0, 0] [1, 64, 6, 6] [1, 1, 1, 1] : tensor<1x64x6x6xf32> into tensor<1x128x6x6xf32>
    %inserted_slice_37 = tensor.insert_slice %17 into %inserted_slice[0, 64, 0, 0] [1, 64, 6, 6] [1, 1, 1, 1] : tensor<1x64x6x6xf32> into tensor<1x128x6x6xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_37, %cst_26 : tensor<1x128x6x6xf32>, tensor<16x128x1x1xf32>) outs(%9 : tensor<1x16x6x6xf32>) -> tensor<1x16x6x6xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x16x6x6xf32>) outs(%8 : tensor<1x16x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x16x6x6xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_25 : tensor<1x16x6x6xf32>, tensor<64x16x1x1xf32>) outs(%13 : tensor<1x64x6x6xf32>) -> tensor<1x64x6x6xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x64x6x6xf32>) outs(%12 : tensor<1x64x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x6x6xf32>
    %padded_38 = tensor.pad %20 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x16x6x6xf32> to tensor<1x16x8x8xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_38, %cst_24 : tensor<1x16x8x8xf32>, tensor<64x16x3x3xf32>) outs(%13 : tensor<1x64x6x6xf32>) -> tensor<1x64x6x6xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x6x6xf32>) outs(%12 : tensor<1x64x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x6x6xf32>
    %inserted_slice_39 = tensor.insert_slice %22 into %18[0, 0, 0, 0] [1, 64, 6, 6] [1, 1, 1, 1] : tensor<1x64x6x6xf32> into tensor<1x128x6x6xf32>
    %inserted_slice_40 = tensor.insert_slice %24 into %inserted_slice_39[0, 64, 0, 0] [1, 64, 6, 6] [1, 1, 1, 1] : tensor<1x64x6x6xf32> into tensor<1x128x6x6xf32>
    %25 = tensor.empty() : tensor<1x32x6x6xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_23 : tensor<32xf32>) outs(%25 : tensor<1x32x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x6x6xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_40, %cst_22 : tensor<1x128x6x6xf32>, tensor<32x128x1x1xf32>) outs(%26 : tensor<1x32x6x6xf32>) -> tensor<1x32x6x6xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x32x6x6xf32>) outs(%25 : tensor<1x32x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x32x6x6xf32>
    %29 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21 : tensor<128xf32>) outs(%18 : tensor<1x128x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x6x6xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %cst_20 : tensor<1x32x6x6xf32>, tensor<128x32x1x1xf32>) outs(%29 : tensor<1x128x6x6xf32>) -> tensor<1x128x6x6xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x6x6xf32>) outs(%18 : tensor<1x128x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x6x6xf32>
    %padded_41 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x32x6x6xf32> to tensor<1x32x8x8xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %cst_19 : tensor<1x32x8x8xf32>, tensor<128x32x3x3xf32>) outs(%29 : tensor<1x128x6x6xf32>) -> tensor<1x128x6x6xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x128x6x6xf32>) outs(%18 : tensor<1x128x6x6xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x6x6xf32>
    %34 = tensor.empty() : tensor<1x256x6x6xf32>
    %inserted_slice_42 = tensor.insert_slice %31 into %34[0, 0, 0, 0] [1, 128, 6, 6] [1, 1, 1, 1] : tensor<1x128x6x6xf32> into tensor<1x256x6x6xf32>
    %inserted_slice_43 = tensor.insert_slice %33 into %inserted_slice_42[0, 128, 0, 0] [1, 128, 6, 6] [1, 1, 1, 1] : tensor<1x128x6x6xf32> into tensor<1x256x6x6xf32>
    %padded_44 = tensor.pad %inserted_slice_43 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x256x6x6xf32> to tensor<1x256x8x8xf32>
    %35 = tensor.empty() : tensor<1x256x3x3xf32>
    %36 = linalg.fill ins(%cst_35 : f32) outs(%35 : tensor<1x256x3x3xf32>) -> tensor<1x256x3x3xf32>
    %37 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_44, %6 : tensor<1x256x8x8xf32>, tensor<3x3xf32>) outs(%36 : tensor<1x256x3x3xf32>) -> tensor<1x256x3x3xf32>
    %38 = tensor.empty() : tensor<1x32x3x3xf32>
    %39 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_23 : tensor<32xf32>) outs(%38 : tensor<1x32x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x3x3xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%37, %cst_18 : tensor<1x256x3x3xf32>, tensor<32x256x1x1xf32>) outs(%39 : tensor<1x32x3x3xf32>) -> tensor<1x32x3x3xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x32x3x3xf32>) outs(%38 : tensor<1x32x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x32x3x3xf32>
    %42 = tensor.empty() : tensor<1x128x3x3xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_21 : tensor<128xf32>) outs(%42 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x3x3xf32>
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_17 : tensor<1x32x3x3xf32>, tensor<128x32x1x1xf32>) outs(%43 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x128x3x3xf32>) outs(%42 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x3x3xf32>
    %padded_45 = tensor.pad %41 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x32x3x3xf32> to tensor<1x32x5x5xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_45, %cst_16 : tensor<1x32x5x5xf32>, tensor<128x32x3x3xf32>) outs(%43 : tensor<1x128x3x3xf32>) -> tensor<1x128x3x3xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x128x3x3xf32>) outs(%42 : tensor<1x128x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x3x3xf32>
    %inserted_slice_46 = tensor.insert_slice %45 into %35[0, 0, 0, 0] [1, 128, 3, 3] [1, 1, 1, 1] : tensor<1x128x3x3xf32> into tensor<1x256x3x3xf32>
    %inserted_slice_47 = tensor.insert_slice %47 into %inserted_slice_46[0, 128, 0, 0] [1, 128, 3, 3] [1, 1, 1, 1] : tensor<1x128x3x3xf32> into tensor<1x256x3x3xf32>
    %48 = tensor.empty() : tensor<1x48x3x3xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_15 : tensor<48xf32>) outs(%48 : tensor<1x48x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x3x3xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_47, %cst_14 : tensor<1x256x3x3xf32>, tensor<48x256x1x1xf32>) outs(%49 : tensor<1x48x3x3xf32>) -> tensor<1x48x3x3xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x48x3x3xf32>) outs(%48 : tensor<1x48x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x48x3x3xf32>
    %52 = tensor.empty() : tensor<1x192x3x3xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<192xf32>) outs(%52 : tensor<1x192x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x3x3xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%51, %cst_12 : tensor<1x48x3x3xf32>, tensor<192x48x1x1xf32>) outs(%53 : tensor<1x192x3x3xf32>) -> tensor<1x192x3x3xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54 : tensor<1x192x3x3xf32>) outs(%52 : tensor<1x192x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x192x3x3xf32>
    %padded_48 = tensor.pad %51 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x48x3x3xf32> to tensor<1x48x5x5xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_48, %cst_11 : tensor<1x48x5x5xf32>, tensor<192x48x3x3xf32>) outs(%53 : tensor<1x192x3x3xf32>) -> tensor<1x192x3x3xf32>
    %57 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x192x3x3xf32>) outs(%52 : tensor<1x192x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x192x3x3xf32>
    %58 = tensor.empty() : tensor<1x384x3x3xf32>
    %inserted_slice_49 = tensor.insert_slice %55 into %58[0, 0, 0, 0] [1, 192, 3, 3] [1, 1, 1, 1] : tensor<1x192x3x3xf32> into tensor<1x384x3x3xf32>
    %inserted_slice_50 = tensor.insert_slice %57 into %inserted_slice_49[0, 192, 0, 0] [1, 192, 3, 3] [1, 1, 1, 1] : tensor<1x192x3x3xf32> into tensor<1x384x3x3xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_50, %cst_10 : tensor<1x384x3x3xf32>, tensor<48x384x1x1xf32>) outs(%49 : tensor<1x48x3x3xf32>) -> tensor<1x48x3x3xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x48x3x3xf32>) outs(%48 : tensor<1x48x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x48x3x3xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %cst_9 : tensor<1x48x3x3xf32>, tensor<192x48x1x1xf32>) outs(%53 : tensor<1x192x3x3xf32>) -> tensor<1x192x3x3xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x192x3x3xf32>) outs(%52 : tensor<1x192x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x192x3x3xf32>
    %padded_51 = tensor.pad %60 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x48x3x3xf32> to tensor<1x48x5x5xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_51, %cst_8 : tensor<1x48x5x5xf32>, tensor<192x48x3x3xf32>) outs(%53 : tensor<1x192x3x3xf32>) -> tensor<1x192x3x3xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x192x3x3xf32>) outs(%52 : tensor<1x192x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x192x3x3xf32>
    %inserted_slice_52 = tensor.insert_slice %62 into %58[0, 0, 0, 0] [1, 192, 3, 3] [1, 1, 1, 1] : tensor<1x192x3x3xf32> into tensor<1x384x3x3xf32>
    %inserted_slice_53 = tensor.insert_slice %64 into %inserted_slice_52[0, 192, 0, 0] [1, 192, 3, 3] [1, 1, 1, 1] : tensor<1x192x3x3xf32> into tensor<1x384x3x3xf32>
    %65 = tensor.empty() : tensor<1x64x3x3xf32>
    %66 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29 : tensor<64xf32>) outs(%65 : tensor<1x64x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x3x3xf32>
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_53, %cst_7 : tensor<1x384x3x3xf32>, tensor<64x384x1x1xf32>) outs(%66 : tensor<1x64x3x3xf32>) -> tensor<1x64x3x3xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x64x3x3xf32>) outs(%65 : tensor<1x64x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x3x3xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<256xf32>) outs(%35 : tensor<1x256x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x3x3xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_5 : tensor<1x64x3x3xf32>, tensor<256x64x1x1xf32>) outs(%69 : tensor<1x256x3x3xf32>) -> tensor<1x256x3x3xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x256x3x3xf32>) outs(%35 : tensor<1x256x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x3x3xf32>
    %padded_54 = tensor.pad %68 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x64x3x3xf32> to tensor<1x64x5x5xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_54, %cst_4 : tensor<1x64x5x5xf32>, tensor<256x64x3x3xf32>) outs(%69 : tensor<1x256x3x3xf32>) -> tensor<1x256x3x3xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x256x3x3xf32>) outs(%35 : tensor<1x256x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x3x3xf32>
    %74 = tensor.empty() : tensor<1x512x3x3xf32>
    %inserted_slice_55 = tensor.insert_slice %71 into %74[0, 0, 0, 0] [1, 256, 3, 3] [1, 1, 1, 1] : tensor<1x256x3x3xf32> into tensor<1x512x3x3xf32>
    %inserted_slice_56 = tensor.insert_slice %73 into %inserted_slice_55[0, 256, 0, 0] [1, 256, 3, 3] [1, 1, 1, 1] : tensor<1x256x3x3xf32> into tensor<1x512x3x3xf32>
    %padded_57 = tensor.pad %inserted_slice_56 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_35 : f32
    } : tensor<1x512x3x3xf32> to tensor<1x512x5x5xf32>
    %75 = tensor.empty() : tensor<1x512x1x1xf32>
    %76 = linalg.fill ins(%cst_35 : f32) outs(%75 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %77 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_57, %6 : tensor<1x512x5x5xf32>, tensor<3x3xf32>) outs(%76 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %78 = tensor.empty() : tensor<1x64x1x1xf32>
    %79 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29 : tensor<64xf32>) outs(%78 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_3 : tensor<1x512x1x1xf32>, tensor<64x512x1x1xf32>) outs(%79 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x64x1x1xf32>) outs(%78 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x1x1xf32>
    %82 = tensor.empty() : tensor<1x256x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<256xf32>) outs(%82 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x1x1xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%81, %cst_2 : tensor<1x64x1x1xf32>, tensor<256x64x1x1xf32>) outs(%83 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x256x1x1xf32>) outs(%82 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x1x1xf32>
    %padded_58 = tensor.pad %81 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x64x1x1xf32> to tensor<1x64x3x3xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_58, %cst_1 : tensor<1x64x3x3xf32>, tensor<256x64x3x3xf32>) outs(%83 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %87 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x256x1x1xf32>) outs(%82 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x1x1xf32>
    %inserted_slice_59 = tensor.insert_slice %85 into %75[0, 0, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x512x1x1xf32>
    %inserted_slice_60 = tensor.insert_slice %87 into %inserted_slice_59[0, 256, 0, 0] [1, 256, 1, 1] [1, 1, 1, 1] : tensor<1x256x1x1xf32> into tensor<1x512x1x1xf32>
    %88 = tensor.empty() : tensor<1x1000x1x1xf32>
    %89 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : tensor<1000xf32>) outs(%88 : tensor<1x1000x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x1x1xf32>
    %90 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_60, %cst : tensor<1x512x1x1xf32>, tensor<1000x512x1x1xf32>) outs(%89 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %91 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x1000x1x1xf32>) outs(%88 : tensor<1x1000x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %95 = arith.cmpf ugt, %in, %cst_34 : f32
      %96 = arith.select %95, %in, %cst_34 : f32
      linalg.yield %96 : f32
    } -> tensor<1x1000x1x1xf32>
    %92 = linalg.fill ins(%cst_34 : f32) outs(%88 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %93 = tensor.empty() : tensor<1x1xf32>
    %94 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %93 : tensor<1x1000x1x1xf32>, tensor<1x1xf32>) outs(%92 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %collapsed = tensor.collapse_shape %94 [[0], [1, 2, 3]] : tensor<1x1000x1x1xf32> into tensor<1x1000xf32>
    return %collapsed : tensor<1x1000xf32>
  }
}
