#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>
#map4 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, 0)>
#map5 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map8 = affine_map<(d0, d1) -> (d0, d1)>
#map9 = affine_map<(d0, d1) -> (d1, d0)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d2, d3)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map12 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, 0)>
#map13 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, d3)>
#map14 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map15 = affine_map<(d0, d1) -> (0, d1)>
#map16 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ConvNeXt"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.002011e+00> : tensor<1000x768xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.008142e+00> : tensor<768x3072xf32>
    %cst_2 = arith.constant dense<0.010885e+00> : tensor<3072x768xf32>
    %cst_3 = arith.constant dense<-0.015141e+00> : tensor<768x1x7x7xf32>
    %cst_4 = arith.constant dense<-0.001256e+00> : tensor<768x3072xf32>
    %cst_5 = arith.constant dense<-0.007954e+00> : tensor<3072x768xf32>
    %cst_6 = arith.constant dense<0.004302e+00> : tensor<768x1x7x7xf32>
    %cst_7 = arith.constant dense<-0.002148e+00> : tensor<768x3072xf32>
    %cst_8 = arith.constant dense<-0.013812e+00> : tensor<3072x768xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<3072xf32>
    %cst_10 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_11 = arith.constant dense<0.000918e+00> : tensor<768x1x7x7xf32>
    %cst_12 = arith.constant dense<9.99999997E-7> : tensor<768x1x1xf32>
    %cst_13 = arith.constant dense<-0.000633e+00> : tensor<768x384x2x2xf32>
    %cst_14 = arith.constant dense<-0.014707e+00> : tensor<384x1536xf32>
    %cst_15 = arith.constant dense<-0.016026e+00> : tensor<1536x384xf32>
    %cst_16 = arith.constant dense<0.004125e+00> : tensor<384x1x7x7xf32>
    %cst_17 = arith.constant dense<-0.007842e+00> : tensor<384x1536xf32>
    %cst_18 = arith.constant dense<0.010208e+00> : tensor<1536x384xf32>
    %cst_19 = arith.constant dense<-0.005821e+00> : tensor<384x1x7x7xf32>
    %cst_20 = arith.constant dense<-0.012034e+00> : tensor<384x1536xf32>
    %cst_21 = arith.constant dense<0.000648e+00> : tensor<1536x384xf32>
    %cst_22 = arith.constant dense<0.001430e+00> : tensor<384x1x7x7xf32>
    %cst_23 = arith.constant dense<-0.002086e+00> : tensor<384x1536xf32>
    %cst_24 = arith.constant dense<-0.005606e+00> : tensor<1536x384xf32>
    %cst_25 = arith.constant dense<0.004810e+00> : tensor<384x1x7x7xf32>
    %cst_26 = arith.constant dense<-0.011335e+00> : tensor<384x1536xf32>
    %cst_27 = arith.constant dense<0.010051e+00> : tensor<1536x384xf32>
    %cst_28 = arith.constant dense<0.003713e+00> : tensor<384x1x7x7xf32>
    %cst_29 = arith.constant dense<-0.007640e+00> : tensor<384x1536xf32>
    %cst_30 = arith.constant dense<-0.003315e+00> : tensor<1536x384xf32>
    %cst_31 = arith.constant dense<0.008332e+00> : tensor<384x1x7x7xf32>
    %cst_32 = arith.constant dense<-0.026891e+00> : tensor<384x1536xf32>
    %cst_33 = arith.constant dense<-0.003027e+00> : tensor<1536x384xf32>
    %cst_34 = arith.constant dense<0.011812e+00> : tensor<384x1x7x7xf32>
    %cst_35 = arith.constant dense<0.000913e+00> : tensor<384x1536xf32>
    %cst_36 = arith.constant dense<0.001677e+00> : tensor<1536x384xf32>
    %cst_37 = arith.constant dense<0.020117e+00> : tensor<384x1x7x7xf32>
    %cst_38 = arith.constant dense<0.000756e+00> : tensor<384x1536xf32>
    %cst_39 = arith.constant dense<-0.005689e+00> : tensor<1536x384xf32>
    %cst_40 = arith.constant dense<0.000000e+00> : tensor<1536xf32>
    %cst_41 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_42 = arith.constant dense<0.013773e+00> : tensor<384x1x7x7xf32>
    %cst_43 = arith.constant dense<9.99999997E-7> : tensor<384x1x1xf32>
    %cst_44 = arith.constant dense<-0.014991e+00> : tensor<384x192x2x2xf32>
    %cst_45 = arith.constant dense<-0.009378e+00> : tensor<192x768xf32>
    %cst_46 = arith.constant dense<0.012399e+00> : tensor<768x192xf32>
    %cst_47 = arith.constant dense<-0.012620e+00> : tensor<192x1x7x7xf32>
    %cst_48 = arith.constant dense<-0.001311e+00> : tensor<192x768xf32>
    %cst_49 = arith.constant dense<0.024081e+00> : tensor<768x192xf32>
    %cst_50 = arith.constant dense<0.000040e+00> : tensor<192x1x7x7xf32>
    %cst_51 = arith.constant dense<-0.005392e+00> : tensor<192x768xf32>
    %cst_52 = arith.constant dense<-0.004966e+00> : tensor<768x192xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_54 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_55 = arith.constant dense<-0.012025e+00> : tensor<192x1x7x7xf32>
    %cst_56 = arith.constant dense<9.99999997E-7> : tensor<192x1x1xf32>
    %cst_57 = arith.constant dense<-0.011053e+00> : tensor<192x96x2x2xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_59 = arith.constant dense<-0.012796e+00> : tensor<96x384xf32>
    %cst_60 = arith.constant dense<-0.012589e+00> : tensor<384x96xf32>
    %cst_61 = arith.constant dense<0.011604e+00> : tensor<96x1x7x7xf32>
    %cst_62 = arith.constant dense<0.001643e+00> : tensor<96x384xf32>
    %cst_63 = arith.constant dense<0.005199e+00> : tensor<384x96xf32>
    %cst_64 = arith.constant dense<-0.010500e+00> : tensor<96x1x7x7xf32>
    %cst_65 = arith.constant dense<0.008729e+00> : tensor<96x384xf32>
    %cst_66 = arith.constant dense<-0.002690e+00> : tensor<384x96xf32>
    %cst_67 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_68 = arith.constant dense<-0.006480e+00> : tensor<96x1x7x7xf32>
    %cst_69 = arith.constant dense<9.99999997E-7> : tensor<96x1x1xf32>
    %cst_70 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_71 = arith.constant dense<0.002034e+00> : tensor<96x3x4x4xf32>
    %cst_72 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_73 = arith.constant 0.000000e+00 : f32
    %cst_74 = arith.constant 1.41421354 : f32
    %cst_75 = arith.constant 5.000000e-01 : f32
    %cst_76 = arith.constant 9.9999999999999995E-7 : f64
    %cst_77 = arith.constant 9.600000e+01 : f32
    %cst_78 = arith.constant 1.920000e+02 : f32
    %cst_79 = arith.constant 3.840000e+02 : f32
    %cst_80 = arith.constant 7.680000e+02 : f32
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %cst_81 = arith.constant 1.000000e+00 : f32
    %0 = tensor.empty() : tensor<1x96x8x8xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_72 : tensor<96xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x8x8xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%arg0, %cst_71 : tensor<1x3x32x32xf32>, tensor<96x3x4x4xf32>) outs(%1 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %3 = tensor.empty() : tensor<1x8x8x96xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x96x8x8xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %5 = tensor.empty() : tensor<1x8x8x1xf32>
    %6 = linalg.fill ins(%cst_73 : f32) outs(%5 : tensor<1x8x8x1xf32>) -> tensor<1x8x8x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%4 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %8 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %9 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %9 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %11 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %10 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%11 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %13 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %14 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x8x8x1xf32>
    %15 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %16 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %17 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %16 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %18 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_70 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %19 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x8x8x96xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x8x8xf32>
    %padded = tensor.pad %20 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x96x8x8xf32> to tensor<1x96x14x14xf32>
    %collapsed = tensor.collapse_shape %cst_68 [[0, 1], [2], [3]] : tensor<96x1x7x7xf32> into tensor<96x7x7xf32>
    %21 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %collapsed : tensor<1x96x14x14xf32>, tensor<96x7x7xf32>) outs(%1 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x96x8x8xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%22 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %24 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %25 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %26 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %25 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %27 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %26 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%27 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %29 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %30 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x8x8x1xf32>
    %31 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %32 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %33 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %32 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %34 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %cst_70 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %35 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %36 = tensor.empty() : tensor<96x384xf32>
    %37 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_66 : tensor<384x96xf32>) outs(%36 : tensor<96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<96x384xf32>
    %38 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %39 = tensor.empty() : tensor<1x8x96x384xf32>
    %40 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<96x384xf32>) outs(%39 : tensor<1x8x96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x96x384xf32>
    %collapsed_82 = tensor.collapse_shape %38 [[0, 1], [2], [3]] : tensor<1x8x8x96xf32> into tensor<8x8x96xf32>
    %collapsed_83 = tensor.collapse_shape %40 [[0, 1], [2], [3]] : tensor<1x8x96x384xf32> into tensor<8x96x384xf32>
    %41 = tensor.empty() : tensor<8x8x384xf32>
    %42 = linalg.fill ins(%cst_73 : f32) outs(%41 : tensor<8x8x384xf32>) -> tensor<8x8x384xf32>
    %43 = linalg.batch_matmul ins(%collapsed_82, %collapsed_83 : tensor<8x8x96xf32>, tensor<8x96x384xf32>) outs(%42 : tensor<8x8x384xf32>) -> tensor<8x8x384xf32>
    %expanded = tensor.expand_shape %43 [[0, 1], [2], [3]] : tensor<8x8x384xf32> into tensor<1x8x8x384xf32>
    %44 = tensor.empty() : tensor<1x8x8x384xf32>
    %45 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %cst_67 : tensor<1x8x8x384xf32>, tensor<384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x384xf32>
    %46 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45 : tensor<1x8x8x384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x8x8x384xf32>
    %47 = tensor.empty() : tensor<384x96xf32>
    %48 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_65 : tensor<96x384xf32>) outs(%47 : tensor<384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x96xf32>
    %49 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x8x8x384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x384xf32>
    %50 = tensor.empty() : tensor<1x8x384x96xf32>
    %51 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<384x96xf32>) outs(%50 : tensor<1x8x384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x384x96xf32>
    %collapsed_84 = tensor.collapse_shape %49 [[0, 1], [2], [3]] : tensor<1x8x8x384xf32> into tensor<8x8x384xf32>
    %collapsed_85 = tensor.collapse_shape %51 [[0, 1], [2], [3]] : tensor<1x8x384x96xf32> into tensor<8x384x96xf32>
    %52 = tensor.empty() : tensor<8x8x96xf32>
    %53 = linalg.fill ins(%cst_73 : f32) outs(%52 : tensor<8x8x96xf32>) -> tensor<8x8x96xf32>
    %54 = linalg.batch_matmul ins(%collapsed_84, %collapsed_85 : tensor<8x8x384xf32>, tensor<8x384x96xf32>) outs(%53 : tensor<8x8x96xf32>) -> tensor<8x8x96xf32>
    %expanded_86 = tensor.expand_shape %54 [[0, 1], [2], [3]] : tensor<8x8x96xf32> into tensor<1x8x8x96xf32>
    %55 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_86, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x8x8x96xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x8x8xf32>
    %57 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_69, %56 : tensor<96x1x1xf32>, tensor<1x96x8x8xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x96x8x8xf32>
    %58 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %20 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x96x8x8xf32>
    %padded_87 = tensor.pad %58 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x96x8x8xf32> to tensor<1x96x14x14xf32>
    %collapsed_88 = tensor.collapse_shape %cst_64 [[0, 1], [2], [3]] : tensor<96x1x7x7xf32> into tensor<96x7x7xf32>
    %59 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_87, %collapsed_88 : tensor<1x96x14x14xf32>, tensor<96x7x7xf32>) outs(%1 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x96x8x8xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%60 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %62 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %63 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %63 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %64 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%65 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %67 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %68 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x8x8x1xf32>
    %69 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %70 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %71 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %70 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %72 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_70 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %73 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %74 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_63 : tensor<384x96xf32>) outs(%36 : tensor<96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<96x384xf32>
    %75 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %76 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<96x384xf32>) outs(%39 : tensor<1x8x96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x96x384xf32>
    %collapsed_89 = tensor.collapse_shape %75 [[0, 1], [2], [3]] : tensor<1x8x8x96xf32> into tensor<8x8x96xf32>
    %collapsed_90 = tensor.collapse_shape %76 [[0, 1], [2], [3]] : tensor<1x8x96x384xf32> into tensor<8x96x384xf32>
    %77 = linalg.batch_matmul ins(%collapsed_89, %collapsed_90 : tensor<8x8x96xf32>, tensor<8x96x384xf32>) outs(%42 : tensor<8x8x384xf32>) -> tensor<8x8x384xf32>
    %expanded_91 = tensor.expand_shape %77 [[0, 1], [2], [3]] : tensor<8x8x384xf32> into tensor<1x8x8x384xf32>
    %78 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_91, %cst_67 : tensor<1x8x8x384xf32>, tensor<384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x384xf32>
    %79 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x8x8x384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x8x8x384xf32>
    %80 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_62 : tensor<96x384xf32>) outs(%47 : tensor<384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x96xf32>
    %81 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x8x8x384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x384xf32>
    %82 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<384x96xf32>) outs(%50 : tensor<1x8x384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x384x96xf32>
    %collapsed_92 = tensor.collapse_shape %81 [[0, 1], [2], [3]] : tensor<1x8x8x384xf32> into tensor<8x8x384xf32>
    %collapsed_93 = tensor.collapse_shape %82 [[0, 1], [2], [3]] : tensor<1x8x384x96xf32> into tensor<8x384x96xf32>
    %83 = linalg.batch_matmul ins(%collapsed_92, %collapsed_93 : tensor<8x8x384xf32>, tensor<8x384x96xf32>) outs(%53 : tensor<8x8x96xf32>) -> tensor<8x8x96xf32>
    %expanded_94 = tensor.expand_shape %83 [[0, 1], [2], [3]] : tensor<8x8x96xf32> into tensor<1x8x8x96xf32>
    %84 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_94, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %85 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x8x8x96xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x8x8xf32>
    %86 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_69, %85 : tensor<96x1x1xf32>, tensor<1x96x8x8xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x96x8x8xf32>
    %87 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %58 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x96x8x8xf32>
    %padded_95 = tensor.pad %87 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x96x8x8xf32> to tensor<1x96x14x14xf32>
    %collapsed_96 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<96x1x7x7xf32> into tensor<96x7x7xf32>
    %88 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_95, %collapsed_96 : tensor<1x96x14x14xf32>, tensor<96x7x7xf32>) outs(%1 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x96x8x8xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%89 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %91 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %92 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %93 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %92 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %94 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %93 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%94 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %96 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x8x8x1xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %99 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %100 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %99 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %101 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_70 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %102 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %103 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_60 : tensor<384x96xf32>) outs(%36 : tensor<96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<96x384xf32>
    %104 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %105 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<96x384xf32>) outs(%39 : tensor<1x8x96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x96x384xf32>
    %collapsed_97 = tensor.collapse_shape %104 [[0, 1], [2], [3]] : tensor<1x8x8x96xf32> into tensor<8x8x96xf32>
    %collapsed_98 = tensor.collapse_shape %105 [[0, 1], [2], [3]] : tensor<1x8x96x384xf32> into tensor<8x96x384xf32>
    %106 = linalg.batch_matmul ins(%collapsed_97, %collapsed_98 : tensor<8x8x96xf32>, tensor<8x96x384xf32>) outs(%42 : tensor<8x8x384xf32>) -> tensor<8x8x384xf32>
    %expanded_99 = tensor.expand_shape %106 [[0, 1], [2], [3]] : tensor<8x8x384xf32> into tensor<1x8x8x384xf32>
    %107 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_99, %cst_67 : tensor<1x8x8x384xf32>, tensor<384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x384xf32>
    %108 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x8x8x384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x8x8x384xf32>
    %109 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_59 : tensor<96x384xf32>) outs(%47 : tensor<384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x96xf32>
    %110 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x8x8x384xf32>) outs(%44 : tensor<1x8x8x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x384xf32>
    %111 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<384x96xf32>) outs(%50 : tensor<1x8x384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x384x96xf32>
    %collapsed_100 = tensor.collapse_shape %110 [[0, 1], [2], [3]] : tensor<1x8x8x384xf32> into tensor<8x8x384xf32>
    %collapsed_101 = tensor.collapse_shape %111 [[0, 1], [2], [3]] : tensor<1x8x384x96xf32> into tensor<8x384x96xf32>
    %112 = linalg.batch_matmul ins(%collapsed_100, %collapsed_101 : tensor<8x8x384xf32>, tensor<8x384x96xf32>) outs(%53 : tensor<8x8x96xf32>) -> tensor<8x8x96xf32>
    %expanded_102 = tensor.expand_shape %112 [[0, 1], [2], [3]] : tensor<8x8x96xf32> into tensor<1x8x8x96xf32>
    %113 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_102, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x8x8x96xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x8x8xf32>
    %115 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_69, %114 : tensor<96x1x1xf32>, tensor<1x96x8x8xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x96x8x8xf32>
    %116 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %87 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x96x8x8xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x96x8x8xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%117 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %119 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %120 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %121 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %120 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %122 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %121 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%122 : tensor<1x8x8x96xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %124 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_77 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %125 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x8x8x1xf32>
    %126 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x1xf32>
    %127 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x96xf32>
    %128 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %127 : tensor<1x8x8x96xf32>, tensor<1x8x8x96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %129 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_70 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %130 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_72 : tensor<1x8x8x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x8x8x96xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x8x8x96xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x8x8x96xf32>) outs(%0 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x8x8xf32>
    %132 = tensor.empty() : tensor<1x192x4x4xf32>
    %133 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_58 : tensor<192xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x4x4xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%131, %cst_57 : tensor<1x96x8x8xf32>, tensor<192x96x2x2xf32>) outs(%133 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %padded_103 = tensor.pad %134 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x10x10xf32>
    %collapsed_104 = tensor.collapse_shape %cst_55 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %135 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_103, %collapsed_104 : tensor<1x192x10x10xf32>, tensor<192x7x7xf32>) outs(%133 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %136 = tensor.empty() : tensor<1x4x4x192xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x192x4x4xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %138 = tensor.empty() : tensor<1x4x4x1xf32>
    %139 = linalg.fill ins(%cst_73 : f32) outs(%138 : tensor<1x4x4x1xf32>) -> tensor<1x4x4x1xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%137 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %141 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %142 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %143 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %142 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %144 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %143 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%144 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %146 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %147 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x4x4x1xf32>
    %148 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %149 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %150 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %149 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %151 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %cst_54 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %152 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %153 = tensor.empty() : tensor<192x768xf32>
    %154 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_52 : tensor<768x192xf32>) outs(%153 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %155 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %156 = tensor.empty() : tensor<1x4x192x768xf32>
    %157 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<192x768xf32>) outs(%156 : tensor<1x4x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x192x768xf32>
    %collapsed_105 = tensor.collapse_shape %155 [[0, 1], [2], [3]] : tensor<1x4x4x192xf32> into tensor<4x4x192xf32>
    %collapsed_106 = tensor.collapse_shape %157 [[0, 1], [2], [3]] : tensor<1x4x192x768xf32> into tensor<4x192x768xf32>
    %158 = tensor.empty() : tensor<4x4x768xf32>
    %159 = linalg.fill ins(%cst_73 : f32) outs(%158 : tensor<4x4x768xf32>) -> tensor<4x4x768xf32>
    %160 = linalg.batch_matmul ins(%collapsed_105, %collapsed_106 : tensor<4x4x192xf32>, tensor<4x192x768xf32>) outs(%159 : tensor<4x4x768xf32>) -> tensor<4x4x768xf32>
    %expanded_107 = tensor.expand_shape %160 [[0, 1], [2], [3]] : tensor<4x4x768xf32> into tensor<1x4x4x768xf32>
    %161 = tensor.empty() : tensor<1x4x4x768xf32>
    %162 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_107, %cst_53 : tensor<1x4x4x768xf32>, tensor<768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x768xf32>
    %163 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x4x4x768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x4x4x768xf32>
    %164 = tensor.empty() : tensor<768x192xf32>
    %165 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_51 : tensor<192x768xf32>) outs(%164 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %166 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x4x4x768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x768xf32>
    %167 = tensor.empty() : tensor<1x4x768x192xf32>
    %168 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<768x192xf32>) outs(%167 : tensor<1x4x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x768x192xf32>
    %collapsed_108 = tensor.collapse_shape %166 [[0, 1], [2], [3]] : tensor<1x4x4x768xf32> into tensor<4x4x768xf32>
    %collapsed_109 = tensor.collapse_shape %168 [[0, 1], [2], [3]] : tensor<1x4x768x192xf32> into tensor<4x768x192xf32>
    %169 = tensor.empty() : tensor<4x4x192xf32>
    %170 = linalg.fill ins(%cst_73 : f32) outs(%169 : tensor<4x4x192xf32>) -> tensor<4x4x192xf32>
    %171 = linalg.batch_matmul ins(%collapsed_108, %collapsed_109 : tensor<4x4x768xf32>, tensor<4x768x192xf32>) outs(%170 : tensor<4x4x192xf32>) -> tensor<4x4x192xf32>
    %expanded_110 = tensor.expand_shape %171 [[0, 1], [2], [3]] : tensor<4x4x192xf32> into tensor<1x4x4x192xf32>
    %172 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_110, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x4x4x192xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x4x4xf32>
    %174 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_56, %173 : tensor<192x1x1xf32>, tensor<1x192x4x4xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x192x4x4xf32>
    %175 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %134 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_111 = tensor.pad %175 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x10x10xf32>
    %collapsed_112 = tensor.collapse_shape %cst_50 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %176 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_111, %collapsed_112 : tensor<1x192x10x10xf32>, tensor<192x7x7xf32>) outs(%133 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x192x4x4xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%177 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %179 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %180 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %181 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %180 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %182 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %181 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%182 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %184 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %185 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x4x4x1xf32>
    %186 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %187 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %188 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %187 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %189 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %cst_54 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %190 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %191 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_49 : tensor<768x192xf32>) outs(%153 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %192 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %193 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<192x768xf32>) outs(%156 : tensor<1x4x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x192x768xf32>
    %collapsed_113 = tensor.collapse_shape %192 [[0, 1], [2], [3]] : tensor<1x4x4x192xf32> into tensor<4x4x192xf32>
    %collapsed_114 = tensor.collapse_shape %193 [[0, 1], [2], [3]] : tensor<1x4x192x768xf32> into tensor<4x192x768xf32>
    %194 = linalg.batch_matmul ins(%collapsed_113, %collapsed_114 : tensor<4x4x192xf32>, tensor<4x192x768xf32>) outs(%159 : tensor<4x4x768xf32>) -> tensor<4x4x768xf32>
    %expanded_115 = tensor.expand_shape %194 [[0, 1], [2], [3]] : tensor<4x4x768xf32> into tensor<1x4x4x768xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_115, %cst_53 : tensor<1x4x4x768xf32>, tensor<768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x768xf32>
    %196 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x4x4x768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x4x4x768xf32>
    %197 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_48 : tensor<192x768xf32>) outs(%164 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %198 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x4x4x768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x768xf32>
    %199 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<768x192xf32>) outs(%167 : tensor<1x4x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x768x192xf32>
    %collapsed_116 = tensor.collapse_shape %198 [[0, 1], [2], [3]] : tensor<1x4x4x768xf32> into tensor<4x4x768xf32>
    %collapsed_117 = tensor.collapse_shape %199 [[0, 1], [2], [3]] : tensor<1x4x768x192xf32> into tensor<4x768x192xf32>
    %200 = linalg.batch_matmul ins(%collapsed_116, %collapsed_117 : tensor<4x4x768xf32>, tensor<4x768x192xf32>) outs(%170 : tensor<4x4x192xf32>) -> tensor<4x4x192xf32>
    %expanded_118 = tensor.expand_shape %200 [[0, 1], [2], [3]] : tensor<4x4x192xf32> into tensor<1x4x4x192xf32>
    %201 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_118, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x4x4x192xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x4x4xf32>
    %203 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_56, %202 : tensor<192x1x1xf32>, tensor<1x192x4x4xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x192x4x4xf32>
    %204 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %175 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_119 = tensor.pad %204 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x10x10xf32>
    %collapsed_120 = tensor.collapse_shape %cst_47 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %205 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_119, %collapsed_120 : tensor<1x192x10x10xf32>, tensor<192x7x7xf32>) outs(%133 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x192x4x4xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%206 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %208 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %209 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %210 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %209 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %211 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %210 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%211 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %213 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x4x4x1xf32>
    %215 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %216 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %217 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %216 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %218 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %cst_54 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %219 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %220 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_46 : tensor<768x192xf32>) outs(%153 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %221 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %222 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<192x768xf32>) outs(%156 : tensor<1x4x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x192x768xf32>
    %collapsed_121 = tensor.collapse_shape %221 [[0, 1], [2], [3]] : tensor<1x4x4x192xf32> into tensor<4x4x192xf32>
    %collapsed_122 = tensor.collapse_shape %222 [[0, 1], [2], [3]] : tensor<1x4x192x768xf32> into tensor<4x192x768xf32>
    %223 = linalg.batch_matmul ins(%collapsed_121, %collapsed_122 : tensor<4x4x192xf32>, tensor<4x192x768xf32>) outs(%159 : tensor<4x4x768xf32>) -> tensor<4x4x768xf32>
    %expanded_123 = tensor.expand_shape %223 [[0, 1], [2], [3]] : tensor<4x4x768xf32> into tensor<1x4x4x768xf32>
    %224 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_123, %cst_53 : tensor<1x4x4x768xf32>, tensor<768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x768xf32>
    %225 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x4x4x768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x4x4x768xf32>
    %226 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_45 : tensor<192x768xf32>) outs(%164 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x4x4x768xf32>) outs(%161 : tensor<1x4x4x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x768xf32>
    %228 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<768x192xf32>) outs(%167 : tensor<1x4x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x768x192xf32>
    %collapsed_124 = tensor.collapse_shape %227 [[0, 1], [2], [3]] : tensor<1x4x4x768xf32> into tensor<4x4x768xf32>
    %collapsed_125 = tensor.collapse_shape %228 [[0, 1], [2], [3]] : tensor<1x4x768x192xf32> into tensor<4x768x192xf32>
    %229 = linalg.batch_matmul ins(%collapsed_124, %collapsed_125 : tensor<4x4x768xf32>, tensor<4x768x192xf32>) outs(%170 : tensor<4x4x192xf32>) -> tensor<4x4x192xf32>
    %expanded_126 = tensor.expand_shape %229 [[0, 1], [2], [3]] : tensor<4x4x192xf32> into tensor<1x4x4x192xf32>
    %230 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_126, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x4x4x192xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x4x4xf32>
    %232 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_56, %231 : tensor<192x1x1xf32>, tensor<1x192x4x4xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x192x4x4xf32>
    %233 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %204 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x192x4x4xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x192x4x4xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%234 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %236 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %237 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %238 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %237 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %239 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %238 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%239 : tensor<1x4x4x192xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %241 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_78 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %242 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x4x4x1xf32>
    %243 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x1xf32>
    %244 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x192xf32>
    %245 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %244 : tensor<1x4x4x192xf32>, tensor<1x4x4x192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %246 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_54 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %247 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %cst_58 : tensor<1x4x4x192xf32>, tensor<192xf32>) outs(%136 : tensor<1x4x4x192xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x4x4x192xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x4x4x192xf32>) outs(%132 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x4x4xf32>
    %249 = tensor.empty() : tensor<1x384x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_67 : tensor<384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%248, %cst_44 : tensor<1x192x4x4xf32>, tensor<384x192x2x2xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %padded_127 = tensor.pad %251 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_128 = tensor.collapse_shape %cst_42 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %252 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_127, %collapsed_128 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %253 = tensor.empty() : tensor<1x2x2x384xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %255 = tensor.empty() : tensor<1x2x2x1xf32>
    %256 = linalg.fill ins(%cst_73 : f32) outs(%255 : tensor<1x2x2x1xf32>) -> tensor<1x2x2x1xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%254 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %258 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %259 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %260 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %259 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %261 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %260 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%261 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %263 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %264 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %266 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %267 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %266 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %268 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %269 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %270 = tensor.empty() : tensor<384x1536xf32>
    %271 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_39 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %272 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %273 = tensor.empty() : tensor<1x2x384x1536xf32>
    %274 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_129 = tensor.collapse_shape %272 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_130 = tensor.collapse_shape %274 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %275 = tensor.empty() : tensor<2x2x1536xf32>
    %276 = linalg.fill ins(%cst_73 : f32) outs(%275 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %277 = linalg.batch_matmul ins(%collapsed_129, %collapsed_130 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_131 = tensor.expand_shape %277 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %278 = tensor.empty() : tensor<1x2x2x1536xf32>
    %279 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_131, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %280 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %281 = tensor.empty() : tensor<1536x384xf32>
    %282 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_38 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %283 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %284 = tensor.empty() : tensor<1x2x1536x384xf32>
    %285 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_132 = tensor.collapse_shape %283 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_133 = tensor.collapse_shape %285 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %286 = tensor.empty() : tensor<2x2x384xf32>
    %287 = linalg.fill ins(%cst_73 : f32) outs(%286 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %288 = linalg.batch_matmul ins(%collapsed_132, %collapsed_133 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_134 = tensor.expand_shape %288 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %289 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_134, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %290 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %291 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %290 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %292 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %251 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_135 = tensor.pad %292 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_136 = tensor.collapse_shape %cst_37 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %293 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_135, %collapsed_136 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %295 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%294 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %296 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %297 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %298 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %297 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %299 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %298 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%299 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %301 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %302 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %303 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %304 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %305 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %304 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %306 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %307 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %308 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_36 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %309 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %310 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_137 = tensor.collapse_shape %309 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_138 = tensor.collapse_shape %310 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %311 = linalg.batch_matmul ins(%collapsed_137, %collapsed_138 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_139 = tensor.expand_shape %311 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %312 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_139, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %313 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %314 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_35 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %315 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %316 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_140 = tensor.collapse_shape %315 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_141 = tensor.collapse_shape %316 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %317 = linalg.batch_matmul ins(%collapsed_140, %collapsed_141 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_142 = tensor.expand_shape %317 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %318 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_142, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %319 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %321 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %292 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_143 = tensor.pad %321 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_144 = tensor.collapse_shape %cst_34 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %322 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_143, %collapsed_144 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%323 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %325 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %326 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %327 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %326 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %328 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %327 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%328 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %330 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %331 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %332 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %333 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %334 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %333 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %335 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %336 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %337 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_33 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %338 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %339 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_145 = tensor.collapse_shape %338 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_146 = tensor.collapse_shape %339 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %340 = linalg.batch_matmul ins(%collapsed_145, %collapsed_146 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_147 = tensor.expand_shape %340 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %341 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_147, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %342 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %343 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_32 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %344 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %345 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_148 = tensor.collapse_shape %344 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_149 = tensor.collapse_shape %345 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %346 = linalg.batch_matmul ins(%collapsed_148, %collapsed_149 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_150 = tensor.expand_shape %346 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %347 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_150, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %349 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %348 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %350 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %321 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_151 = tensor.pad %350 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_152 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %351 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_151, %collapsed_152 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%352 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %354 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %355 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %356 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %355 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %357 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %356 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%357 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %359 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %360 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %361 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %362 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %363 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %362 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %364 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %365 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %366 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_30 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %367 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %368 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_153 = tensor.collapse_shape %367 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_154 = tensor.collapse_shape %368 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %369 = linalg.batch_matmul ins(%collapsed_153, %collapsed_154 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_155 = tensor.expand_shape %369 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %370 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_155, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %371 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %372 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_29 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %373 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %374 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_156 = tensor.collapse_shape %373 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_157 = tensor.collapse_shape %374 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %375 = linalg.batch_matmul ins(%collapsed_156, %collapsed_157 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_158 = tensor.expand_shape %375 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %376 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_158, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %378 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %377 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %379 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %350 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_159 = tensor.pad %379 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_160 = tensor.collapse_shape %cst_28 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %380 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_159, %collapsed_160 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %382 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%381 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %383 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %384 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %385 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %384 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %386 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %385 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%386 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %388 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %389 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %390 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %391 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %392 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %391 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %393 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %394 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %395 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_27 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %396 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %397 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_161 = tensor.collapse_shape %396 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_162 = tensor.collapse_shape %397 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %398 = linalg.batch_matmul ins(%collapsed_161, %collapsed_162 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_163 = tensor.expand_shape %398 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %399 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_163, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %400 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %401 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_26 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %402 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %403 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_164 = tensor.collapse_shape %402 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_165 = tensor.collapse_shape %403 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %404 = linalg.batch_matmul ins(%collapsed_164, %collapsed_165 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_166 = tensor.expand_shape %404 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %405 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_166, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %406 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %407 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %406 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %408 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %379 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_167 = tensor.pad %408 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_168 = tensor.collapse_shape %cst_25 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %409 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_167, %collapsed_168 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %410 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %411 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%410 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %412 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %413 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %414 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %413 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %415 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %414 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%415 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %417 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %418 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %419 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %420 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %421 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %420 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %422 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %423 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %424 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_24 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %425 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %426 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_169 = tensor.collapse_shape %425 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_170 = tensor.collapse_shape %426 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %427 = linalg.batch_matmul ins(%collapsed_169, %collapsed_170 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_171 = tensor.expand_shape %427 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %428 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_171, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %429 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %430 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_23 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %431 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %432 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_172 = tensor.collapse_shape %431 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_173 = tensor.collapse_shape %432 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %433 = linalg.batch_matmul ins(%collapsed_172, %collapsed_173 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_174 = tensor.expand_shape %433 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %434 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_174, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %436 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %435 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %437 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %408 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_175 = tensor.pad %437 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_176 = tensor.collapse_shape %cst_22 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %438 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_175, %collapsed_176 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %439 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %440 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%439 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %441 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %442 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %443 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %442 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %444 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %443 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %445 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%444 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %446 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %447 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %448 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %449 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %450 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %449 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %451 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %452 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %453 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_21 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %454 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %455 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_177 = tensor.collapse_shape %454 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_178 = tensor.collapse_shape %455 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %456 = linalg.batch_matmul ins(%collapsed_177, %collapsed_178 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_179 = tensor.expand_shape %456 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %457 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_179, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %458 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %459 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_20 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %460 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %461 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_180 = tensor.collapse_shape %460 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_181 = tensor.collapse_shape %461 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %462 = linalg.batch_matmul ins(%collapsed_180, %collapsed_181 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_182 = tensor.expand_shape %462 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %463 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_182, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %465 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %464 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %466 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %437 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_183 = tensor.pad %466 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_184 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %467 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_183, %collapsed_184 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%468 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %470 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %471 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %472 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %471 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %473 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %472 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %474 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%473 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %475 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %476 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %477 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %478 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %479 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %478 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %480 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %481 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %482 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_18 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %483 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %484 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_185 = tensor.collapse_shape %483 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_186 = tensor.collapse_shape %484 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %485 = linalg.batch_matmul ins(%collapsed_185, %collapsed_186 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_187 = tensor.expand_shape %485 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %486 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_187, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %487 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %488 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_17 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %489 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %490 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_188 = tensor.collapse_shape %489 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_189 = tensor.collapse_shape %490 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %491 = linalg.batch_matmul ins(%collapsed_188, %collapsed_189 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_190 = tensor.expand_shape %491 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %492 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_190, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %494 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %493 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %495 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %466 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %padded_191 = tensor.pad %495 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x384x2x2xf32> to tensor<1x384x8x8xf32>
    %collapsed_192 = tensor.collapse_shape %cst_16 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %496 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_191, %collapsed_192 : tensor<1x384x8x8xf32>, tensor<384x7x7xf32>) outs(%250 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %497 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %498 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%497 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %499 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %500 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %501 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %500 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %502 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %501 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%502 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %504 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %505 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %506 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %507 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %508 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %507 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %509 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %510 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %511 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_15 : tensor<1536x384xf32>) outs(%270 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %512 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510 : tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %513 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<384x1536xf32>) outs(%273 : tensor<1x2x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x384x1536xf32>
    %collapsed_193 = tensor.collapse_shape %512 [[0, 1], [2], [3]] : tensor<1x2x2x384xf32> into tensor<2x2x384xf32>
    %collapsed_194 = tensor.collapse_shape %513 [[0, 1], [2], [3]] : tensor<1x2x384x1536xf32> into tensor<2x384x1536xf32>
    %514 = linalg.batch_matmul ins(%collapsed_193, %collapsed_194 : tensor<2x2x384xf32>, tensor<2x384x1536xf32>) outs(%276 : tensor<2x2x1536xf32>) -> tensor<2x2x1536xf32>
    %expanded_195 = tensor.expand_shape %514 [[0, 1], [2], [3]] : tensor<2x2x1536xf32> into tensor<1x2x2x1536xf32>
    %515 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_195, %cst_40 : tensor<1x2x2x1536xf32>, tensor<1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1536xf32>
    %516 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x2x2x1536xf32>
    %517 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_14 : tensor<384x1536xf32>) outs(%281 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %518 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x2x2x1536xf32>) outs(%278 : tensor<1x2x2x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x1536xf32>
    %519 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1536x384xf32>) outs(%284 : tensor<1x2x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x1536x384xf32>
    %collapsed_196 = tensor.collapse_shape %518 [[0, 1], [2], [3]] : tensor<1x2x2x1536xf32> into tensor<2x2x1536xf32>
    %collapsed_197 = tensor.collapse_shape %519 [[0, 1], [2], [3]] : tensor<1x2x1536x384xf32> into tensor<2x1536x384xf32>
    %520 = linalg.batch_matmul ins(%collapsed_196, %collapsed_197 : tensor<2x2x1536xf32>, tensor<2x1536x384xf32>) outs(%287 : tensor<2x2x384xf32>) -> tensor<2x2x384xf32>
    %expanded_198 = tensor.expand_shape %520 [[0, 1], [2], [3]] : tensor<2x2x384xf32> into tensor<1x2x2x384xf32>
    %521 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_198, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %522 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %523 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43, %522 : tensor<384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %524 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %495 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x384x2x2xf32>
    %525 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x384x2x2xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %526 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%525 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %527 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %528 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %529 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %528 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %530 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %529 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %531 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%530 : tensor<1x2x2x384xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %532 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_79 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %533 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x2x2x1xf32>
    %534 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x1xf32>
    %535 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x384xf32>
    %536 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %535 : tensor<1x2x2x384xf32>, tensor<1x2x2x384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %537 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %cst_41 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %538 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %cst_67 : tensor<1x2x2x384xf32>, tensor<384xf32>) outs(%253 : tensor<1x2x2x384xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x2x2x384xf32>
    %539 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538 : tensor<1x2x2x384xf32>) outs(%249 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x2x2xf32>
    %540 = tensor.empty() : tensor<1x768x1x1xf32>
    %541 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_53 : tensor<768xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %542 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%539, %cst_13 : tensor<1x384x2x2xf32>, tensor<768x384x2x2xf32>) outs(%541 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %padded_199 = tensor.pad %542 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x768x1x1xf32> to tensor<1x768x7x7xf32>
    %collapsed_200 = tensor.collapse_shape %cst_11 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %543 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %collapsed_200 : tensor<1x768x7x7xf32>, tensor<768x7x7xf32>) outs(%541 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %544 = tensor.empty() : tensor<1x1x1x768xf32>
    %545 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x768x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %546 = tensor.empty() : tensor<1x1x1x1xf32>
    %547 = linalg.fill ins(%cst_73 : f32) outs(%546 : tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%545 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %550 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %551 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545, %550 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %552 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %551 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %553 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%552 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %554 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %555 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x1x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %557 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %558 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %557 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %559 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %cst_10 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %560 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %561 = tensor.empty() : tensor<768x3072xf32>
    %562 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_8 : tensor<3072x768xf32>) outs(%561 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %563 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %564 = tensor.empty() : tensor<1x1x768x3072xf32>
    %565 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562 : tensor<768x3072xf32>) outs(%564 : tensor<1x1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x768x3072xf32>
    %collapsed_201 = tensor.collapse_shape %563 [[0, 1], [2], [3]] : tensor<1x1x1x768xf32> into tensor<1x1x768xf32>
    %collapsed_202 = tensor.collapse_shape %565 [[0, 1], [2], [3]] : tensor<1x1x768x3072xf32> into tensor<1x768x3072xf32>
    %566 = tensor.empty() : tensor<1x1x3072xf32>
    %567 = linalg.fill ins(%cst_73 : f32) outs(%566 : tensor<1x1x3072xf32>) -> tensor<1x1x3072xf32>
    %568 = linalg.batch_matmul ins(%collapsed_201, %collapsed_202 : tensor<1x1x768xf32>, tensor<1x768x3072xf32>) outs(%567 : tensor<1x1x3072xf32>) -> tensor<1x1x3072xf32>
    %expanded_203 = tensor.expand_shape %568 [[0, 1], [2], [3]] : tensor<1x1x3072xf32> into tensor<1x1x1x3072xf32>
    %569 = tensor.empty() : tensor<1x1x1x3072xf32>
    %570 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_203, %cst_9 : tensor<1x1x1x3072xf32>, tensor<3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x3072xf32>
    %571 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570 : tensor<1x1x1x3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x1x1x3072xf32>
    %572 = tensor.empty() : tensor<3072x768xf32>
    %573 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_7 : tensor<768x3072xf32>) outs(%572 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %574 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x1x1x3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x3072xf32>
    %575 = tensor.empty() : tensor<1x1x3072x768xf32>
    %576 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<3072x768xf32>) outs(%575 : tensor<1x1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x3072x768xf32>
    %collapsed_204 = tensor.collapse_shape %574 [[0, 1], [2], [3]] : tensor<1x1x1x3072xf32> into tensor<1x1x3072xf32>
    %collapsed_205 = tensor.collapse_shape %576 [[0, 1], [2], [3]] : tensor<1x1x3072x768xf32> into tensor<1x3072x768xf32>
    %577 = tensor.empty() : tensor<1x1x768xf32>
    %578 = linalg.fill ins(%cst_73 : f32) outs(%577 : tensor<1x1x768xf32>) -> tensor<1x1x768xf32>
    %579 = linalg.batch_matmul ins(%collapsed_204, %collapsed_205 : tensor<1x1x3072xf32>, tensor<1x3072x768xf32>) outs(%578 : tensor<1x1x768xf32>) -> tensor<1x1x768xf32>
    %expanded_206 = tensor.expand_shape %579 [[0, 1], [2], [3]] : tensor<1x1x768xf32> into tensor<1x1x1x768xf32>
    %580 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_206, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %581 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580 : tensor<1x1x1x768xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %582 = linalg.generic {indexing_maps = [#map11, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12, %581 : tensor<768x1x1xf32>, tensor<1x768x1x1xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x768x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map14, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %542 : tensor<1x768x1x1xf32>, tensor<1x768x1x1xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x768x1x1xf32>
    %padded_207 = tensor.pad %583 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x768x1x1xf32> to tensor<1x768x7x7xf32>
    %collapsed_208 = tensor.collapse_shape %cst_6 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %584 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_207, %collapsed_208 : tensor<1x768x7x7xf32>, tensor<768x7x7xf32>) outs(%541 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x768x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%585 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %587 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %588 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %589 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585, %588 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %590 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589, %589 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %591 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%590 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %592 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x1x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %595 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %596 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589, %595 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %597 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %cst_10 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %598 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %599 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_5 : tensor<3072x768xf32>) outs(%561 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %600 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598 : tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %601 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599 : tensor<768x3072xf32>) outs(%564 : tensor<1x1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x768x3072xf32>
    %collapsed_209 = tensor.collapse_shape %600 [[0, 1], [2], [3]] : tensor<1x1x1x768xf32> into tensor<1x1x768xf32>
    %collapsed_210 = tensor.collapse_shape %601 [[0, 1], [2], [3]] : tensor<1x1x768x3072xf32> into tensor<1x768x3072xf32>
    %602 = linalg.batch_matmul ins(%collapsed_209, %collapsed_210 : tensor<1x1x768xf32>, tensor<1x768x3072xf32>) outs(%567 : tensor<1x1x3072xf32>) -> tensor<1x1x3072xf32>
    %expanded_211 = tensor.expand_shape %602 [[0, 1], [2], [3]] : tensor<1x1x3072xf32> into tensor<1x1x1x3072xf32>
    %603 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_211, %cst_9 : tensor<1x1x1x3072xf32>, tensor<3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x3072xf32>
    %604 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x1x1x3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x1x1x3072xf32>
    %605 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_4 : tensor<768x3072xf32>) outs(%572 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %606 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604 : tensor<1x1x1x3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x3072xf32>
    %607 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<3072x768xf32>) outs(%575 : tensor<1x1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x3072x768xf32>
    %collapsed_212 = tensor.collapse_shape %606 [[0, 1], [2], [3]] : tensor<1x1x1x3072xf32> into tensor<1x1x3072xf32>
    %collapsed_213 = tensor.collapse_shape %607 [[0, 1], [2], [3]] : tensor<1x1x3072x768xf32> into tensor<1x3072x768xf32>
    %608 = linalg.batch_matmul ins(%collapsed_212, %collapsed_213 : tensor<1x1x3072xf32>, tensor<1x3072x768xf32>) outs(%578 : tensor<1x1x768xf32>) -> tensor<1x1x768xf32>
    %expanded_214 = tensor.expand_shape %608 [[0, 1], [2], [3]] : tensor<1x1x768xf32> into tensor<1x1x1x768xf32>
    %609 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_214, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %610 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x1x1x768xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map11, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12, %610 : tensor<768x1x1xf32>, tensor<1x768x1x1xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x768x1x1xf32>
    %612 = linalg.generic {indexing_maps = [#map14, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611, %583 : tensor<1x768x1x1xf32>, tensor<1x768x1x1xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x768x1x1xf32>
    %padded_215 = tensor.pad %612 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_73 : f32
    } : tensor<1x768x1x1xf32> to tensor<1x768x7x7xf32>
    %collapsed_216 = tensor.collapse_shape %cst_3 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %613 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_215, %collapsed_216 : tensor<1x768x7x7xf32>, tensor<768x7x7xf32>) outs(%541 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613 : tensor<1x768x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %615 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%614 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %616 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %617 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %618 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614, %617 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %619 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %618 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %620 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%619 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %621 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %622 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x1x1x1xf32>
    %623 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %624 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %625 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %624 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %626 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %cst_10 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %627 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %628 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<3072x768xf32>) outs(%561 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %629 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %630 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<768x3072xf32>) outs(%564 : tensor<1x1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x768x3072xf32>
    %collapsed_217 = tensor.collapse_shape %629 [[0, 1], [2], [3]] : tensor<1x1x1x768xf32> into tensor<1x1x768xf32>
    %collapsed_218 = tensor.collapse_shape %630 [[0, 1], [2], [3]] : tensor<1x1x768x3072xf32> into tensor<1x768x3072xf32>
    %631 = linalg.batch_matmul ins(%collapsed_217, %collapsed_218 : tensor<1x1x768xf32>, tensor<1x768x3072xf32>) outs(%567 : tensor<1x1x3072xf32>) -> tensor<1x1x3072xf32>
    %expanded_219 = tensor.expand_shape %631 [[0, 1], [2], [3]] : tensor<1x1x3072xf32> into tensor<1x1x1x3072xf32>
    %632 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_219, %cst_9 : tensor<1x1x1x3072xf32>, tensor<3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x3072xf32>
    %633 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632 : tensor<1x1x1x3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_74 : f32
      %667 = math.erf %666 : f32
      %668 = arith.addf %667, %cst_81 : f32
      %669 = arith.mulf %668, %cst_75 : f32
      %670 = arith.mulf %in, %669 : f32
      linalg.yield %670 : f32
    } -> tensor<1x1x1x3072xf32>
    %634 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<768x3072xf32>) outs(%572 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %635 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x1x1x3072xf32>) outs(%569 : tensor<1x1x1x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x3072xf32>
    %636 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634 : tensor<3072x768xf32>) outs(%575 : tensor<1x1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x3072x768xf32>
    %collapsed_220 = tensor.collapse_shape %635 [[0, 1], [2], [3]] : tensor<1x1x1x3072xf32> into tensor<1x1x3072xf32>
    %collapsed_221 = tensor.collapse_shape %636 [[0, 1], [2], [3]] : tensor<1x1x3072x768xf32> into tensor<1x3072x768xf32>
    %637 = linalg.batch_matmul ins(%collapsed_220, %collapsed_221 : tensor<1x1x3072xf32>, tensor<1x3072x768xf32>) outs(%578 : tensor<1x1x768xf32>) -> tensor<1x1x768xf32>
    %expanded_222 = tensor.expand_shape %637 [[0, 1], [2], [3]] : tensor<1x1x768xf32> into tensor<1x1x1x768xf32>
    %638 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_222, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %639 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x1x1x768xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %640 = linalg.generic {indexing_maps = [#map11, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12, %639 : tensor<768x1x1xf32>, tensor<1x768x1x1xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x768x1x1xf32>
    %641 = linalg.generic {indexing_maps = [#map14, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %612 : tensor<1x768x1x1xf32>, tensor<1x768x1x1xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x768x1x1xf32>
    %642 = linalg.fill ins(%cst_73 : f32) outs(%540 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %643 = tensor.empty() : tensor<1x1xf32>
    %644 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%641, %643 : tensor<1x768x1x1xf32>, tensor<1x1xf32>) outs(%642 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %645 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644 : tensor<1x768x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %646 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%645 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %647 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %648 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %649 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645, %648 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.subf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %650 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %649 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %651 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%650 : tensor<1x1x1x768xf32>) outs(%547 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.addf %in, %out : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.divf %in, %cst_80 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = arith.truncf %cst_76 : f64 to f32
      %667 = arith.addf %in, %666 : f32
      linalg.yield %667 : f32
    } -> tensor<1x1x1x1xf32>
    %654 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653 : tensor<1x1x1x1xf32>) outs(%546 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %666 = math.rsqrt %in : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x1xf32>
    %655 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654 : tensor<1x1x1x1xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %656 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %655 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %657 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656, %cst_10 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.mulf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %658 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657, %cst_53 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%544 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1x1x768xf32>
    %659 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658 : tensor<1x1x1x768xf32>) outs(%540 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %collapsed_223 = tensor.collapse_shape %659 [[0], [1, 2, 3]] : tensor<1x768x1x1xf32> into tensor<1x768xf32>
    %660 = tensor.empty() : tensor<768x1000xf32>
    %661 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x768xf32>) outs(%660 : tensor<768x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x1000xf32>
    %662 = tensor.empty() : tensor<1x1000xf32>
    %663 = linalg.fill ins(%cst_73 : f32) outs(%662 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %664 = linalg.matmul ins(%collapsed_223, %661 : tensor<1x768xf32>, tensor<768x1000xf32>) outs(%663 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %665 = linalg.generic {indexing_maps = [#map15, #map16, #map8], iterator_types = ["parallel", "parallel"]} ins(%664, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%662 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_224: f32, %out: f32):
      %666 = arith.addf %in, %in_224 : f32
      linalg.yield %666 : f32
    } -> tensor<1x1000xf32>
    return %665 : tensor<1x1000xf32>
  }
}
