#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1) -> (d1, d0)>
#map8 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "MNASNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<-0.004046e+00> : tensor<1000x1280xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_3 = arith.constant dense<-0.000223e+00> : tensor<1280x320x1x1xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_5 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_6 = arith.constant dense<0.003924e+00> : tensor<320x1152x1x1xf32>
    %cst_7 = arith.constant dense<-0.024534e+00> : tensor<1152x1x3x3xf32>
    %cst_8 = arith.constant dense<0.002137e+00> : tensor<1152x192x1x1xf32>
    %cst_9 = arith.constant dense<-0.007034e+00> : tensor<192x1152x1x1xf32>
    %cst_10 = arith.constant dense<0.002549e+00> : tensor<1152x1x5x5xf32>
    %cst_11 = arith.constant dense<-0.000566e+00> : tensor<1152x192x1x1xf32>
    %cst_12 = arith.constant dense<0.000183e+00> : tensor<192x1152x1x1xf32>
    %cst_13 = arith.constant dense<0.000185e+00> : tensor<1152x1x5x5xf32>
    %cst_14 = arith.constant dense<0.007582e+00> : tensor<1152x192x1x1xf32>
    %cst_15 = arith.constant dense<-0.006953e+00> : tensor<192x1152x1x1xf32>
    %cst_16 = arith.constant dense<0.009149e+00> : tensor<1152x1x5x5xf32>
    %cst_17 = arith.constant dense<0.000000e+00> : tensor<1152xf32>
    %cst_18 = arith.constant dense<1.000000e+00> : tensor<1152xf32>
    %cst_19 = arith.constant dense<0.006649e+00> : tensor<1152x192x1x1xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_21 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_22 = arith.constant dense<0.010883e+00> : tensor<192x576x1x1xf32>
    %cst_23 = arith.constant dense<0.008676e+00> : tensor<576x1x5x5xf32>
    %cst_24 = arith.constant dense<0.005002e+00> : tensor<576x96x1x1xf32>
    %cst_25 = arith.constant dense<-0.006864e+00> : tensor<96x576x1x1xf32>
    %cst_26 = arith.constant dense<0.001510e+00> : tensor<576x1x3x3xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_28 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_29 = arith.constant dense<0.008101e+00> : tensor<576x96x1x1xf32>
    %cst_30 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_31 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_32 = arith.constant dense<-0.017086e+00> : tensor<96x480x1x1xf32>
    %cst_33 = arith.constant dense<0.014749e+00> : tensor<480x1x3x3xf32>
    %cst_34 = arith.constant dense<0.008613e+00> : tensor<480x80x1x1xf32>
    %cst_35 = arith.constant dense<-0.009952e+00> : tensor<80x480x1x1xf32>
    %cst_36 = arith.constant dense<0.017621e+00> : tensor<480x1x5x5xf32>
    %cst_37 = arith.constant dense<-0.003978e+00> : tensor<480x80x1x1xf32>
    %cst_38 = arith.constant dense<-0.002412e+00> : tensor<80x480x1x1xf32>
    %cst_39 = arith.constant dense<0.004826e+00> : tensor<480x1x5x5xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_41 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_42 = arith.constant dense<0.009955e+00> : tensor<480x80x1x1xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_44 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_45 = arith.constant dense<0.002953e+00> : tensor<80x240x1x1xf32>
    %cst_46 = arith.constant dense<0.010805e+00> : tensor<240x1x5x5xf32>
    %cst_47 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_48 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_49 = arith.constant dense<-0.002770e+00> : tensor<240x40x1x1xf32>
    %cst_50 = arith.constant dense<-0.012505e+00> : tensor<40x120x1x1xf32>
    %cst_51 = arith.constant dense<-0.002405e+00> : tensor<120x1x5x5xf32>
    %cst_52 = arith.constant dense<-0.003978e+00> : tensor<120x40x1x1xf32>
    %cst_53 = arith.constant dense<-0.011644e+00> : tensor<40x120x1x1xf32>
    %cst_54 = arith.constant dense<0.009489e+00> : tensor<120x1x5x5xf32>
    %cst_55 = arith.constant dense<0.000000e+00> : tensor<120xf32>
    %cst_56 = arith.constant dense<1.000000e+00> : tensor<120xf32>
    %cst_57 = arith.constant dense<-0.002988e+00> : tensor<120x40x1x1xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_59 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_60 = arith.constant dense<0.003536e+00> : tensor<40x72x1x1xf32>
    %cst_61 = arith.constant dense<-0.005146e+00> : tensor<72x1x5x5xf32>
    %cst_62 = arith.constant dense<-0.014589e+00> : tensor<72x24x1x1xf32>
    %cst_63 = arith.constant dense<0.005754e+00> : tensor<24x72x1x1xf32>
    %cst_64 = arith.constant dense<0.016658e+00> : tensor<72x1x3x3xf32>
    %cst_65 = arith.constant dense<0.004052e+00> : tensor<72x24x1x1xf32>
    %cst_66 = arith.constant dense<-0.000350e+00> : tensor<24x72x1x1xf32>
    %cst_67 = arith.constant dense<0.017571e+00> : tensor<72x1x3x3xf32>
    %cst_68 = arith.constant dense<0.000000e+00> : tensor<72xf32>
    %cst_69 = arith.constant dense<1.000000e+00> : tensor<72xf32>
    %cst_70 = arith.constant dense<-0.004768e+00> : tensor<72x24x1x1xf32>
    %cst_71 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_72 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_73 = arith.constant dense<0.004360e+00> : tensor<24x48x1x1xf32>
    %cst_74 = arith.constant dense<0.001738e+00> : tensor<48x1x3x3xf32>
    %cst_75 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_76 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_77 = arith.constant dense<-0.002453e+00> : tensor<48x16x1x1xf32>
    %cst_78 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_79 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_80 = arith.constant dense<-0.005892e+00> : tensor<16x32x1x1xf32>
    %cst_81 = arith.constant dense<-0.007861e+00> : tensor<32x1x3x3xf32>
    %cst_82 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_83 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_84 = arith.constant dense<0.007025e+00> : tensor<32x3x3x3xf32>
    %false = arith.constant false
    %cst_85 = arith.constant 0.000000e+00 : f32
    %cst_86 = arith.constant 1.000000e-05 : f64
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x32x16x16xf32>
    %1 = linalg.fill ins(%cst_85 : f32) outs(%0 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_84 : tensor<1x3x34x34xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x32x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_87 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %6 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_87, %collapsed : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %7 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%6 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x32x16x16xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x32x16x16xf32>
    %9 = tensor.empty() : tensor<1x16x16x16xf32>
    %10 = linalg.fill ins(%cst_85 : f32) outs(%9 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%8, %cst_80 : tensor<1x32x16x16xf32>, tensor<16x32x1x1xf32>) outs(%10 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%11 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x16x16x16xf32>
    %13 = tensor.empty() : tensor<1x48x16x16xf32>
    %14 = linalg.fill ins(%cst_85 : f32) outs(%13 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%12, %cst_77 : tensor<1x16x16x16xf32>, tensor<48x16x1x1xf32>) outs(%14 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_76, %cst_75, %cst_75, %cst_76 : tensor<1x48x16x16xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%15 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x48x16x16xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x48x16x16xf32>) outs(%13 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x48x16x16xf32>
    %padded_88 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x48x16x16xf32> to tensor<1x48x18x18xf32>
    %18 = tensor.empty() : tensor<1x48x8x8xf32>
    %19 = linalg.fill ins(%cst_85 : f32) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %collapsed_89 = tensor.collapse_shape %cst_74 [[0, 1], [2], [3]] : tensor<48x1x3x3xf32> into tensor<48x3x3xf32>
    %20 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_88, %collapsed_89 : tensor<1x48x18x18xf32>, tensor<48x3x3xf32>) outs(%19 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_76, %cst_75, %cst_75, %cst_76 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%20 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x48x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x48x8x8xf32>) outs(%18 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x48x8x8xf32>
    %23 = tensor.empty() : tensor<1x24x8x8xf32>
    %24 = linalg.fill ins(%cst_85 : f32) outs(%23 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %cst_73 : tensor<1x48x8x8xf32>, tensor<24x48x1x1xf32>) outs(%24 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_72, %cst_71, %cst_71, %cst_72 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%25 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x24x8x8xf32>
    %27 = tensor.empty() : tensor<1x72x8x8xf32>
    %28 = linalg.fill ins(%cst_85 : f32) outs(%27 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%26, %cst_70 : tensor<1x24x8x8xf32>, tensor<72x24x1x1xf32>) outs(%28 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_69, %cst_68, %cst_68, %cst_69 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%29 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x72x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x72x8x8xf32>) outs(%27 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x72x8x8xf32>
    %padded_90 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x72x8x8xf32> to tensor<1x72x10x10xf32>
    %collapsed_91 = tensor.collapse_shape %cst_67 [[0, 1], [2], [3]] : tensor<72x1x3x3xf32> into tensor<72x3x3xf32>
    %32 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_90, %collapsed_91 : tensor<1x72x10x10xf32>, tensor<72x3x3xf32>) outs(%28 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_69, %cst_68, %cst_68, %cst_69 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%32 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x72x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x72x8x8xf32>) outs(%27 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x72x8x8xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %cst_66 : tensor<1x72x8x8xf32>, tensor<24x72x1x1xf32>) outs(%24 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_72, %cst_71, %cst_71, %cst_72 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%35 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x24x8x8xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %26 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%23 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x24x8x8xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%37, %cst_65 : tensor<1x24x8x8xf32>, tensor<72x24x1x1xf32>) outs(%28 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_69, %cst_68, %cst_68, %cst_69 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%38 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x72x8x8xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x72x8x8xf32>) outs(%27 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x72x8x8xf32>
    %padded_92 = tensor.pad %40 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x72x8x8xf32> to tensor<1x72x10x10xf32>
    %collapsed_93 = tensor.collapse_shape %cst_64 [[0, 1], [2], [3]] : tensor<72x1x3x3xf32> into tensor<72x3x3xf32>
    %41 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_92, %collapsed_93 : tensor<1x72x10x10xf32>, tensor<72x3x3xf32>) outs(%28 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_69, %cst_68, %cst_68, %cst_69 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%41 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x72x8x8xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42 : tensor<1x72x8x8xf32>) outs(%27 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x72x8x8xf32>
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%43, %cst_63 : tensor<1x72x8x8xf32>, tensor<24x72x1x1xf32>) outs(%24 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %45 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %cst_72, %cst_71, %cst_71, %cst_72 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%44 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x24x8x8xf32>
    %46 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %37 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%23 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x24x8x8xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%46, %cst_62 : tensor<1x24x8x8xf32>, tensor<72x24x1x1xf32>) outs(%28 : tensor<1x72x8x8xf32>) -> tensor<1x72x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_69, %cst_68, %cst_68, %cst_69 : tensor<1x72x8x8xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%47 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x72x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x72x8x8xf32>) outs(%27 : tensor<1x72x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x72x8x8xf32>
    %padded_94 = tensor.pad %49 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x72x8x8xf32> to tensor<1x72x12x12xf32>
    %50 = tensor.empty() : tensor<1x72x4x4xf32>
    %51 = linalg.fill ins(%cst_85 : f32) outs(%50 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    %collapsed_95 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<72x1x5x5xf32> into tensor<72x5x5xf32>
    %52 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_94, %collapsed_95 : tensor<1x72x12x12xf32>, tensor<72x5x5xf32>) outs(%51 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_69, %cst_68, %cst_68, %cst_69 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%52 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x72x4x4xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x72x4x4xf32>) outs(%50 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x72x4x4xf32>
    %55 = tensor.empty() : tensor<1x40x4x4xf32>
    %56 = linalg.fill ins(%cst_85 : f32) outs(%55 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_60 : tensor<1x72x4x4xf32>, tensor<40x72x1x1xf32>) outs(%56 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%57 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x40x4x4xf32>
    %59 = tensor.empty() : tensor<1x120x4x4xf32>
    %60 = linalg.fill ins(%cst_85 : f32) outs(%59 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%58, %cst_57 : tensor<1x40x4x4xf32>, tensor<120x40x1x1xf32>) outs(%60 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %62 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %cst_56, %cst_55, %cst_55, %cst_56 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%61 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x120x4x4xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x120x4x4xf32>) outs(%59 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x120x4x4xf32>
    %padded_96 = tensor.pad %63 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x120x4x4xf32> to tensor<1x120x8x8xf32>
    %collapsed_97 = tensor.collapse_shape %cst_54 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %64 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_96, %collapsed_97 : tensor<1x120x8x8xf32>, tensor<120x5x5xf32>) outs(%60 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %65 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %cst_56, %cst_55, %cst_55, %cst_56 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%64 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x120x4x4xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x120x4x4xf32>) outs(%59 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x120x4x4xf32>
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%66, %cst_53 : tensor<1x120x4x4xf32>, tensor<40x120x1x1xf32>) outs(%56 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %68 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%67 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x40x4x4xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %58 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%55 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x40x4x4xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%69, %cst_52 : tensor<1x40x4x4xf32>, tensor<120x40x1x1xf32>) outs(%60 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %71 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_56, %cst_55, %cst_55, %cst_56 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%70 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x120x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x120x4x4xf32>) outs(%59 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x120x4x4xf32>
    %padded_98 = tensor.pad %72 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x120x4x4xf32> to tensor<1x120x8x8xf32>
    %collapsed_99 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %73 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_98, %collapsed_99 : tensor<1x120x8x8xf32>, tensor<120x5x5xf32>) outs(%60 : tensor<1x120x4x4xf32>) -> tensor<1x120x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_56, %cst_55, %cst_55, %cst_56 : tensor<1x120x4x4xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%73 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x120x4x4xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x120x4x4xf32>) outs(%59 : tensor<1x120x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x120x4x4xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %cst_50 : tensor<1x120x4x4xf32>, tensor<40x120x1x1xf32>) outs(%56 : tensor<1x40x4x4xf32>) -> tensor<1x40x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x40x4x4xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%76 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x40x4x4xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %69 : tensor<1x40x4x4xf32>, tensor<1x40x4x4xf32>) outs(%55 : tensor<1x40x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x40x4x4xf32>
    %79 = tensor.empty() : tensor<1x240x4x4xf32>
    %80 = linalg.fill ins(%cst_85 : f32) outs(%79 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_49 : tensor<1x40x4x4xf32>, tensor<240x40x1x1xf32>) outs(%80 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_48, %cst_47, %cst_47, %cst_48 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%81 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x240x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x240x4x4xf32>) outs(%79 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x240x4x4xf32>
    %padded_100 = tensor.pad %83 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x240x4x4xf32> to tensor<1x240x8x8xf32>
    %84 = tensor.empty() : tensor<1x240x2x2xf32>
    %85 = linalg.fill ins(%cst_85 : f32) outs(%84 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    %collapsed_101 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %86 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_100, %collapsed_101 : tensor<1x240x8x8xf32>, tensor<240x5x5xf32>) outs(%85 : tensor<1x240x2x2xf32>) -> tensor<1x240x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_48, %cst_47, %cst_47, %cst_48 : tensor<1x240x2x2xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%86 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x240x2x2xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x240x2x2xf32>) outs(%84 : tensor<1x240x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x240x2x2xf32>
    %89 = tensor.empty() : tensor<1x80x2x2xf32>
    %90 = linalg.fill ins(%cst_85 : f32) outs(%89 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_45 : tensor<1x240x2x2xf32>, tensor<80x240x1x1xf32>) outs(%90 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %92 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%91 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x80x2x2xf32>
    %93 = tensor.empty() : tensor<1x480x2x2xf32>
    %94 = linalg.fill ins(%cst_85 : f32) outs(%93 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_42 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%94 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_41, %cst_40, %cst_40, %cst_41 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%95 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x480x2x2xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x480x2x2xf32>) outs(%93 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_102 = tensor.pad %97 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x6x6xf32>
    %collapsed_103 = tensor.collapse_shape %cst_39 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %98 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_102, %collapsed_103 : tensor<1x480x6x6xf32>, tensor<480x5x5xf32>) outs(%94 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %99 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_41, %cst_40, %cst_40, %cst_41 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%98 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x480x2x2xf32>
    %100 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x480x2x2xf32>) outs(%93 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x480x2x2xf32>
    %101 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%100, %cst_38 : tensor<1x480x2x2xf32>, tensor<80x480x1x1xf32>) outs(%90 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %102 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%101 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x80x2x2xf32>
    %103 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %92 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%89 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x80x2x2xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_37 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%94 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_41, %cst_40, %cst_40, %cst_41 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%104 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x480x2x2xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105 : tensor<1x480x2x2xf32>) outs(%93 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_104 = tensor.pad %106 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x6x6xf32>
    %collapsed_105 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %107 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %collapsed_105 : tensor<1x480x6x6xf32>, tensor<480x5x5xf32>) outs(%94 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_41, %cst_40, %cst_40, %cst_41 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%107 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x480x2x2xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x480x2x2xf32>) outs(%93 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x480x2x2xf32>
    %110 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%109, %cst_35 : tensor<1x480x2x2xf32>, tensor<80x480x1x1xf32>) outs(%90 : tensor<1x80x2x2xf32>) -> tensor<1x80x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %111 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x80x2x2xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%110 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x80x2x2xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %103 : tensor<1x80x2x2xf32>, tensor<1x80x2x2xf32>) outs(%89 : tensor<1x80x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x80x2x2xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_34 : tensor<1x80x2x2xf32>, tensor<480x80x1x1xf32>) outs(%94 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_41, %cst_40, %cst_40, %cst_41 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%113 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x480x2x2xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x480x2x2xf32>) outs(%93 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x480x2x2xf32>
    %padded_106 = tensor.pad %115 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x480x2x2xf32> to tensor<1x480x4x4xf32>
    %collapsed_107 = tensor.collapse_shape %cst_33 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %116 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_106, %collapsed_107 : tensor<1x480x4x4xf32>, tensor<480x3x3xf32>) outs(%94 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_41, %cst_40, %cst_40, %cst_41 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%116 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x480x2x2xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x480x2x2xf32>) outs(%93 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x480x2x2xf32>
    %119 = tensor.empty() : tensor<1x96x2x2xf32>
    %120 = linalg.fill ins(%cst_85 : f32) outs(%119 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_32 : tensor<1x480x2x2xf32>, tensor<96x480x1x1xf32>) outs(%120 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_31, %cst_30, %cst_30, %cst_31 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%121 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x96x2x2xf32>
    %123 = tensor.empty() : tensor<1x576x2x2xf32>
    %124 = linalg.fill ins(%cst_85 : f32) outs(%123 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    %125 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_29 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%124 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %126 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%125 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x576x2x2xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x576x2x2xf32>) outs(%123 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_108 = tensor.pad %127 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_109 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %128 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_108, %collapsed_109 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%124 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%128 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x576x2x2xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x576x2x2xf32>) outs(%123 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x576x2x2xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_25 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%120 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_31, %cst_30, %cst_30, %cst_31 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%131 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x96x2x2xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %122 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%119 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x96x2x2xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_24 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%124 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%134 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x576x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x576x2x2xf32>) outs(%123 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_110 = tensor.pad %136 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x6x6xf32>
    %137 = tensor.empty() : tensor<1x576x1x1xf32>
    %138 = linalg.fill ins(%cst_85 : f32) outs(%137 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %collapsed_111 = tensor.collapse_shape %cst_23 [[0, 1], [2], [3]] : tensor<576x1x5x5xf32> into tensor<576x5x5xf32>
    %139 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_110, %collapsed_111 : tensor<1x576x6x6xf32>, tensor<576x5x5xf32>) outs(%138 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %140 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%139 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x576x1x1xf32>
    %141 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x576x1x1xf32>) outs(%137 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x576x1x1xf32>
    %142 = tensor.empty() : tensor<1x192x1x1xf32>
    %143 = linalg.fill ins(%cst_85 : f32) outs(%142 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%141, %cst_22 : tensor<1x576x1x1xf32>, tensor<192x576x1x1xf32>) outs(%143 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_21, %cst_20, %cst_20, %cst_21 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%144 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x192x1x1xf32>
    %146 = tensor.empty() : tensor<1x1152x1x1xf32>
    %147 = linalg.fill ins(%cst_85 : f32) outs(%146 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%145, %cst_19 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%148 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %150 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_112 = tensor.pad %150 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x5x5xf32>
    %collapsed_113 = tensor.collapse_shape %cst_16 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %151 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_112, %collapsed_113 : tensor<1x1152x5x5xf32>, tensor<1152x5x5xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%151 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_15 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%143 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_21, %cst_20, %cst_20, %cst_21 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%154 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x192x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %145 : tensor<1x192x1x1xf32>, tensor<1x192x1x1xf32>) outs(%142 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x192x1x1xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_14 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%157 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %159 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_114 = tensor.pad %159 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x5x5xf32>
    %collapsed_115 = tensor.collapse_shape %cst_13 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %160 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_114, %collapsed_115 : tensor<1x1152x5x5xf32>, tensor<1152x5x5xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%160 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %163 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%162, %cst_12 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%143 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_21, %cst_20, %cst_20, %cst_21 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%163 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x192x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %156 : tensor<1x192x1x1xf32>, tensor<1x192x1x1xf32>) outs(%142 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x192x1x1xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_11 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %167 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%166 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_116 = tensor.pad %168 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x5x5xf32>
    %collapsed_117 = tensor.collapse_shape %cst_10 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %169 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_116, %collapsed_117 : tensor<1x1152x5x5xf32>, tensor<1152x5x5xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%169 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_9 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%143 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_21, %cst_20, %cst_20, %cst_21 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%172 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x192x1x1xf32>
    %174 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %165 : tensor<1x192x1x1xf32>, tensor<1x192x1x1xf32>) outs(%142 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x192x1x1xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%174, %cst_8 : tensor<1x192x1x1xf32>, tensor<1152x192x1x1xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%175 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %padded_118 = tensor.pad %177 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_85 : f32
    } : tensor<1x1152x1x1xf32> to tensor<1x1152x3x3xf32>
    %collapsed_119 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<1152x1x3x3xf32> into tensor<1152x3x3xf32>
    %178 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_118, %collapsed_119 : tensor<1x1152x3x3xf32>, tensor<1152x3x3xf32>) outs(%147 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %179 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_18, %cst_17, %cst_17, %cst_18 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%178 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1152x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x1152x1x1xf32>) outs(%146 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1152x1x1xf32>
    %181 = tensor.empty() : tensor<1x320x1x1xf32>
    %182 = linalg.fill ins(%cst_85 : f32) outs(%181 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_6 : tensor<1x1152x1x1xf32>, tensor<320x1152x1x1xf32>) outs(%182 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %184 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %cst_5, %cst_4, %cst_4, %cst_5 : tensor<1x320x1x1xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%183 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x320x1x1xf32>
    %185 = tensor.empty() : tensor<1x1280x1x1xf32>
    %186 = linalg.fill ins(%cst_85 : f32) outs(%185 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_3 : tensor<1x320x1x1xf32>, tensor<1280x320x1x1xf32>) outs(%186 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%187 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_120: f32, %in_121: f32, %in_122: f32, %in_123: f32, %out: f32):
      %200 = arith.truncf %cst_86 : f64 to f32
      %201 = arith.addf %in_123, %200 : f32
      %202 = math.rsqrt %201 : f32
      %203 = arith.subf %in, %in_122 : f32
      %204 = arith.mulf %203, %202 : f32
      %205 = arith.mulf %204, %in_120 : f32
      %206 = arith.addf %205, %in_121 : f32
      linalg.yield %206 : f32
    } -> tensor<1x1280x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x1280x1x1xf32>) outs(%185 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.cmpf ugt, %in, %cst_85 : f32
      %201 = arith.select %200, %in, %cst_85 : f32
      linalg.yield %201 : f32
    } -> tensor<1x1280x1x1xf32>
    %190 = tensor.empty() : tensor<1x1280xf32>
    %191 = linalg.fill ins(%cst_85 : f32) outs(%190 : tensor<1x1280xf32>) -> tensor<1x1280xf32>
    %192 = linalg.generic {indexing_maps = [#map, #map4], iterator_types = ["parallel", "parallel", "reduction", "reduction"]} ins(%189 : tensor<1x1280x1x1xf32>) outs(%191 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %200 = arith.addf %in, %out : f32
      linalg.yield %200 : f32
    } -> tensor<1x1280xf32>
    %193 = linalg.generic {indexing_maps = [#map5, #map6], iterator_types = ["parallel", "parallel"]} ins(%192 : tensor<1x1280xf32>) outs(%190 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1280xf32>
    %194 = tensor.empty() : tensor<1280x1000xf32>
    %195 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1280xf32>) outs(%194 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %196 = tensor.empty() : tensor<1x1000xf32>
    %197 = linalg.fill ins(%cst_85 : f32) outs(%196 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %198 = linalg.matmul ins(%193, %195 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%197 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %199 = linalg.generic {indexing_maps = [#map5, #map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%198, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%196 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_120: f32, %out: f32):
      %200 = arith.addf %in, %in_120 : f32
      linalg.yield %200 : f32
    } -> tensor<1x1000xf32>
    return %199 : tensor<1x1000xf32>
  }
}
