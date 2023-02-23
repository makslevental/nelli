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
    %cst = arith.constant dense<0.014989e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<-0.028272e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.003452e+00> : tensor<2048x512x1x1xf32>
    %cst_2 = arith.constant dense<0.002386e+00> : tensor<512x512x3x3xf32>
    %cst_3 = arith.constant dense<0.009704e+00> : tensor<512x2048x1x1xf32>
    %cst_4 = arith.constant dense<0.000886e+00> : tensor<2048x512x1x1xf32>
    %cst_5 = arith.constant dense<-0.014523e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<-0.022512e+00> : tensor<512x2048x1x1xf32>
    %cst_7 = arith.constant dense<-0.014657e+00> : tensor<2048x1024x1x1xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2048xf32>
    %cst_10 = arith.constant dense<0.002566e+00> : tensor<2048x512x1x1xf32>
    %cst_11 = arith.constant dense<0.000629e+00> : tensor<512x512x3x3xf32>
    %cst_12 = arith.constant dense<0.016890e+00> : tensor<512x1024x1x1xf32>
    %cst_13 = arith.constant dense<0.009384e+00> : tensor<1024x256x1x1xf32>
    %cst_14 = arith.constant dense<0.008259e+00> : tensor<256x256x3x3xf32>
    %cst_15 = arith.constant dense<-0.006773e+00> : tensor<256x1024x1x1xf32>
    %cst_16 = arith.constant dense<0.006056e+00> : tensor<1024x256x1x1xf32>
    %cst_17 = arith.constant dense<0.004668e+00> : tensor<256x256x3x3xf32>
    %cst_18 = arith.constant dense<0.007803e+00> : tensor<256x1024x1x1xf32>
    %cst_19 = arith.constant dense<-0.003455e+00> : tensor<1024x256x1x1xf32>
    %cst_20 = arith.constant dense<-0.008625e+00> : tensor<256x256x3x3xf32>
    %cst_21 = arith.constant dense<-0.004170e+00> : tensor<256x1024x1x1xf32>
    %cst_22 = arith.constant dense<-0.003277e+00> : tensor<1024x256x1x1xf32>
    %cst_23 = arith.constant dense<0.004825e+00> : tensor<256x256x3x3xf32>
    %cst_24 = arith.constant dense<-0.007809e+00> : tensor<256x1024x1x1xf32>
    %cst_25 = arith.constant dense<0.000705e+00> : tensor<1024x256x1x1xf32>
    %cst_26 = arith.constant dense<0.000552e+00> : tensor<256x256x3x3xf32>
    %cst_27 = arith.constant dense<0.007712e+00> : tensor<256x1024x1x1xf32>
    %cst_28 = arith.constant dense<-0.002993e+00> : tensor<1024x512x1x1xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_30 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_31 = arith.constant dense<-0.000837e+00> : tensor<1024x256x1x1xf32>
    %cst_32 = arith.constant dense<0.009722e+00> : tensor<256x256x3x3xf32>
    %cst_33 = arith.constant dense<-0.008074e+00> : tensor<256x512x1x1xf32>
    %cst_34 = arith.constant dense<-0.014085e+00> : tensor<512x128x1x1xf32>
    %cst_35 = arith.constant dense<0.000241e+00> : tensor<128x128x3x3xf32>
    %cst_36 = arith.constant dense<-0.000341e+00> : tensor<128x512x1x1xf32>
    %cst_37 = arith.constant dense<0.000776e+00> : tensor<512x128x1x1xf32>
    %cst_38 = arith.constant dense<0.001861e+00> : tensor<128x128x3x3xf32>
    %cst_39 = arith.constant dense<-0.002991e+00> : tensor<128x512x1x1xf32>
    %cst_40 = arith.constant dense<0.005365e+00> : tensor<512x128x1x1xf32>
    %cst_41 = arith.constant dense<-0.004407e+00> : tensor<128x128x3x3xf32>
    %cst_42 = arith.constant dense<-0.013481e+00> : tensor<128x512x1x1xf32>
    %cst_43 = arith.constant dense<0.013587e+00> : tensor<512x256x1x1xf32>
    %cst_44 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_45 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_46 = arith.constant dense<0.006052e+00> : tensor<512x128x1x1xf32>
    %cst_47 = arith.constant dense<0.003680e+00> : tensor<128x128x3x3xf32>
    %cst_48 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_49 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_50 = arith.constant dense<-0.006108e+00> : tensor<128x256x1x1xf32>
    %cst_51 = arith.constant dense<0.009108e+00> : tensor<256x64x1x1xf32>
    %cst_52 = arith.constant dense<0.014461e+00> : tensor<64x64x3x3xf32>
    %cst_53 = arith.constant dense<0.007851e+00> : tensor<64x256x1x1xf32>
    %cst_54 = arith.constant dense<0.004434e+00> : tensor<256x64x1x1xf32>
    %cst_55 = arith.constant dense<-0.007818e+00> : tensor<64x64x3x3xf32>
    %cst_56 = arith.constant dense<0.009119e+00> : tensor<64x256x1x1xf32>
    %cst_57 = arith.constant dense<-0.000239e+00> : tensor<256x64x1x1xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_59 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_60 = arith.constant dense<0.019609e+00> : tensor<256x64x1x1xf32>
    %cst_61 = arith.constant dense<-0.004860e+00> : tensor<64x64x3x3xf32>
    %cst_62 = arith.constant dense<0.005646e+00> : tensor<64x64x1x1xf32>
    %cst_63 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_64 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_65 = arith.constant dense<-0.004570e+00> : tensor<64x3x7x7xf32>
    %cst_66 = arith.constant 0.000000e+00 : f32
    %cst_67 = arith.constant -3.40282347E+38 : f32
    %cst_68 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_66 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_65 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_69 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_67 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_67 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_69, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %10 = linalg.fill ins(%cst_66 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_62 : tensor<1x64x8x8xf32>, tensor<64x64x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x8x8xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_70 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_70, %cst_61 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x8x8xf32>
    %17 = tensor.empty() : tensor<1x256x8x8xf32>
    %18 = linalg.fill ins(%cst_66 : f32) outs(%17 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_60 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%19 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x8x8xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_57 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%21 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x8x8xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %22 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x256x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_56 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x8x8xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_71 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_71, %cst_55 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %29 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%28 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x8x8xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x8x8xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %cst_54 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%31 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x8x8xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %24 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x256x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %cst_53 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x8x8xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_72 = tensor.pad %37 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_72, %cst_52 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%38 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x64x8x8xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x64x8x8xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_51 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%41 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x8x8xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %34 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x256x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x8x8xf32>
    %45 = tensor.empty() : tensor<1x128x8x8xf32>
    %46 = linalg.fill ins(%cst_66 : f32) outs(%45 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_50 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%46 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%47 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x8x8xf32>) outs(%45 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_73 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %50 = tensor.empty() : tensor<1x128x4x4xf32>
    %51 = linalg.fill ins(%cst_66 : f32) outs(%50 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_73, %cst_47 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%52 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %55 = tensor.empty() : tensor<1x512x4x4xf32>
    %56 = linalg.fill ins(%cst_66 : f32) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_46 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%57 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x4x4xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%44, %cst_43 : tensor<1x256x8x8xf32>, tensor<512x256x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%59 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x4x4xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %60 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x512x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_42 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%63 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_74 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_74, %cst_41 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%66 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_40 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%69 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %62 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x512x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_39 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%73 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_75 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_75, %cst_38 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%76 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_37 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%79 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %72 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x512x4x4xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_36 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%83 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_76 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_76, %cst_35 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_49, %cst_48, %cst_48, %cst_49 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%86 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x128x4x4xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x128x4x4xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_34 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%89 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %82 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x512x4x4xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x4x4xf32>
    %93 = tensor.empty() : tensor<1x256x4x4xf32>
    %94 = linalg.fill ins(%cst_66 : f32) outs(%93 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_33 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%94 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%95 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x4x4xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x256x4x4xf32>) outs(%93 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_77 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %98 = tensor.empty() : tensor<1x256x2x2xf32>
    %99 = linalg.fill ins(%cst_66 : f32) outs(%98 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_77, %cst_32 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%100 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %103 = tensor.empty() : tensor<1x1024x2x2xf32>
    %104 = linalg.fill ins(%cst_66 : f32) outs(%103 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_31 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %106 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%105 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%92, %cst_28 : tensor<1x512x4x4xf32>, tensor<1024x512x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%107 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %108 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1024x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_27 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%111 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_78 = tensor.pad %113 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_78, %cst_26 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%114 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %117 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%116, %cst_25 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%117 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %110 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1024x2x2xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %cst_24 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%121 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_79 = tensor.pad %123 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_79, %cst_23 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%124 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%126, %cst_22 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%127 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %120 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1024x2x2xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_21 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%131 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_80 = tensor.pad %133 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %cst_20 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%134 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_19 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%137 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %130 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1024x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %cst_18 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%141 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_81 = tensor.pad %143 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_81, %cst_17 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%144 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_16 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%147 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %140 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1024x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_15 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%151 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_82 = tensor.pad %153 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_82, %cst_14 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%154 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x256x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x2x2xf32>) outs(%98 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x256x2x2xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_13 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_30, %cst_29, %cst_29, %cst_30 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%157 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x1024x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %150 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1024x2x2xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x1024x2x2xf32>) outs(%103 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x1024x2x2xf32>
    %161 = tensor.empty() : tensor<1x512x2x2xf32>
    %162 = linalg.fill ins(%cst_66 : f32) outs(%161 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %163 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%160, %cst_12 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%162 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%163 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x2x2xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x512x2x2xf32>) outs(%161 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_83 = tensor.pad %165 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %166 = tensor.empty() : tensor<1x512x1x1xf32>
    %167 = linalg.fill ins(%cst_66 : f32) outs(%166 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_83, %cst_11 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%167 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%168 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x1x1xf32>) outs(%166 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x1x1xf32>
    %171 = tensor.empty() : tensor<1x2048x1x1xf32>
    %172 = linalg.fill ins(%cst_66 : f32) outs(%171 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_10 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%172 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %174 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%173 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x2048x1x1xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%160, %cst_7 : tensor<1x1024x2x2xf32>, tensor<2048x1024x1x1xf32>) outs(%172 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%175 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x2048x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %176 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%171 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x2048x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177 : tensor<1x2048x1x1xf32>) outs(%171 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %cst_6 : tensor<1x2048x1x1xf32>, tensor<512x2048x1x1xf32>) outs(%167 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%179 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x512x1x1xf32>) outs(%166 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_84 = tensor.pad %181 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_84, %cst_5 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%167 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %183 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%182 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x512x1x1xf32>) outs(%166 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x1x1xf32>
    %185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_4 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%172 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %186 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%185 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x2048x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %178 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%171 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x2048x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x2048x1x1xf32>) outs(%171 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_3 : tensor<1x2048x1x1xf32>, tensor<512x2048x1x1xf32>) outs(%167 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%189 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x1x1xf32>
    %191 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x512x1x1xf32>) outs(%166 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_85 = tensor.pad %191 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_66 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %192 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_85, %cst_2 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%167 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %193 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %cst_45, %cst_44, %cst_44, %cst_45 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%192 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x512x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x512x1x1xf32>) outs(%166 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x512x1x1xf32>
    %195 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%194, %cst_1 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%172 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%195 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %in_87: f32, %in_88: f32, %in_89: f32, %out: f32):
      %207 = arith.truncf %cst_68 : f64 to f32
      %208 = arith.addf %in_89, %207 : f32
      %209 = math.rsqrt %208 : f32
      %210 = arith.subf %in, %in_88 : f32
      %211 = arith.mulf %210, %209 : f32
      %212 = arith.mulf %211, %in_86 : f32
      %213 = arith.addf %212, %in_87 : f32
      linalg.yield %213 : f32
    } -> tensor<1x2048x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %188 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%171 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x2048x1x1xf32>
    %198 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x2048x1x1xf32>) outs(%171 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %207 = arith.cmpf ugt, %in, %cst_66 : f32
      %208 = arith.select %207, %in, %cst_66 : f32
      linalg.yield %208 : f32
    } -> tensor<1x2048x1x1xf32>
    %199 = tensor.empty() : tensor<1x1xf32>
    %200 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%198, %199 : tensor<1x2048x1x1xf32>, tensor<1x1xf32>) outs(%172 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %200 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %201 = tensor.empty() : tensor<2048x1000xf32>
    %202 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%201 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %203 = tensor.empty() : tensor<1x1000xf32>
    %204 = linalg.fill ins(%cst_66 : f32) outs(%203 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %205 = linalg.matmul ins(%collapsed, %202 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%204 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %206 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%205, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%203 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_86: f32, %out: f32):
      %207 = arith.addf %in, %in_86 : f32
      linalg.yield %207 : f32
    } -> tensor<1x1000xf32>
    return %206 : tensor<1x1000xf32>
  }
}
