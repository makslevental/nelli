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
    %cst = arith.constant dense<-0.029730e+00> : tensor<1000x512xf32>
    %cst_0 = arith.constant dense<-0.015749e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.007171e+00> : tensor<512x512x3x3xf32>
    %cst_2 = arith.constant dense<0.008624e+00> : tensor<512x512x3x3xf32>
    %cst_3 = arith.constant dense<-0.005556e+00> : tensor<512x512x3x3xf32>
    %cst_4 = arith.constant dense<-0.010148e+00> : tensor<512x512x3x3xf32>
    %cst_5 = arith.constant dense<-0.006130e+00> : tensor<512x256x1x1xf32>
    %cst_6 = arith.constant dense<0.006279e+00> : tensor<512x512x3x3xf32>
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_8 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_9 = arith.constant dense<-0.007589e+00> : tensor<512x256x3x3xf32>
    %cst_10 = arith.constant dense<0.004256e+00> : tensor<256x256x3x3xf32>
    %cst_11 = arith.constant dense<-0.015598e+00> : tensor<256x256x3x3xf32>
    %cst_12 = arith.constant dense<0.000178e+00> : tensor<256x256x3x3xf32>
    %cst_13 = arith.constant dense<0.006933e+00> : tensor<256x256x3x3xf32>
    %cst_14 = arith.constant dense<-0.007195e+00> : tensor<256x256x3x3xf32>
    %cst_15 = arith.constant dense<0.000705e+00> : tensor<256x256x3x3xf32>
    %cst_16 = arith.constant dense<-0.001351e+00> : tensor<256x256x3x3xf32>
    %cst_17 = arith.constant dense<-0.020113e+00> : tensor<256x256x3x3xf32>
    %cst_18 = arith.constant dense<-0.011833e+00> : tensor<256x256x3x3xf32>
    %cst_19 = arith.constant dense<-0.005806e+00> : tensor<256x256x3x3xf32>
    %cst_20 = arith.constant dense<-0.011738e+00> : tensor<256x128x1x1xf32>
    %cst_21 = arith.constant dense<0.022084e+00> : tensor<256x256x3x3xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_23 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_24 = arith.constant dense<-0.001932e+00> : tensor<256x128x3x3xf32>
    %cst_25 = arith.constant dense<0.005254e+00> : tensor<128x128x3x3xf32>
    %cst_26 = arith.constant dense<0.000857e+00> : tensor<128x128x3x3xf32>
    %cst_27 = arith.constant dense<0.012466e+00> : tensor<128x128x3x3xf32>
    %cst_28 = arith.constant dense<0.008783e+00> : tensor<128x128x3x3xf32>
    %cst_29 = arith.constant dense<-0.011046e+00> : tensor<128x128x3x3xf32>
    %cst_30 = arith.constant dense<0.011040e+00> : tensor<128x128x3x3xf32>
    %cst_31 = arith.constant dense<0.007459e+00> : tensor<128x64x1x1xf32>
    %cst_32 = arith.constant dense<-0.014144e+00> : tensor<128x128x3x3xf32>
    %cst_33 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_34 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_35 = arith.constant dense<-0.007095e+00> : tensor<128x64x3x3xf32>
    %cst_36 = arith.constant dense<-0.010669e+00> : tensor<64x64x3x3xf32>
    %cst_37 = arith.constant dense<-0.006777e+00> : tensor<64x64x3x3xf32>
    %cst_38 = arith.constant dense<-0.010073e+00> : tensor<64x64x3x3xf32>
    %cst_39 = arith.constant dense<0.004350e+00> : tensor<64x64x3x3xf32>
    %cst_40 = arith.constant dense<0.016374e+00> : tensor<64x64x3x3xf32>
    %cst_41 = arith.constant dense<0.005892e+00> : tensor<64x64x3x3xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_43 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_44 = arith.constant dense<-0.009924e+00> : tensor<64x3x7x7xf32>
    %cst_45 = arith.constant 0.000000e+00 : f32
    %cst_46 = arith.constant -3.40282347E+38 : f32
    %cst_47 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_45 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_44 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_48 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_46 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_46 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_48, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %padded_49 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %10 = linalg.fill ins(%cst_45 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_49, %cst_41 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x8x8xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_50 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_50, %cst_40 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %9 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x64x8x8xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_51 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_51, %cst_39 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%18 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x8x8xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_52 = tensor.pad %20 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_52, %cst_38 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%21 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x8x8xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %17 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x64x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_53 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_53, %cst_37 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x8x8xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_54 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_54, %cst_36 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %29 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%28 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x64x8x8xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %24 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x64x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_55 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %32 = tensor.empty() : tensor<1x128x4x4xf32>
    %33 = linalg.fill ins(%cst_45 : f32) outs(%32 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_55, %cst_35 : tensor<1x64x10x10xf32>, tensor<128x64x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %35 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%34 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %36 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_56 = tensor.pad %36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %37 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_56, %cst_32 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %38 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%37 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%31, %cst_31 : tensor<1x64x8x8xf32>, tensor<128x64x1x1xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %40 : tensor<1x128x4x4xf32>, tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x128x4x4xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_57 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_57, %cst_30 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%43 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_58 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_58, %cst_29 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%46 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %42 : tensor<1x128x4x4xf32>, tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x128x4x4xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_59 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_59, %cst_28 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_60 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_60, %cst_27 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %54 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%53 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %49 : tensor<1x128x4x4xf32>, tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x128x4x4xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_61 = tensor.pad %56 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_61, %cst_26 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%57 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_62 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_62, %cst_25 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%33 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %61 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_34, %cst_33, %cst_33, %cst_34 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%60 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x128x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %56 : tensor<1x128x4x4xf32>, tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x128x4x4xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x128x4x4xf32>) outs(%32 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_63 = tensor.pad %63 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %64 = tensor.empty() : tensor<1x256x2x2xf32>
    %65 = linalg.fill ins(%cst_45 : f32) outs(%64 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_63, %cst_24 : tensor<1x128x6x6xf32>, tensor<256x128x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%66 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_64 = tensor.pad %68 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_64, %cst_21 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%69 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %71 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%63, %cst_20 : tensor<1x128x4x4xf32>, tensor<256x128x1x1xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%71 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %72 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x256x2x2xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_65 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_65, %cst_19 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%75 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_66 = tensor.pad %77 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_66, %cst_18 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%78 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %74 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x256x2x2xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_67 = tensor.pad %81 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_67, %cst_17 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%82 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_68 = tensor.pad %84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_68, %cst_16 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%85 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %81 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x256x2x2xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_69 = tensor.pad %88 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_69, %cst_15 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%89 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_70 = tensor.pad %91 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_70, %cst_14 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%92 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %88 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x256x2x2xf32>
    %95 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_71 = tensor.pad %95 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %96 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_71, %cst_13 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %97 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%96 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_72 = tensor.pad %98 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %99 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_72, %cst_12 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%99 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %95 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x256x2x2xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_73 = tensor.pad %102 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_73, %cst_11 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%103 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_74 = tensor.pad %105 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_74, %cst_10 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%65 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_23, %cst_22, %cst_22, %cst_23 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%106 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x256x2x2xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %102 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x256x2x2xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x256x2x2xf32>) outs(%64 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_75 = tensor.pad %109 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %110 = tensor.empty() : tensor<1x512x1x1xf32>
    %111 = linalg.fill ins(%cst_45 : f32) outs(%110 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_75, %cst_9 : tensor<1x256x4x4xf32>, tensor<512x256x3x3xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %113 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%112 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_76 = tensor.pad %114 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %115 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_76, %cst_6 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %116 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%115 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %117 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%109, %cst_5 : tensor<1x256x2x2xf32>, tensor<512x256x1x1xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%117 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %119 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %118 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x512x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_77 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_77, %cst_4 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %123 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_78 = tensor.pad %123 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_78, %cst_3 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%124 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %126 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %120 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x512x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_79 = tensor.pad %127 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_79, %cst_2 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%128 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_80 = tensor.pad %130 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_45 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %cst_1 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_8, %cst_7, %cst_7, %cst_8 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%131 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %in_82: f32, %in_83: f32, %in_84: f32, %out: f32):
      %143 = arith.truncf %cst_47 : f64 to f32
      %144 = arith.addf %in_84, %143 : f32
      %145 = math.rsqrt %144 : f32
      %146 = arith.subf %in, %in_83 : f32
      %147 = arith.mulf %146, %145 : f32
      %148 = arith.mulf %147, %in_81 : f32
      %149 = arith.addf %148, %in_82 : f32
      linalg.yield %149 : f32
    } -> tensor<1x512x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %127 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x512x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x512x1x1xf32>) outs(%110 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %143 = arith.cmpf ugt, %in, %cst_45 : f32
      %144 = arith.select %143, %in, %cst_45 : f32
      linalg.yield %144 : f32
    } -> tensor<1x512x1x1xf32>
    %135 = tensor.empty() : tensor<1x1xf32>
    %136 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %135 : tensor<1x512x1x1xf32>, tensor<1x1xf32>) outs(%111 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %collapsed = tensor.collapse_shape %136 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %137 = tensor.empty() : tensor<512x1000xf32>
    %138 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x512xf32>) outs(%137 : tensor<512x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1000xf32>
    %139 = tensor.empty() : tensor<1x1000xf32>
    %140 = linalg.fill ins(%cst_45 : f32) outs(%139 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %141 = linalg.matmul ins(%collapsed, %138 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%140 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %142 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%141, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%139 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_81: f32, %out: f32):
      %143 = arith.addf %in, %in_81 : f32
      linalg.yield %143 : f32
    } -> tensor<1x1000xf32>
    return %142 : tensor<1x1000xf32>
  }
}
