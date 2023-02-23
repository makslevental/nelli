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
    %cst = arith.constant dense<0.014446e+00> : tensor<1000x1024xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.008039e+00> : tensor<1024x4096xf32>
    %cst_2 = arith.constant dense<-0.002265e+00> : tensor<4096x1024xf32>
    %cst_3 = arith.constant dense<0.002080e+00> : tensor<1024x1x7x7xf32>
    %cst_4 = arith.constant dense<0.009639e+00> : tensor<1024x4096xf32>
    %cst_5 = arith.constant dense<-0.008554e+00> : tensor<4096x1024xf32>
    %cst_6 = arith.constant dense<0.005486e+00> : tensor<1024x1x7x7xf32>
    %cst_7 = arith.constant dense<-0.015215e+00> : tensor<1024x4096xf32>
    %cst_8 = arith.constant dense<0.003807e+00> : tensor<4096x1024xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<4096xf32>
    %cst_10 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_11 = arith.constant dense<-0.004234e+00> : tensor<1024x1x7x7xf32>
    %cst_12 = arith.constant dense<9.99999997E-7> : tensor<1024x1x1xf32>
    %cst_13 = arith.constant dense<0.009901e+00> : tensor<1024x512x2x2xf32>
    %cst_14 = arith.constant dense<-0.015027e+00> : tensor<512x2048xf32>
    %cst_15 = arith.constant dense<-0.018213e+00> : tensor<2048x512xf32>
    %cst_16 = arith.constant dense<0.010577e+00> : tensor<512x1x7x7xf32>
    %cst_17 = arith.constant dense<0.001036e+00> : tensor<512x2048xf32>
    %cst_18 = arith.constant dense<-0.006452e+00> : tensor<2048x512xf32>
    %cst_19 = arith.constant dense<-0.011518e+00> : tensor<512x1x7x7xf32>
    %cst_20 = arith.constant dense<-0.002497e+00> : tensor<512x2048xf32>
    %cst_21 = arith.constant dense<0.000206e+00> : tensor<2048x512xf32>
    %cst_22 = arith.constant dense<-0.017409e+00> : tensor<512x1x7x7xf32>
    %cst_23 = arith.constant dense<0.010348e+00> : tensor<512x2048xf32>
    %cst_24 = arith.constant dense<0.000621e+00> : tensor<2048x512xf32>
    %cst_25 = arith.constant dense<0.011068e+00> : tensor<512x1x7x7xf32>
    %cst_26 = arith.constant dense<0.016788e+00> : tensor<512x2048xf32>
    %cst_27 = arith.constant dense<0.006307e+00> : tensor<2048x512xf32>
    %cst_28 = arith.constant dense<0.006774e+00> : tensor<512x1x7x7xf32>
    %cst_29 = arith.constant dense<0.002026e+00> : tensor<512x2048xf32>
    %cst_30 = arith.constant dense<-0.015218e+00> : tensor<2048x512xf32>
    %cst_31 = arith.constant dense<-0.000759e+00> : tensor<512x1x7x7xf32>
    %cst_32 = arith.constant dense<0.018263e+00> : tensor<512x2048xf32>
    %cst_33 = arith.constant dense<0.002118e+00> : tensor<2048x512xf32>
    %cst_34 = arith.constant dense<-0.008834e+00> : tensor<512x1x7x7xf32>
    %cst_35 = arith.constant dense<-0.013603e+00> : tensor<512x2048xf32>
    %cst_36 = arith.constant dense<0.010310e+00> : tensor<2048x512xf32>
    %cst_37 = arith.constant dense<-0.024800e+00> : tensor<512x1x7x7xf32>
    %cst_38 = arith.constant dense<0.005146e+00> : tensor<512x2048xf32>
    %cst_39 = arith.constant dense<-0.005510e+00> : tensor<2048x512xf32>
    %cst_40 = arith.constant dense<-0.001837e+00> : tensor<512x1x7x7xf32>
    %cst_41 = arith.constant dense<0.005916e+00> : tensor<512x2048xf32>
    %cst_42 = arith.constant dense<0.004172e+00> : tensor<2048x512xf32>
    %cst_43 = arith.constant dense<0.002773e+00> : tensor<512x1x7x7xf32>
    %cst_44 = arith.constant dense<-0.017640e+00> : tensor<512x2048xf32>
    %cst_45 = arith.constant dense<-0.003683e+00> : tensor<2048x512xf32>
    %cst_46 = arith.constant dense<-0.015191e+00> : tensor<512x1x7x7xf32>
    %cst_47 = arith.constant dense<0.000350e+00> : tensor<512x2048xf32>
    %cst_48 = arith.constant dense<0.008607e+00> : tensor<2048x512xf32>
    %cst_49 = arith.constant dense<0.006601e+00> : tensor<512x1x7x7xf32>
    %cst_50 = arith.constant dense<0.004865e+00> : tensor<512x2048xf32>
    %cst_51 = arith.constant dense<0.000165e+00> : tensor<2048x512xf32>
    %cst_52 = arith.constant dense<-0.027360e+00> : tensor<512x1x7x7xf32>
    %cst_53 = arith.constant dense<0.010092e+00> : tensor<512x2048xf32>
    %cst_54 = arith.constant dense<0.009288e+00> : tensor<2048x512xf32>
    %cst_55 = arith.constant dense<0.008910e+00> : tensor<512x1x7x7xf32>
    %cst_56 = arith.constant dense<0.019422e+00> : tensor<512x2048xf32>
    %cst_57 = arith.constant dense<0.008737e+00> : tensor<2048x512xf32>
    %cst_58 = arith.constant dense<0.011989e+00> : tensor<512x1x7x7xf32>
    %cst_59 = arith.constant dense<0.001028e+00> : tensor<512x2048xf32>
    %cst_60 = arith.constant dense<0.000736e+00> : tensor<2048x512xf32>
    %cst_61 = arith.constant dense<-0.007615e+00> : tensor<512x1x7x7xf32>
    %cst_62 = arith.constant dense<0.015954e+00> : tensor<512x2048xf32>
    %cst_63 = arith.constant dense<-0.007738e+00> : tensor<2048x512xf32>
    %cst_64 = arith.constant dense<-0.009725e+00> : tensor<512x1x7x7xf32>
    %cst_65 = arith.constant dense<0.006499e+00> : tensor<512x2048xf32>
    %cst_66 = arith.constant dense<0.012410e+00> : tensor<2048x512xf32>
    %cst_67 = arith.constant dense<0.014411e+00> : tensor<512x1x7x7xf32>
    %cst_68 = arith.constant dense<-0.005654e+00> : tensor<512x2048xf32>
    %cst_69 = arith.constant dense<0.005126e+00> : tensor<2048x512xf32>
    %cst_70 = arith.constant dense<-0.005598e+00> : tensor<512x1x7x7xf32>
    %cst_71 = arith.constant dense<-0.008155e+00> : tensor<512x2048xf32>
    %cst_72 = arith.constant dense<-0.003646e+00> : tensor<2048x512xf32>
    %cst_73 = arith.constant dense<-0.014722e+00> : tensor<512x1x7x7xf32>
    %cst_74 = arith.constant dense<-0.020556e+00> : tensor<512x2048xf32>
    %cst_75 = arith.constant dense<-0.009966e+00> : tensor<2048x512xf32>
    %cst_76 = arith.constant dense<-0.007542e+00> : tensor<512x1x7x7xf32>
    %cst_77 = arith.constant dense<-0.007878e+00> : tensor<512x2048xf32>
    %cst_78 = arith.constant dense<0.003397e+00> : tensor<2048x512xf32>
    %cst_79 = arith.constant dense<-0.015656e+00> : tensor<512x1x7x7xf32>
    %cst_80 = arith.constant dense<0.002510e+00> : tensor<512x2048xf32>
    %cst_81 = arith.constant dense<0.008112e+00> : tensor<2048x512xf32>
    %cst_82 = arith.constant dense<-0.000502e+00> : tensor<512x1x7x7xf32>
    %cst_83 = arith.constant dense<-0.009683e+00> : tensor<512x2048xf32>
    %cst_84 = arith.constant dense<0.013010e+00> : tensor<2048x512xf32>
    %cst_85 = arith.constant dense<0.000191e+00> : tensor<512x1x7x7xf32>
    %cst_86 = arith.constant dense<-0.012762e+00> : tensor<512x2048xf32>
    %cst_87 = arith.constant dense<-0.011716e+00> : tensor<2048x512xf32>
    %cst_88 = arith.constant dense<-0.006480e+00> : tensor<512x1x7x7xf32>
    %cst_89 = arith.constant dense<-0.015379e+00> : tensor<512x2048xf32>
    %cst_90 = arith.constant dense<-0.008252e+00> : tensor<2048x512xf32>
    %cst_91 = arith.constant dense<0.008549e+00> : tensor<512x1x7x7xf32>
    %cst_92 = arith.constant dense<0.018018e+00> : tensor<512x2048xf32>
    %cst_93 = arith.constant dense<-0.005279e+00> : tensor<2048x512xf32>
    %cst_94 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_95 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_96 = arith.constant dense<-0.000903e+00> : tensor<512x1x7x7xf32>
    %cst_97 = arith.constant dense<9.99999997E-7> : tensor<512x1x1xf32>
    %cst_98 = arith.constant dense<0.005055e+00> : tensor<512x256x2x2xf32>
    %cst_99 = arith.constant dense<0.005451e+00> : tensor<256x1024xf32>
    %cst_100 = arith.constant dense<-0.003273e+00> : tensor<1024x256xf32>
    %cst_101 = arith.constant dense<-0.005629e+00> : tensor<256x1x7x7xf32>
    %cst_102 = arith.constant dense<-0.003787e+00> : tensor<256x1024xf32>
    %cst_103 = arith.constant dense<0.022187e+00> : tensor<1024x256xf32>
    %cst_104 = arith.constant dense<0.013852e+00> : tensor<256x1x7x7xf32>
    %cst_105 = arith.constant dense<0.008446e+00> : tensor<256x1024xf32>
    %cst_106 = arith.constant dense<-0.015939e+00> : tensor<1024x256xf32>
    %cst_107 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_108 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_109 = arith.constant dense<-0.006681e+00> : tensor<256x1x7x7xf32>
    %cst_110 = arith.constant dense<9.99999997E-7> : tensor<256x1x1xf32>
    %cst_111 = arith.constant dense<-0.014218e+00> : tensor<256x128x2x2xf32>
    %cst_112 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_113 = arith.constant dense<0.024457e+00> : tensor<128x512xf32>
    %cst_114 = arith.constant dense<0.008898e+00> : tensor<512x128xf32>
    %cst_115 = arith.constant dense<-0.009893e+00> : tensor<128x1x7x7xf32>
    %cst_116 = arith.constant dense<0.004199e+00> : tensor<128x512xf32>
    %cst_117 = arith.constant dense<0.000964e+00> : tensor<512x128xf32>
    %cst_118 = arith.constant dense<-0.018992e+00> : tensor<128x1x7x7xf32>
    %cst_119 = arith.constant dense<-0.008292e+00> : tensor<128x512xf32>
    %cst_120 = arith.constant dense<-0.001317e+00> : tensor<512x128xf32>
    %cst_121 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_122 = arith.constant dense<0.002320e+00> : tensor<128x1x7x7xf32>
    %cst_123 = arith.constant dense<9.99999997E-7> : tensor<128x1x1xf32>
    %cst_124 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_125 = arith.constant dense<0.015039e+00> : tensor<128x3x4x4xf32>
    %cst_126 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_127 = arith.constant 0.000000e+00 : f32
    %cst_128 = arith.constant 1.41421354 : f32
    %cst_129 = arith.constant 5.000000e-01 : f32
    %cst_130 = arith.constant 9.9999999999999995E-7 : f64
    %cst_131 = arith.constant 1.280000e+02 : f32
    %cst_132 = arith.constant 2.560000e+02 : f32
    %cst_133 = arith.constant 5.120000e+02 : f32
    %cst_134 = arith.constant 1.024000e+03 : f32
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %cst_135 = arith.constant 1.000000e+00 : f32
    %0 = tensor.empty() : tensor<1x128x8x8xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_126 : tensor<128xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x8x8xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%arg0, %cst_125 : tensor<1x3x32x32xf32>, tensor<128x3x4x4xf32>) outs(%1 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %3 = tensor.empty() : tensor<1x8x8x128xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x128x8x8xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %5 = tensor.empty() : tensor<1x8x8x1xf32>
    %6 = linalg.fill ins(%cst_127 : f32) outs(%5 : tensor<1x8x8x1xf32>) -> tensor<1x8x8x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%4 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %8 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %9 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %9 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %11 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %10 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%11 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %13 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %14 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x8x8x1xf32>
    %15 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %16 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %17 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %16 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %18 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_124 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %19 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x8x8x128xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x8x8xf32>
    %padded = tensor.pad %20 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x14x14xf32>
    %collapsed = tensor.collapse_shape %cst_122 [[0, 1], [2], [3]] : tensor<128x1x7x7xf32> into tensor<128x7x7xf32>
    %21 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %collapsed : tensor<1x128x14x14xf32>, tensor<128x7x7xf32>) outs(%1 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x128x8x8xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%22 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %24 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %25 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %26 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %25 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %27 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %26 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%27 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %29 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %30 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x8x8x1xf32>
    %31 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %32 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %33 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %32 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %34 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %cst_124 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %35 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %36 = tensor.empty() : tensor<128x512xf32>
    %37 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_120 : tensor<512x128xf32>) outs(%36 : tensor<128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512xf32>
    %38 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %39 = tensor.empty() : tensor<1x8x128x512xf32>
    %40 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<128x512xf32>) outs(%39 : tensor<1x8x128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x128x512xf32>
    %collapsed_136 = tensor.collapse_shape %38 [[0, 1], [2], [3]] : tensor<1x8x8x128xf32> into tensor<8x8x128xf32>
    %collapsed_137 = tensor.collapse_shape %40 [[0, 1], [2], [3]] : tensor<1x8x128x512xf32> into tensor<8x128x512xf32>
    %41 = tensor.empty() : tensor<8x8x512xf32>
    %42 = linalg.fill ins(%cst_127 : f32) outs(%41 : tensor<8x8x512xf32>) -> tensor<8x8x512xf32>
    %43 = linalg.batch_matmul ins(%collapsed_136, %collapsed_137 : tensor<8x8x128xf32>, tensor<8x128x512xf32>) outs(%42 : tensor<8x8x512xf32>) -> tensor<8x8x512xf32>
    %expanded = tensor.expand_shape %43 [[0, 1], [2], [3]] : tensor<8x8x512xf32> into tensor<1x8x8x512xf32>
    %44 = tensor.empty() : tensor<1x8x8x512xf32>
    %45 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %cst_121 : tensor<1x8x8x512xf32>, tensor<512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x512xf32>
    %46 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45 : tensor<1x8x8x512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x8x8x512xf32>
    %47 = tensor.empty() : tensor<512x128xf32>
    %48 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_119 : tensor<128x512xf32>) outs(%47 : tensor<512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128xf32>
    %49 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x8x8x512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x512xf32>
    %50 = tensor.empty() : tensor<1x8x512x128xf32>
    %51 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<512x128xf32>) outs(%50 : tensor<1x8x512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x512x128xf32>
    %collapsed_138 = tensor.collapse_shape %49 [[0, 1], [2], [3]] : tensor<1x8x8x512xf32> into tensor<8x8x512xf32>
    %collapsed_139 = tensor.collapse_shape %51 [[0, 1], [2], [3]] : tensor<1x8x512x128xf32> into tensor<8x512x128xf32>
    %52 = tensor.empty() : tensor<8x8x128xf32>
    %53 = linalg.fill ins(%cst_127 : f32) outs(%52 : tensor<8x8x128xf32>) -> tensor<8x8x128xf32>
    %54 = linalg.batch_matmul ins(%collapsed_138, %collapsed_139 : tensor<8x8x512xf32>, tensor<8x512x128xf32>) outs(%53 : tensor<8x8x128xf32>) -> tensor<8x8x128xf32>
    %expanded_140 = tensor.expand_shape %54 [[0, 1], [2], [3]] : tensor<8x8x128xf32> into tensor<1x8x8x128xf32>
    %55 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_140, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x8x8x128xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x8x8xf32>
    %57 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_123, %56 : tensor<128x1x1xf32>, tensor<1x128x8x8xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x128x8x8xf32>
    %58 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %20 : tensor<1x128x8x8xf32>, tensor<1x128x8x8xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_141 = tensor.pad %58 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x14x14xf32>
    %collapsed_142 = tensor.collapse_shape %cst_118 [[0, 1], [2], [3]] : tensor<128x1x7x7xf32> into tensor<128x7x7xf32>
    %59 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_141, %collapsed_142 : tensor<1x128x14x14xf32>, tensor<128x7x7xf32>) outs(%1 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x128x8x8xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%60 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %62 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %63 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %63 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %64 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%65 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %67 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %68 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x8x8x1xf32>
    %69 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %70 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %71 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %70 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %72 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_124 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %73 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %74 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_117 : tensor<512x128xf32>) outs(%36 : tensor<128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512xf32>
    %75 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %76 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<128x512xf32>) outs(%39 : tensor<1x8x128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x128x512xf32>
    %collapsed_143 = tensor.collapse_shape %75 [[0, 1], [2], [3]] : tensor<1x8x8x128xf32> into tensor<8x8x128xf32>
    %collapsed_144 = tensor.collapse_shape %76 [[0, 1], [2], [3]] : tensor<1x8x128x512xf32> into tensor<8x128x512xf32>
    %77 = linalg.batch_matmul ins(%collapsed_143, %collapsed_144 : tensor<8x8x128xf32>, tensor<8x128x512xf32>) outs(%42 : tensor<8x8x512xf32>) -> tensor<8x8x512xf32>
    %expanded_145 = tensor.expand_shape %77 [[0, 1], [2], [3]] : tensor<8x8x512xf32> into tensor<1x8x8x512xf32>
    %78 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_145, %cst_121 : tensor<1x8x8x512xf32>, tensor<512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x512xf32>
    %79 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x8x8x512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x8x8x512xf32>
    %80 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_116 : tensor<128x512xf32>) outs(%47 : tensor<512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128xf32>
    %81 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x8x8x512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x512xf32>
    %82 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<512x128xf32>) outs(%50 : tensor<1x8x512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x512x128xf32>
    %collapsed_146 = tensor.collapse_shape %81 [[0, 1], [2], [3]] : tensor<1x8x8x512xf32> into tensor<8x8x512xf32>
    %collapsed_147 = tensor.collapse_shape %82 [[0, 1], [2], [3]] : tensor<1x8x512x128xf32> into tensor<8x512x128xf32>
    %83 = linalg.batch_matmul ins(%collapsed_146, %collapsed_147 : tensor<8x8x512xf32>, tensor<8x512x128xf32>) outs(%53 : tensor<8x8x128xf32>) -> tensor<8x8x128xf32>
    %expanded_148 = tensor.expand_shape %83 [[0, 1], [2], [3]] : tensor<8x8x128xf32> into tensor<1x8x8x128xf32>
    %84 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_148, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %85 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x8x8x128xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x8x8xf32>
    %86 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_123, %85 : tensor<128x1x1xf32>, tensor<1x128x8x8xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x128x8x8xf32>
    %87 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %58 : tensor<1x128x8x8xf32>, tensor<1x128x8x8xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_149 = tensor.pad %87 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x14x14xf32>
    %collapsed_150 = tensor.collapse_shape %cst_115 [[0, 1], [2], [3]] : tensor<128x1x7x7xf32> into tensor<128x7x7xf32>
    %88 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_149, %collapsed_150 : tensor<1x128x14x14xf32>, tensor<128x7x7xf32>) outs(%1 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x128x8x8xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%89 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %91 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %92 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %93 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %92 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %94 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %93 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%94 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %96 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x8x8x1xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %99 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %100 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %99 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %101 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_124 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %102 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %103 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_114 : tensor<512x128xf32>) outs(%36 : tensor<128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x512xf32>
    %104 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %105 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<128x512xf32>) outs(%39 : tensor<1x8x128x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x128x512xf32>
    %collapsed_151 = tensor.collapse_shape %104 [[0, 1], [2], [3]] : tensor<1x8x8x128xf32> into tensor<8x8x128xf32>
    %collapsed_152 = tensor.collapse_shape %105 [[0, 1], [2], [3]] : tensor<1x8x128x512xf32> into tensor<8x128x512xf32>
    %106 = linalg.batch_matmul ins(%collapsed_151, %collapsed_152 : tensor<8x8x128xf32>, tensor<8x128x512xf32>) outs(%42 : tensor<8x8x512xf32>) -> tensor<8x8x512xf32>
    %expanded_153 = tensor.expand_shape %106 [[0, 1], [2], [3]] : tensor<8x8x512xf32> into tensor<1x8x8x512xf32>
    %107 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153, %cst_121 : tensor<1x8x8x512xf32>, tensor<512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x512xf32>
    %108 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x8x8x512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x8x8x512xf32>
    %109 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_113 : tensor<128x512xf32>) outs(%47 : tensor<512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x128xf32>
    %110 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x8x8x512xf32>) outs(%44 : tensor<1x8x8x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x512xf32>
    %111 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<512x128xf32>) outs(%50 : tensor<1x8x512x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x512x128xf32>
    %collapsed_154 = tensor.collapse_shape %110 [[0, 1], [2], [3]] : tensor<1x8x8x512xf32> into tensor<8x8x512xf32>
    %collapsed_155 = tensor.collapse_shape %111 [[0, 1], [2], [3]] : tensor<1x8x512x128xf32> into tensor<8x512x128xf32>
    %112 = linalg.batch_matmul ins(%collapsed_154, %collapsed_155 : tensor<8x8x512xf32>, tensor<8x512x128xf32>) outs(%53 : tensor<8x8x128xf32>) -> tensor<8x8x128xf32>
    %expanded_156 = tensor.expand_shape %112 [[0, 1], [2], [3]] : tensor<8x8x128xf32> into tensor<1x8x8x128xf32>
    %113 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_156, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x8x8x128xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x8x8xf32>
    %115 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_123, %114 : tensor<128x1x1xf32>, tensor<1x128x8x8xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x128x8x8xf32>
    %116 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %87 : tensor<1x128x8x8xf32>, tensor<1x128x8x8xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x128x8x8xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x128x8x8xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%117 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %119 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %120 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %121 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %120 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %122 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %121 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%122 : tensor<1x8x8x128xf32>) outs(%6 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %124 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_131 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %125 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x8x8x1xf32>
    %126 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x8x8x1xf32>) outs(%5 : tensor<1x8x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x1xf32>
    %127 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x8x8x1xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x8x128xf32>
    %128 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %127 : tensor<1x8x8x128xf32>, tensor<1x8x8x128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %129 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_124 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %130 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_126 : tensor<1x8x8x128xf32>, tensor<128xf32>) outs(%3 : tensor<1x8x8x128xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x8x8x128xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x8x8x128xf32>) outs(%0 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x8x8xf32>
    %132 = tensor.empty() : tensor<1x256x4x4xf32>
    %133 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_112 : tensor<256xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x4x4xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%131, %cst_111 : tensor<1x128x8x8xf32>, tensor<256x128x2x2xf32>) outs(%133 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %padded_157 = tensor.pad %134 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x10x10xf32>
    %collapsed_158 = tensor.collapse_shape %cst_109 [[0, 1], [2], [3]] : tensor<256x1x7x7xf32> into tensor<256x7x7xf32>
    %135 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_157, %collapsed_158 : tensor<1x256x10x10xf32>, tensor<256x7x7xf32>) outs(%133 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %136 = tensor.empty() : tensor<1x4x4x256xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x256x4x4xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %138 = tensor.empty() : tensor<1x4x4x1xf32>
    %139 = linalg.fill ins(%cst_127 : f32) outs(%138 : tensor<1x4x4x1xf32>) -> tensor<1x4x4x1xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%137 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %141 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %142 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %143 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %142 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %144 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %143 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%144 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %146 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %147 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x4x4x1xf32>
    %148 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %149 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %150 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %149 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %151 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %cst_108 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %152 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %153 = tensor.empty() : tensor<256x1024xf32>
    %154 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_106 : tensor<1024x256xf32>) outs(%153 : tensor<256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024xf32>
    %155 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %156 = tensor.empty() : tensor<1x4x256x1024xf32>
    %157 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<256x1024xf32>) outs(%156 : tensor<1x4x256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x256x1024xf32>
    %collapsed_159 = tensor.collapse_shape %155 [[0, 1], [2], [3]] : tensor<1x4x4x256xf32> into tensor<4x4x256xf32>
    %collapsed_160 = tensor.collapse_shape %157 [[0, 1], [2], [3]] : tensor<1x4x256x1024xf32> into tensor<4x256x1024xf32>
    %158 = tensor.empty() : tensor<4x4x1024xf32>
    %159 = linalg.fill ins(%cst_127 : f32) outs(%158 : tensor<4x4x1024xf32>) -> tensor<4x4x1024xf32>
    %160 = linalg.batch_matmul ins(%collapsed_159, %collapsed_160 : tensor<4x4x256xf32>, tensor<4x256x1024xf32>) outs(%159 : tensor<4x4x1024xf32>) -> tensor<4x4x1024xf32>
    %expanded_161 = tensor.expand_shape %160 [[0, 1], [2], [3]] : tensor<4x4x1024xf32> into tensor<1x4x4x1024xf32>
    %161 = tensor.empty() : tensor<1x4x4x1024xf32>
    %162 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_161, %cst_107 : tensor<1x4x4x1024xf32>, tensor<1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1024xf32>
    %163 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x4x4x1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x4x4x1024xf32>
    %164 = tensor.empty() : tensor<1024x256xf32>
    %165 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_105 : tensor<256x1024xf32>) outs(%164 : tensor<1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256xf32>
    %166 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x4x4x1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x1024xf32>
    %167 = tensor.empty() : tensor<1x4x1024x256xf32>
    %168 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1024x256xf32>) outs(%167 : tensor<1x4x1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x1024x256xf32>
    %collapsed_162 = tensor.collapse_shape %166 [[0, 1], [2], [3]] : tensor<1x4x4x1024xf32> into tensor<4x4x1024xf32>
    %collapsed_163 = tensor.collapse_shape %168 [[0, 1], [2], [3]] : tensor<1x4x1024x256xf32> into tensor<4x1024x256xf32>
    %169 = tensor.empty() : tensor<4x4x256xf32>
    %170 = linalg.fill ins(%cst_127 : f32) outs(%169 : tensor<4x4x256xf32>) -> tensor<4x4x256xf32>
    %171 = linalg.batch_matmul ins(%collapsed_162, %collapsed_163 : tensor<4x4x1024xf32>, tensor<4x1024x256xf32>) outs(%170 : tensor<4x4x256xf32>) -> tensor<4x4x256xf32>
    %expanded_164 = tensor.expand_shape %171 [[0, 1], [2], [3]] : tensor<4x4x256xf32> into tensor<1x4x4x256xf32>
    %172 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_164, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x4x4x256xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x4x4xf32>
    %174 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_110, %173 : tensor<256x1x1xf32>, tensor<1x256x4x4xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x256x4x4xf32>
    %175 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %134 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_165 = tensor.pad %175 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x10x10xf32>
    %collapsed_166 = tensor.collapse_shape %cst_104 [[0, 1], [2], [3]] : tensor<256x1x7x7xf32> into tensor<256x7x7xf32>
    %176 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_165, %collapsed_166 : tensor<1x256x10x10xf32>, tensor<256x7x7xf32>) outs(%133 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x256x4x4xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%177 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %179 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %180 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %181 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %180 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %182 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %181 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%182 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %184 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %185 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x4x4x1xf32>
    %186 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %187 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %188 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %187 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %189 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %cst_108 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %190 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %191 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_103 : tensor<1024x256xf32>) outs(%153 : tensor<256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024xf32>
    %192 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %193 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<256x1024xf32>) outs(%156 : tensor<1x4x256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x256x1024xf32>
    %collapsed_167 = tensor.collapse_shape %192 [[0, 1], [2], [3]] : tensor<1x4x4x256xf32> into tensor<4x4x256xf32>
    %collapsed_168 = tensor.collapse_shape %193 [[0, 1], [2], [3]] : tensor<1x4x256x1024xf32> into tensor<4x256x1024xf32>
    %194 = linalg.batch_matmul ins(%collapsed_167, %collapsed_168 : tensor<4x4x256xf32>, tensor<4x256x1024xf32>) outs(%159 : tensor<4x4x1024xf32>) -> tensor<4x4x1024xf32>
    %expanded_169 = tensor.expand_shape %194 [[0, 1], [2], [3]] : tensor<4x4x1024xf32> into tensor<1x4x4x1024xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_169, %cst_107 : tensor<1x4x4x1024xf32>, tensor<1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1024xf32>
    %196 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x4x4x1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x4x4x1024xf32>
    %197 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_102 : tensor<256x1024xf32>) outs(%164 : tensor<1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256xf32>
    %198 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x4x4x1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x1024xf32>
    %199 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1024x256xf32>) outs(%167 : tensor<1x4x1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x1024x256xf32>
    %collapsed_170 = tensor.collapse_shape %198 [[0, 1], [2], [3]] : tensor<1x4x4x1024xf32> into tensor<4x4x1024xf32>
    %collapsed_171 = tensor.collapse_shape %199 [[0, 1], [2], [3]] : tensor<1x4x1024x256xf32> into tensor<4x1024x256xf32>
    %200 = linalg.batch_matmul ins(%collapsed_170, %collapsed_171 : tensor<4x4x1024xf32>, tensor<4x1024x256xf32>) outs(%170 : tensor<4x4x256xf32>) -> tensor<4x4x256xf32>
    %expanded_172 = tensor.expand_shape %200 [[0, 1], [2], [3]] : tensor<4x4x256xf32> into tensor<1x4x4x256xf32>
    %201 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_172, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x4x4x256xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x4x4xf32>
    %203 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_110, %202 : tensor<256x1x1xf32>, tensor<1x256x4x4xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x256x4x4xf32>
    %204 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %175 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_173 = tensor.pad %204 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x10x10xf32>
    %collapsed_174 = tensor.collapse_shape %cst_101 [[0, 1], [2], [3]] : tensor<256x1x7x7xf32> into tensor<256x7x7xf32>
    %205 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_173, %collapsed_174 : tensor<1x256x10x10xf32>, tensor<256x7x7xf32>) outs(%133 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x256x4x4xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%206 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %208 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %209 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %210 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %209 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %211 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %210 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%211 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %213 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x4x4x1xf32>
    %215 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %216 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %217 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %216 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %218 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %cst_108 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %219 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %220 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_100 : tensor<1024x256xf32>) outs(%153 : tensor<256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x1024xf32>
    %221 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %222 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<256x1024xf32>) outs(%156 : tensor<1x4x256x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x256x1024xf32>
    %collapsed_175 = tensor.collapse_shape %221 [[0, 1], [2], [3]] : tensor<1x4x4x256xf32> into tensor<4x4x256xf32>
    %collapsed_176 = tensor.collapse_shape %222 [[0, 1], [2], [3]] : tensor<1x4x256x1024xf32> into tensor<4x256x1024xf32>
    %223 = linalg.batch_matmul ins(%collapsed_175, %collapsed_176 : tensor<4x4x256xf32>, tensor<4x256x1024xf32>) outs(%159 : tensor<4x4x1024xf32>) -> tensor<4x4x1024xf32>
    %expanded_177 = tensor.expand_shape %223 [[0, 1], [2], [3]] : tensor<4x4x1024xf32> into tensor<1x4x4x1024xf32>
    %224 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_177, %cst_107 : tensor<1x4x4x1024xf32>, tensor<1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1024xf32>
    %225 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x4x4x1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x4x4x1024xf32>
    %226 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_99 : tensor<256x1024xf32>) outs(%164 : tensor<1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x256xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x4x4x1024xf32>) outs(%161 : tensor<1x4x4x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x1024xf32>
    %228 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1024x256xf32>) outs(%167 : tensor<1x4x1024x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x1024x256xf32>
    %collapsed_178 = tensor.collapse_shape %227 [[0, 1], [2], [3]] : tensor<1x4x4x1024xf32> into tensor<4x4x1024xf32>
    %collapsed_179 = tensor.collapse_shape %228 [[0, 1], [2], [3]] : tensor<1x4x1024x256xf32> into tensor<4x1024x256xf32>
    %229 = linalg.batch_matmul ins(%collapsed_178, %collapsed_179 : tensor<4x4x1024xf32>, tensor<4x1024x256xf32>) outs(%170 : tensor<4x4x256xf32>) -> tensor<4x4x256xf32>
    %expanded_180 = tensor.expand_shape %229 [[0, 1], [2], [3]] : tensor<4x4x256xf32> into tensor<1x4x4x256xf32>
    %230 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_180, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x4x4x256xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x4x4xf32>
    %232 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_110, %231 : tensor<256x1x1xf32>, tensor<1x256x4x4xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x256x4x4xf32>
    %233 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %204 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x256x4x4xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x256x4x4xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%234 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %236 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %237 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %238 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %237 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %239 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %238 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%239 : tensor<1x4x4x256xf32>) outs(%139 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %241 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_132 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %242 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x4x4x1xf32>
    %243 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x4x4x1xf32>) outs(%138 : tensor<1x4x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x1xf32>
    %244 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243 : tensor<1x4x4x1xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x4x256xf32>
    %245 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %244 : tensor<1x4x4x256xf32>, tensor<1x4x4x256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %246 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_108 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %247 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %cst_112 : tensor<1x4x4x256xf32>, tensor<256xf32>) outs(%136 : tensor<1x4x4x256xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x4x4x256xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x4x4x256xf32>) outs(%132 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x4x4xf32>
    %249 = tensor.empty() : tensor<1x512x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_121 : tensor<512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%248, %cst_98 : tensor<1x256x4x4xf32>, tensor<512x256x2x2xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %padded_181 = tensor.pad %251 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_182 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %252 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_181, %collapsed_182 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %253 = tensor.empty() : tensor<1x2x2x512xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %255 = tensor.empty() : tensor<1x2x2x1xf32>
    %256 = linalg.fill ins(%cst_127 : f32) outs(%255 : tensor<1x2x2x1xf32>) -> tensor<1x2x2x1xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%254 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %258 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %259 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %260 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %259 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %261 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %260 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%261 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %263 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %264 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %266 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %267 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %266 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %268 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %269 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %270 = tensor.empty() : tensor<512x2048xf32>
    %271 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_93 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %272 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %273 = tensor.empty() : tensor<1x2x512x2048xf32>
    %274 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_183 = tensor.collapse_shape %272 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_184 = tensor.collapse_shape %274 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %275 = tensor.empty() : tensor<2x2x2048xf32>
    %276 = linalg.fill ins(%cst_127 : f32) outs(%275 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %277 = linalg.batch_matmul ins(%collapsed_183, %collapsed_184 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_185 = tensor.expand_shape %277 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %278 = tensor.empty() : tensor<1x2x2x2048xf32>
    %279 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_185, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %280 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %281 = tensor.empty() : tensor<2048x512xf32>
    %282 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_92 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %283 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %284 = tensor.empty() : tensor<1x2x2048x512xf32>
    %285 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_186 = tensor.collapse_shape %283 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_187 = tensor.collapse_shape %285 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %286 = tensor.empty() : tensor<2x2x512xf32>
    %287 = linalg.fill ins(%cst_127 : f32) outs(%286 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %288 = linalg.batch_matmul ins(%collapsed_186, %collapsed_187 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_188 = tensor.expand_shape %288 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %289 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_188, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %290 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %291 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %290 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %292 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %251 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_189 = tensor.pad %292 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_190 = tensor.collapse_shape %cst_91 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %293 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_189, %collapsed_190 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %295 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%294 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %296 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %297 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %298 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %297 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %299 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %298 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%299 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %301 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %302 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %303 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %304 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %305 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %304 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %306 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %307 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %308 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_90 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %309 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %310 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_191 = tensor.collapse_shape %309 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_192 = tensor.collapse_shape %310 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %311 = linalg.batch_matmul ins(%collapsed_191, %collapsed_192 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_193 = tensor.expand_shape %311 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %312 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_193, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %313 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %314 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_89 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %315 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %316 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_194 = tensor.collapse_shape %315 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_195 = tensor.collapse_shape %316 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %317 = linalg.batch_matmul ins(%collapsed_194, %collapsed_195 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_196 = tensor.expand_shape %317 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %318 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_196, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %319 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %321 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %292 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_197 = tensor.pad %321 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_198 = tensor.collapse_shape %cst_88 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %322 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_197, %collapsed_198 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%323 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %325 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %326 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %327 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %326 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %328 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %327 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%328 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %330 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %331 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %332 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %333 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %334 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %333 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %335 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %336 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %337 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_87 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %338 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %339 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_199 = tensor.collapse_shape %338 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_200 = tensor.collapse_shape %339 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %340 = linalg.batch_matmul ins(%collapsed_199, %collapsed_200 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_201 = tensor.expand_shape %340 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %341 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_201, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %342 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %343 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_86 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %344 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %345 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_202 = tensor.collapse_shape %344 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_203 = tensor.collapse_shape %345 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %346 = linalg.batch_matmul ins(%collapsed_202, %collapsed_203 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_204 = tensor.expand_shape %346 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %347 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_204, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %349 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %348 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %350 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %321 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_205 = tensor.pad %350 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_206 = tensor.collapse_shape %cst_85 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %351 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %collapsed_206 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%352 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %354 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %355 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %356 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %355 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %357 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %356 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%357 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %359 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %360 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %361 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %362 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %363 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %362 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %364 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %365 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %366 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_84 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %367 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %368 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_207 = tensor.collapse_shape %367 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_208 = tensor.collapse_shape %368 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %369 = linalg.batch_matmul ins(%collapsed_207, %collapsed_208 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_209 = tensor.expand_shape %369 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %370 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_209, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %371 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %372 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_83 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %373 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %374 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_210 = tensor.collapse_shape %373 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_211 = tensor.collapse_shape %374 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %375 = linalg.batch_matmul ins(%collapsed_210, %collapsed_211 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_212 = tensor.expand_shape %375 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %376 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_212, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %378 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %377 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %379 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %350 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_213 = tensor.pad %379 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_214 = tensor.collapse_shape %cst_82 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %380 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_213, %collapsed_214 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %382 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%381 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %383 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %384 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %385 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %384 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %386 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %385 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%386 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %388 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %389 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %390 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %391 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %392 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %391 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %393 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %394 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %395 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_81 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %396 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %397 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_215 = tensor.collapse_shape %396 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_216 = tensor.collapse_shape %397 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %398 = linalg.batch_matmul ins(%collapsed_215, %collapsed_216 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_217 = tensor.expand_shape %398 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %399 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_217, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %400 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %401 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_80 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %402 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %403 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_218 = tensor.collapse_shape %402 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_219 = tensor.collapse_shape %403 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %404 = linalg.batch_matmul ins(%collapsed_218, %collapsed_219 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_220 = tensor.expand_shape %404 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %405 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_220, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %406 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %407 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %406 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %408 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %379 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_221 = tensor.pad %408 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_222 = tensor.collapse_shape %cst_79 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %409 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_221, %collapsed_222 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %410 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %411 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%410 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %412 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %413 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %414 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %413 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %415 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %414 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%415 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %417 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %418 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %419 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %420 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %421 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %420 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %422 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %423 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %424 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_78 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %425 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %426 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_223 = tensor.collapse_shape %425 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_224 = tensor.collapse_shape %426 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %427 = linalg.batch_matmul ins(%collapsed_223, %collapsed_224 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_225 = tensor.expand_shape %427 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %428 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_225, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %429 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %430 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_77 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %431 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %432 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_226 = tensor.collapse_shape %431 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_227 = tensor.collapse_shape %432 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %433 = linalg.batch_matmul ins(%collapsed_226, %collapsed_227 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_228 = tensor.expand_shape %433 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %434 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_228, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %436 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %435 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %437 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %408 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_229 = tensor.pad %437 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_230 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %438 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_229, %collapsed_230 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %439 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %440 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%439 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %441 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %442 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %443 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %442 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %444 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %443 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %445 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%444 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %446 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %447 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %448 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %449 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %450 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %449 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %451 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %452 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %453 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_75 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %454 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %455 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_231 = tensor.collapse_shape %454 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_232 = tensor.collapse_shape %455 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %456 = linalg.batch_matmul ins(%collapsed_231, %collapsed_232 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_233 = tensor.expand_shape %456 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %457 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_233, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %458 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %459 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_74 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %460 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %461 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_234 = tensor.collapse_shape %460 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_235 = tensor.collapse_shape %461 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %462 = linalg.batch_matmul ins(%collapsed_234, %collapsed_235 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_236 = tensor.expand_shape %462 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %463 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_236, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %465 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %464 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %466 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %437 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_237 = tensor.pad %466 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_238 = tensor.collapse_shape %cst_73 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %467 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_237, %collapsed_238 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%468 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %470 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %471 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %472 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %471 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %473 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %472 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %474 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%473 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %475 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %476 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %477 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %478 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %479 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %478 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %480 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %481 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %482 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_72 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %483 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %484 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_239 = tensor.collapse_shape %483 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_240 = tensor.collapse_shape %484 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %485 = linalg.batch_matmul ins(%collapsed_239, %collapsed_240 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_241 = tensor.expand_shape %485 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %486 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_241, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %487 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %488 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_71 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %489 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %490 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_242 = tensor.collapse_shape %489 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_243 = tensor.collapse_shape %490 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %491 = linalg.batch_matmul ins(%collapsed_242, %collapsed_243 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_244 = tensor.expand_shape %491 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %492 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_244, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %494 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %493 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %495 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %466 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_245 = tensor.pad %495 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_246 = tensor.collapse_shape %cst_70 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %496 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_245, %collapsed_246 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %497 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %498 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%497 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %499 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %500 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %501 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %500 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %502 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %501 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%502 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %504 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %505 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %506 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %507 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %508 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %507 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %509 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %510 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %511 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_69 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %512 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %513 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_247 = tensor.collapse_shape %512 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_248 = tensor.collapse_shape %513 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %514 = linalg.batch_matmul ins(%collapsed_247, %collapsed_248 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_249 = tensor.expand_shape %514 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %515 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_249, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %516 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %517 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_68 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %518 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %519 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_250 = tensor.collapse_shape %518 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_251 = tensor.collapse_shape %519 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %520 = linalg.batch_matmul ins(%collapsed_250, %collapsed_251 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_252 = tensor.expand_shape %520 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %521 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_252, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %522 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %523 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %522 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %524 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %495 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_253 = tensor.pad %524 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_254 = tensor.collapse_shape %cst_67 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %525 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_253, %collapsed_254 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %526 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%526 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %528 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %529 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %530 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %529 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %531 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %530 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %532 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%531 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %533 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %534 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %535 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %536 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %537 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %536 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %538 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %539 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %540 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_66 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %541 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %542 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_255 = tensor.collapse_shape %541 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_256 = tensor.collapse_shape %542 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %543 = linalg.batch_matmul ins(%collapsed_255, %collapsed_256 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_257 = tensor.expand_shape %543 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %544 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_257, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %545 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %546 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_65 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %547 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %548 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_258 = tensor.collapse_shape %547 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_259 = tensor.collapse_shape %548 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %549 = linalg.batch_matmul ins(%collapsed_258, %collapsed_259 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_260 = tensor.expand_shape %549 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %550 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_260, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %551 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %552 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %551 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %553 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %524 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_261 = tensor.pad %553 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_262 = tensor.collapse_shape %cst_64 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %554 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_261, %collapsed_262 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %555 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %556 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%555 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %557 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %558 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %559 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %558 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %560 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %559 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %561 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%560 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %562 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %563 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %564 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %565 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %566 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %565 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %567 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %568 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %569 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_63 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %570 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %571 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_263 = tensor.collapse_shape %570 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_264 = tensor.collapse_shape %571 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %572 = linalg.batch_matmul ins(%collapsed_263, %collapsed_264 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_265 = tensor.expand_shape %572 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %573 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_265, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %574 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %575 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_62 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %576 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %577 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_266 = tensor.collapse_shape %576 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_267 = tensor.collapse_shape %577 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %578 = linalg.batch_matmul ins(%collapsed_266, %collapsed_267 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_268 = tensor.expand_shape %578 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %579 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_268, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %580 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %581 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %580 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %582 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %553 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_269 = tensor.pad %582 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_270 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %583 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_269, %collapsed_270 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %584 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %585 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%584 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %586 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %587 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %588 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %587 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %589 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %588 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%589 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %591 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %592 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %593 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %594 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %595 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %594 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %596 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %597 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %598 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_60 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %599 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %600 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_271 = tensor.collapse_shape %599 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_272 = tensor.collapse_shape %600 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %601 = linalg.batch_matmul ins(%collapsed_271, %collapsed_272 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_273 = tensor.expand_shape %601 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %602 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_273, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %603 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %604 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_59 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %605 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %606 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_274 = tensor.collapse_shape %605 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_275 = tensor.collapse_shape %606 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %607 = linalg.batch_matmul ins(%collapsed_274, %collapsed_275 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_276 = tensor.expand_shape %607 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %608 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_276, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %609 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %610 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %609 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %611 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %582 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_277 = tensor.pad %611 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_278 = tensor.collapse_shape %cst_58 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %612 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_277, %collapsed_278 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %613 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %614 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%613 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %615 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %616 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %617 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %616 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %618 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %617 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %619 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%618 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %620 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %621 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %622 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %623 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %624 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %623 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %625 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %626 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %627 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_57 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %628 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %629 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_279 = tensor.collapse_shape %628 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_280 = tensor.collapse_shape %629 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %630 = linalg.batch_matmul ins(%collapsed_279, %collapsed_280 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_281 = tensor.expand_shape %630 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %631 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_281, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %632 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %633 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_56 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %634 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %635 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_282 = tensor.collapse_shape %634 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_283 = tensor.collapse_shape %635 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %636 = linalg.batch_matmul ins(%collapsed_282, %collapsed_283 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_284 = tensor.expand_shape %636 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %637 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_284, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %638 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %639 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %638 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %640 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639, %611 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_285 = tensor.pad %640 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_286 = tensor.collapse_shape %cst_55 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %641 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_285, %collapsed_286 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %642 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %643 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%642 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %644 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %645 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %646 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %645 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %647 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %646 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %648 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%647 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %649 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %650 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %651 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %652 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %653 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %652 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %654 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %655 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %656 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_54 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %657 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %658 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_287 = tensor.collapse_shape %657 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_288 = tensor.collapse_shape %658 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %659 = linalg.batch_matmul ins(%collapsed_287, %collapsed_288 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_289 = tensor.expand_shape %659 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %660 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_289, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %661 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %662 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_53 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %663 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %664 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_290 = tensor.collapse_shape %663 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_291 = tensor.collapse_shape %664 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %665 = linalg.batch_matmul ins(%collapsed_290, %collapsed_291 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_292 = tensor.expand_shape %665 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %666 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_292, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %667 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %668 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %667 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %669 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %640 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_293 = tensor.pad %669 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_294 = tensor.collapse_shape %cst_52 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %670 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_293, %collapsed_294 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %671 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %672 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%671 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %673 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %674 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %675 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671, %674 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %676 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675, %675 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %677 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%676 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %678 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %679 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %680 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %681 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %682 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675, %681 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %683 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %684 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %685 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_51 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %686 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %687 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_295 = tensor.collapse_shape %686 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_296 = tensor.collapse_shape %687 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %688 = linalg.batch_matmul ins(%collapsed_295, %collapsed_296 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_297 = tensor.expand_shape %688 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %689 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_297, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %690 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %691 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_50 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %692 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %693 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_298 = tensor.collapse_shape %692 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_299 = tensor.collapse_shape %693 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %694 = linalg.batch_matmul ins(%collapsed_298, %collapsed_299 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_300 = tensor.expand_shape %694 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %695 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_300, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %696 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%695 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %697 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %696 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %698 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697, %669 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_301 = tensor.pad %698 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_302 = tensor.collapse_shape %cst_49 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %699 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_301, %collapsed_302 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %700 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %701 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%700 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %702 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %703 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%702 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %704 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %703 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %705 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704, %704 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %706 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%705 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %707 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %708 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %709 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %710 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %711 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704, %710 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %712 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %713 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %714 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_48 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %715 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %716 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_303 = tensor.collapse_shape %715 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_304 = tensor.collapse_shape %716 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %717 = linalg.batch_matmul ins(%collapsed_303, %collapsed_304 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_305 = tensor.expand_shape %717 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %718 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_305, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %719 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %720 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_47 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %721 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %722 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_306 = tensor.collapse_shape %721 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_307 = tensor.collapse_shape %722 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %723 = linalg.batch_matmul ins(%collapsed_306, %collapsed_307 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_308 = tensor.expand_shape %723 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %724 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_308, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %725 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %726 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %725 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %727 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %698 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_309 = tensor.pad %727 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_310 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %728 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_309, %collapsed_310 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %729 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %730 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%729 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %731 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %732 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %733 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729, %732 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %734 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %733 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %735 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%734 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %736 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %737 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %738 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %739 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%738 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %740 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %739 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %741 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %742 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %743 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_45 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %744 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %745 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%743 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_311 = tensor.collapse_shape %744 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_312 = tensor.collapse_shape %745 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %746 = linalg.batch_matmul ins(%collapsed_311, %collapsed_312 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_313 = tensor.expand_shape %746 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %747 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_313, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %748 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %749 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_44 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %750 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %751 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_314 = tensor.collapse_shape %750 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_315 = tensor.collapse_shape %751 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %752 = linalg.batch_matmul ins(%collapsed_314, %collapsed_315 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_316 = tensor.expand_shape %752 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %753 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_316, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %754 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %755 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %754 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %756 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755, %727 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_317 = tensor.pad %756 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_318 = tensor.collapse_shape %cst_43 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %757 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_317, %collapsed_318 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %758 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %759 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%758 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %760 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%759 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %761 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %762 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758, %761 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %763 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %762 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %764 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%763 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %765 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%764 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %766 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%765 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %767 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %768 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %769 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %768 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %770 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %771 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%770, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %772 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_42 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %773 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %774 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_319 = tensor.collapse_shape %773 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_320 = tensor.collapse_shape %774 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %775 = linalg.batch_matmul ins(%collapsed_319, %collapsed_320 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_321 = tensor.expand_shape %775 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %776 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_321, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %777 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %778 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_41 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %779 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %780 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_322 = tensor.collapse_shape %779 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_323 = tensor.collapse_shape %780 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %781 = linalg.batch_matmul ins(%collapsed_322, %collapsed_323 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_324 = tensor.expand_shape %781 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %782 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_324, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %783 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %784 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %783 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %785 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784, %756 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_325 = tensor.pad %785 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_326 = tensor.collapse_shape %cst_40 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %786 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_325, %collapsed_326 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %787 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %788 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%787 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %789 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%788 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %790 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %791 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %790 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %792 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791, %791 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %793 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%792 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %794 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %795 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %796 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %797 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%796 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %798 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791, %797 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %799 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %800 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %801 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_39 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %802 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%800 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %803 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_327 = tensor.collapse_shape %802 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_328 = tensor.collapse_shape %803 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %804 = linalg.batch_matmul ins(%collapsed_327, %collapsed_328 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_329 = tensor.expand_shape %804 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %805 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_329, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %806 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %807 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_38 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %808 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%806 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %809 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_330 = tensor.collapse_shape %808 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_331 = tensor.collapse_shape %809 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %810 = linalg.batch_matmul ins(%collapsed_330, %collapsed_331 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_332 = tensor.expand_shape %810 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %811 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_332, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %812 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %813 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %812 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %814 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%813, %785 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_333 = tensor.pad %814 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_334 = tensor.collapse_shape %cst_37 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %815 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_333, %collapsed_334 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %816 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %817 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%816 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %818 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %819 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %820 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %819 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %821 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %820 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %822 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%821 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %823 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%822 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %824 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %825 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %826 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %827 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %826 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %828 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%827, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %829 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%828, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %830 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_36 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %831 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %832 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%830 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_335 = tensor.collapse_shape %831 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_336 = tensor.collapse_shape %832 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %833 = linalg.batch_matmul ins(%collapsed_335, %collapsed_336 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_337 = tensor.expand_shape %833 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %834 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_337, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %835 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %836 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_35 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %837 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %838 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_338 = tensor.collapse_shape %837 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_339 = tensor.collapse_shape %838 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %839 = linalg.batch_matmul ins(%collapsed_338, %collapsed_339 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_340 = tensor.expand_shape %839 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %840 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_340, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %841 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%840 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %842 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %841 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %843 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842, %814 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_341 = tensor.pad %843 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_342 = tensor.collapse_shape %cst_34 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %844 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_341, %collapsed_342 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %845 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %846 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%845 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %847 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%846 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %848 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %849 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%845, %848 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %850 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %849 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %851 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%850 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %852 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %853 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %854 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %855 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%854 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %856 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %855 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %857 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %858 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %859 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_33 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %860 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%858 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %861 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_343 = tensor.collapse_shape %860 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_344 = tensor.collapse_shape %861 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %862 = linalg.batch_matmul ins(%collapsed_343, %collapsed_344 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_345 = tensor.expand_shape %862 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %863 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_345, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %864 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %865 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_32 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %866 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %867 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_346 = tensor.collapse_shape %866 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_347 = tensor.collapse_shape %867 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %868 = linalg.batch_matmul ins(%collapsed_346, %collapsed_347 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_348 = tensor.expand_shape %868 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %869 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_348, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %870 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%869 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %871 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %870 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %872 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%871, %843 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_349 = tensor.pad %872 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_350 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %873 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_349, %collapsed_350 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %874 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %875 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%874 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %876 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%875 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %877 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%876 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %878 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %877 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %879 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878, %878 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %880 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%879 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %881 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %882 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %883 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %884 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %885 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878, %884 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %886 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%885, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %887 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %888 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_30 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %889 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%887 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %890 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%888 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_351 = tensor.collapse_shape %889 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_352 = tensor.collapse_shape %890 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %891 = linalg.batch_matmul ins(%collapsed_351, %collapsed_352 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_353 = tensor.expand_shape %891 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %892 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_353, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %893 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %894 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_29 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %895 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%893 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %896 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%894 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_354 = tensor.collapse_shape %895 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_355 = tensor.collapse_shape %896 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %897 = linalg.batch_matmul ins(%collapsed_354, %collapsed_355 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_356 = tensor.expand_shape %897 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %898 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_356, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %899 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %900 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %899 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %901 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%900, %872 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_357 = tensor.pad %901 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_358 = tensor.collapse_shape %cst_28 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %902 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_357, %collapsed_358 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %903 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %904 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%903 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %905 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %906 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%905 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %907 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903, %906 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %908 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%907, %907 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %909 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%908 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %910 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %911 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %912 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%911 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %913 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%912 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %914 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%907, %913 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %915 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%914, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %916 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%915, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %917 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_27 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %918 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%916 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %919 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%917 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_359 = tensor.collapse_shape %918 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_360 = tensor.collapse_shape %919 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %920 = linalg.batch_matmul ins(%collapsed_359, %collapsed_360 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_361 = tensor.expand_shape %920 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %921 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_361, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %922 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%921 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %923 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_26 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %924 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %925 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%923 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_362 = tensor.collapse_shape %924 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_363 = tensor.collapse_shape %925 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %926 = linalg.batch_matmul ins(%collapsed_362, %collapsed_363 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_364 = tensor.expand_shape %926 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %927 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_364, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %928 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%927 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %929 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %928 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %930 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%929, %901 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_365 = tensor.pad %930 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_366 = tensor.collapse_shape %cst_25 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %931 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_365, %collapsed_366 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %932 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %933 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%932 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %934 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %935 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %936 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%932, %935 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %937 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %936 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %938 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%937 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %939 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%938 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %940 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%939 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %941 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%940 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %942 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %943 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %942 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %944 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%943, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %945 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %946 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_24 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %947 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %948 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%946 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_367 = tensor.collapse_shape %947 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_368 = tensor.collapse_shape %948 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %949 = linalg.batch_matmul ins(%collapsed_367, %collapsed_368 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_369 = tensor.expand_shape %949 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %950 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_369, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %951 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%950 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %952 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_23 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %953 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%951 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %954 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%952 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_370 = tensor.collapse_shape %953 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_371 = tensor.collapse_shape %954 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %955 = linalg.batch_matmul ins(%collapsed_370, %collapsed_371 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_372 = tensor.expand_shape %955 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %956 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_372, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %957 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %958 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %957 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %959 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%958, %930 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_373 = tensor.pad %959 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_374 = tensor.collapse_shape %cst_22 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %960 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_373, %collapsed_374 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %961 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%960 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %962 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%961 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %963 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%962 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %964 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%963 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %965 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%961, %964 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %966 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%965, %965 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %967 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%966 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %968 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%967 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %969 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%968 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %970 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%969 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %971 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%970 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %972 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%965, %971 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %973 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%972, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %974 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%973, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %975 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_21 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %976 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%974 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %977 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%975 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_375 = tensor.collapse_shape %976 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_376 = tensor.collapse_shape %977 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %978 = linalg.batch_matmul ins(%collapsed_375, %collapsed_376 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_377 = tensor.expand_shape %978 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %979 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_377, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %980 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%979 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %981 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_20 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %982 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%980 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %983 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%981 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_378 = tensor.collapse_shape %982 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_379 = tensor.collapse_shape %983 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %984 = linalg.batch_matmul ins(%collapsed_378, %collapsed_379 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_380 = tensor.expand_shape %984 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %985 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_380, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %986 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%985 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %987 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %986 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %988 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%987, %959 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_381 = tensor.pad %988 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_382 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %989 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_381, %collapsed_382 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %990 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%989 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %991 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%990 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %992 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %993 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%992 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %994 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%990, %993 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %995 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994, %994 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %996 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%995 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %997 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %998 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%997 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %999 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%998 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1000 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%999 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1001 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994, %1000 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1002 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1001, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1003 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1002, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1004 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_18 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %1005 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1003 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1006 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1004 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_383 = tensor.collapse_shape %1005 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_384 = tensor.collapse_shape %1006 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %1007 = linalg.batch_matmul ins(%collapsed_383, %collapsed_384 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_385 = tensor.expand_shape %1007 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %1008 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_385, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %1009 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1008 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %1010 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_17 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %1011 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1009 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %1012 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1010 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_386 = tensor.collapse_shape %1011 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_387 = tensor.collapse_shape %1012 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %1013 = linalg.batch_matmul ins(%collapsed_386, %collapsed_387 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_388 = tensor.expand_shape %1013 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %1014 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_388, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1015 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1014 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %1016 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %1015 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %1017 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1016, %988 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_389 = tensor.pad %1017 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x8x8xf32>
    %collapsed_390 = tensor.collapse_shape %cst_16 [[0, 1], [2], [3]] : tensor<512x1x7x7xf32> into tensor<512x7x7xf32>
    %1018 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_389, %collapsed_390 : tensor<1x512x8x8xf32>, tensor<512x7x7xf32>) outs(%250 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %1019 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1020 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1019 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1021 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1020 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1022 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1021 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1023 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1019, %1022 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1024 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1023, %1023 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1025 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1024 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1026 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1025 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1027 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1026 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %1028 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1027 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1029 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1028 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1030 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1023, %1029 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1031 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1030, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1032 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1031, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1033 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_15 : tensor<2048x512xf32>) outs(%270 : tensor<512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x2048xf32>
    %1034 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1032 : tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1035 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1033 : tensor<512x2048xf32>) outs(%273 : tensor<1x2x512x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x512x2048xf32>
    %collapsed_391 = tensor.collapse_shape %1034 [[0, 1], [2], [3]] : tensor<1x2x2x512xf32> into tensor<2x2x512xf32>
    %collapsed_392 = tensor.collapse_shape %1035 [[0, 1], [2], [3]] : tensor<1x2x512x2048xf32> into tensor<2x512x2048xf32>
    %1036 = linalg.batch_matmul ins(%collapsed_391, %collapsed_392 : tensor<2x2x512xf32>, tensor<2x512x2048xf32>) outs(%276 : tensor<2x2x2048xf32>) -> tensor<2x2x2048xf32>
    %expanded_393 = tensor.expand_shape %1036 [[0, 1], [2], [3]] : tensor<2x2x2048xf32> into tensor<1x2x2x2048xf32>
    %1037 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_393, %cst_94 : tensor<1x2x2x2048xf32>, tensor<2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x2048xf32>
    %1038 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1037 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x2x2x2048xf32>
    %1039 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_14 : tensor<512x2048xf32>) outs(%281 : tensor<2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512xf32>
    %1040 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1038 : tensor<1x2x2x2048xf32>) outs(%278 : tensor<1x2x2x2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x2048xf32>
    %1041 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1039 : tensor<2048x512xf32>) outs(%284 : tensor<1x2x2048x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2048x512xf32>
    %collapsed_394 = tensor.collapse_shape %1040 [[0, 1], [2], [3]] : tensor<1x2x2x2048xf32> into tensor<2x2x2048xf32>
    %collapsed_395 = tensor.collapse_shape %1041 [[0, 1], [2], [3]] : tensor<1x2x2048x512xf32> into tensor<2x2048x512xf32>
    %1042 = linalg.batch_matmul ins(%collapsed_394, %collapsed_395 : tensor<2x2x2048xf32>, tensor<2x2048x512xf32>) outs(%287 : tensor<2x2x512xf32>) -> tensor<2x2x512xf32>
    %expanded_396 = tensor.expand_shape %1042 [[0, 1], [2], [3]] : tensor<2x2x512xf32> into tensor<1x2x2x512xf32>
    %1043 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_396, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1044 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1043 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %1045 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_97, %1044 : tensor<512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %1046 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1045, %1017 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x512x2x2xf32>
    %1047 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1046 : tensor<1x512x2x2xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1048 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1047 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1049 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1050 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1049 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1051 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1047, %1050 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1052 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1051, %1051 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1053 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1052 : tensor<1x2x2x512xf32>) outs(%256 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1054 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1053 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_133 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1055 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1054 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x2x2x1xf32>
    %1056 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1055 : tensor<1x2x2x1xf32>) outs(%255 : tensor<1x2x2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x1xf32>
    %1057 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1056 : tensor<1x2x2x1xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x2x512xf32>
    %1058 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1051, %1057 : tensor<1x2x2x512xf32>, tensor<1x2x2x512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1059 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1058, %cst_95 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1060 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1059, %cst_121 : tensor<1x2x2x512xf32>, tensor<512xf32>) outs(%253 : tensor<1x2x2x512xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x2x2x512xf32>
    %1061 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1060 : tensor<1x2x2x512xf32>) outs(%249 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x2x2xf32>
    %1062 = tensor.empty() : tensor<1x1024x1x1xf32>
    %1063 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_107 : tensor<1024xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x1x1xf32>
    %1064 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%1061, %cst_13 : tensor<1x512x2x2xf32>, tensor<1024x512x2x2xf32>) outs(%1063 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %padded_397 = tensor.pad %1064 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x7x7xf32>
    %collapsed_398 = tensor.collapse_shape %cst_11 [[0, 1], [2], [3]] : tensor<1024x1x7x7xf32> into tensor<1024x7x7xf32>
    %1065 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_397, %collapsed_398 : tensor<1x1024x7x7xf32>, tensor<1024x7x7xf32>) outs(%1063 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %1066 = tensor.empty() : tensor<1x1x1x1024xf32>
    %1067 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1065 : tensor<1x1024x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1068 = tensor.empty() : tensor<1x1x1x1xf32>
    %1069 = linalg.fill ins(%cst_127 : f32) outs(%1068 : tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1070 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1067 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1071 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1070 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1072 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1071 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1073 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1067, %1072 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1074 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1073, %1073 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1075 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1074 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1076 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1075 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1077 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1076 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x1x1x1xf32>
    %1078 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1077 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1079 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1078 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1080 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1073, %1079 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1081 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1080, %cst_10 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1082 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1081, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1083 = tensor.empty() : tensor<1024x4096xf32>
    %1084 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_8 : tensor<4096x1024xf32>) outs(%1083 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x4096xf32>
    %1085 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1082 : tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1086 = tensor.empty() : tensor<1x1x1024x4096xf32>
    %1087 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1084 : tensor<1024x4096xf32>) outs(%1086 : tensor<1x1x1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1024x4096xf32>
    %collapsed_399 = tensor.collapse_shape %1085 [[0, 1], [2], [3]] : tensor<1x1x1x1024xf32> into tensor<1x1x1024xf32>
    %collapsed_400 = tensor.collapse_shape %1087 [[0, 1], [2], [3]] : tensor<1x1x1024x4096xf32> into tensor<1x1024x4096xf32>
    %1088 = tensor.empty() : tensor<1x1x4096xf32>
    %1089 = linalg.fill ins(%cst_127 : f32) outs(%1088 : tensor<1x1x4096xf32>) -> tensor<1x1x4096xf32>
    %1090 = linalg.batch_matmul ins(%collapsed_399, %collapsed_400 : tensor<1x1x1024xf32>, tensor<1x1024x4096xf32>) outs(%1089 : tensor<1x1x4096xf32>) -> tensor<1x1x4096xf32>
    %expanded_401 = tensor.expand_shape %1090 [[0, 1], [2], [3]] : tensor<1x1x4096xf32> into tensor<1x1x1x4096xf32>
    %1091 = tensor.empty() : tensor<1x1x1x4096xf32>
    %1092 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_401, %cst_9 : tensor<1x1x1x4096xf32>, tensor<4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x4096xf32>
    %1093 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1092 : tensor<1x1x1x4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x1x1x4096xf32>
    %1094 = tensor.empty() : tensor<4096x1024xf32>
    %1095 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_7 : tensor<1024x4096xf32>) outs(%1094 : tensor<4096x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1024xf32>
    %1096 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1093 : tensor<1x1x1x4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x4096xf32>
    %1097 = tensor.empty() : tensor<1x1x4096x1024xf32>
    %1098 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1095 : tensor<4096x1024xf32>) outs(%1097 : tensor<1x1x4096x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096x1024xf32>
    %collapsed_402 = tensor.collapse_shape %1096 [[0, 1], [2], [3]] : tensor<1x1x1x4096xf32> into tensor<1x1x4096xf32>
    %collapsed_403 = tensor.collapse_shape %1098 [[0, 1], [2], [3]] : tensor<1x1x4096x1024xf32> into tensor<1x4096x1024xf32>
    %1099 = tensor.empty() : tensor<1x1x1024xf32>
    %1100 = linalg.fill ins(%cst_127 : f32) outs(%1099 : tensor<1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %1101 = linalg.batch_matmul ins(%collapsed_402, %collapsed_403 : tensor<1x1x4096xf32>, tensor<1x4096x1024xf32>) outs(%1100 : tensor<1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %expanded_404 = tensor.expand_shape %1101 [[0, 1], [2], [3]] : tensor<1x1x1024xf32> into tensor<1x1x1x1024xf32>
    %1102 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_404, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1103 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1102 : tensor<1x1x1x1024xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x1x1xf32>
    %1104 = linalg.generic {indexing_maps = [#map11, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12, %1103 : tensor<1024x1x1xf32>, tensor<1x1024x1x1xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1024x1x1xf32>
    %1105 = linalg.generic {indexing_maps = [#map14, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1104, %1064 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1024x1x1xf32>
    %padded_405 = tensor.pad %1105 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x7x7xf32>
    %collapsed_406 = tensor.collapse_shape %cst_6 [[0, 1], [2], [3]] : tensor<1024x1x7x7xf32> into tensor<1024x7x7xf32>
    %1106 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_405, %collapsed_406 : tensor<1x1024x7x7xf32>, tensor<1024x7x7xf32>) outs(%1063 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %1107 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1106 : tensor<1x1024x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1108 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1107 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1109 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1108 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1110 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1109 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1111 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1107, %1110 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1112 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111, %1111 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1113 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1112 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1114 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1113 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1115 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1114 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x1x1x1xf32>
    %1116 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1115 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1117 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1116 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1118 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111, %1117 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1119 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1118, %cst_10 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1120 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1119, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1121 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_5 : tensor<4096x1024xf32>) outs(%1083 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x4096xf32>
    %1122 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1120 : tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1123 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1121 : tensor<1024x4096xf32>) outs(%1086 : tensor<1x1x1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1024x4096xf32>
    %collapsed_407 = tensor.collapse_shape %1122 [[0, 1], [2], [3]] : tensor<1x1x1x1024xf32> into tensor<1x1x1024xf32>
    %collapsed_408 = tensor.collapse_shape %1123 [[0, 1], [2], [3]] : tensor<1x1x1024x4096xf32> into tensor<1x1024x4096xf32>
    %1124 = linalg.batch_matmul ins(%collapsed_407, %collapsed_408 : tensor<1x1x1024xf32>, tensor<1x1024x4096xf32>) outs(%1089 : tensor<1x1x4096xf32>) -> tensor<1x1x4096xf32>
    %expanded_409 = tensor.expand_shape %1124 [[0, 1], [2], [3]] : tensor<1x1x4096xf32> into tensor<1x1x1x4096xf32>
    %1125 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_409, %cst_9 : tensor<1x1x1x4096xf32>, tensor<4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x4096xf32>
    %1126 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1125 : tensor<1x1x1x4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x1x1x4096xf32>
    %1127 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_4 : tensor<1024x4096xf32>) outs(%1094 : tensor<4096x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1024xf32>
    %1128 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1126 : tensor<1x1x1x4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x4096xf32>
    %1129 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1127 : tensor<4096x1024xf32>) outs(%1097 : tensor<1x1x4096x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096x1024xf32>
    %collapsed_410 = tensor.collapse_shape %1128 [[0, 1], [2], [3]] : tensor<1x1x1x4096xf32> into tensor<1x1x4096xf32>
    %collapsed_411 = tensor.collapse_shape %1129 [[0, 1], [2], [3]] : tensor<1x1x4096x1024xf32> into tensor<1x4096x1024xf32>
    %1130 = linalg.batch_matmul ins(%collapsed_410, %collapsed_411 : tensor<1x1x4096xf32>, tensor<1x4096x1024xf32>) outs(%1100 : tensor<1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %expanded_412 = tensor.expand_shape %1130 [[0, 1], [2], [3]] : tensor<1x1x1024xf32> into tensor<1x1x1x1024xf32>
    %1131 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_412, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1132 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1131 : tensor<1x1x1x1024xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x1x1xf32>
    %1133 = linalg.generic {indexing_maps = [#map11, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12, %1132 : tensor<1024x1x1xf32>, tensor<1x1024x1x1xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1024x1x1xf32>
    %1134 = linalg.generic {indexing_maps = [#map14, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1133, %1105 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1024x1x1xf32>
    %padded_413 = tensor.pad %1134 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_127 : f32
    } : tensor<1x1024x1x1xf32> to tensor<1x1024x7x7xf32>
    %collapsed_414 = tensor.collapse_shape %cst_3 [[0, 1], [2], [3]] : tensor<1024x1x7x7xf32> into tensor<1024x7x7xf32>
    %1135 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_413, %collapsed_414 : tensor<1x1024x7x7xf32>, tensor<1024x7x7xf32>) outs(%1063 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %1136 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1135 : tensor<1x1024x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1137 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1136 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1138 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1137 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1139 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1138 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1140 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1136, %1139 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1141 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1140, %1140 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1142 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1141 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1143 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1142 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1144 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1143 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x1x1x1xf32>
    %1145 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1144 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1146 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1145 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1147 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1140, %1146 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1148 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1147, %cst_10 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1149 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1148, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1150 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<4096x1024xf32>) outs(%1083 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x4096xf32>
    %1151 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1149 : tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1152 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1150 : tensor<1024x4096xf32>) outs(%1086 : tensor<1x1x1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1024x4096xf32>
    %collapsed_415 = tensor.collapse_shape %1151 [[0, 1], [2], [3]] : tensor<1x1x1x1024xf32> into tensor<1x1x1024xf32>
    %collapsed_416 = tensor.collapse_shape %1152 [[0, 1], [2], [3]] : tensor<1x1x1024x4096xf32> into tensor<1x1024x4096xf32>
    %1153 = linalg.batch_matmul ins(%collapsed_415, %collapsed_416 : tensor<1x1x1024xf32>, tensor<1x1024x4096xf32>) outs(%1089 : tensor<1x1x4096xf32>) -> tensor<1x1x4096xf32>
    %expanded_417 = tensor.expand_shape %1153 [[0, 1], [2], [3]] : tensor<1x1x4096xf32> into tensor<1x1x1x4096xf32>
    %1154 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_417, %cst_9 : tensor<1x1x1x4096xf32>, tensor<4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x4096xf32>
    %1155 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1154 : tensor<1x1x1x4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_128 : f32
      %1189 = math.erf %1188 : f32
      %1190 = arith.addf %1189, %cst_135 : f32
      %1191 = arith.mulf %1190, %cst_129 : f32
      %1192 = arith.mulf %in, %1191 : f32
      linalg.yield %1192 : f32
    } -> tensor<1x1x1x4096xf32>
    %1156 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<1024x4096xf32>) outs(%1094 : tensor<4096x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<4096x1024xf32>
    %1157 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1155 : tensor<1x1x1x4096xf32>) outs(%1091 : tensor<1x1x1x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x4096xf32>
    %1158 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1156 : tensor<4096x1024xf32>) outs(%1097 : tensor<1x1x4096x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x4096x1024xf32>
    %collapsed_418 = tensor.collapse_shape %1157 [[0, 1], [2], [3]] : tensor<1x1x1x4096xf32> into tensor<1x1x4096xf32>
    %collapsed_419 = tensor.collapse_shape %1158 [[0, 1], [2], [3]] : tensor<1x1x4096x1024xf32> into tensor<1x4096x1024xf32>
    %1159 = linalg.batch_matmul ins(%collapsed_418, %collapsed_419 : tensor<1x1x4096xf32>, tensor<1x4096x1024xf32>) outs(%1100 : tensor<1x1x1024xf32>) -> tensor<1x1x1024xf32>
    %expanded_420 = tensor.expand_shape %1159 [[0, 1], [2], [3]] : tensor<1x1x1024xf32> into tensor<1x1x1x1024xf32>
    %1160 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_420, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1161 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1160 : tensor<1x1x1x1024xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x1x1xf32>
    %1162 = linalg.generic {indexing_maps = [#map11, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12, %1161 : tensor<1024x1x1xf32>, tensor<1x1024x1x1xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1024x1x1xf32>
    %1163 = linalg.generic {indexing_maps = [#map14, #map14, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1162, %1134 : tensor<1x1024x1x1xf32>, tensor<1x1024x1x1xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1024x1x1xf32>
    %1164 = linalg.fill ins(%cst_127 : f32) outs(%1062 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %1165 = tensor.empty() : tensor<1x1xf32>
    %1166 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1163, %1165 : tensor<1x1024x1x1xf32>, tensor<1x1xf32>) outs(%1164 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %1167 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1166 : tensor<1x1024x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1168 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1167 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1169 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1168 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1170 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1169 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1171 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1167, %1170 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.subf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1172 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1171, %1171 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1173 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1172 : tensor<1x1x1x1024xf32>) outs(%1069 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.addf %in, %out : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1174 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1173 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.divf %in, %cst_134 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1175 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1174 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = arith.truncf %cst_130 : f64 to f32
      %1189 = arith.addf %in, %1188 : f32
      linalg.yield %1189 : f32
    } -> tensor<1x1x1x1xf32>
    %1176 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1175 : tensor<1x1x1x1xf32>) outs(%1068 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1188 = math.rsqrt %in : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1xf32>
    %1177 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1176 : tensor<1x1x1x1xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1024xf32>
    %1178 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1171, %1177 : tensor<1x1x1x1024xf32>, tensor<1x1x1x1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1179 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1178, %cst_10 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.mulf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1180 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179, %cst_107 : tensor<1x1x1x1024xf32>, tensor<1024xf32>) outs(%1066 : tensor<1x1x1x1024xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1x1x1024xf32>
    %1181 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1180 : tensor<1x1x1x1024xf32>) outs(%1062 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1024x1x1xf32>
    %collapsed_421 = tensor.collapse_shape %1181 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %1182 = tensor.empty() : tensor<1024x1000xf32>
    %1183 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1024xf32>) outs(%1182 : tensor<1024x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1000xf32>
    %1184 = tensor.empty() : tensor<1x1000xf32>
    %1185 = linalg.fill ins(%cst_127 : f32) outs(%1184 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1186 = linalg.matmul ins(%collapsed_421, %1183 : tensor<1x1024xf32>, tensor<1024x1000xf32>) outs(%1185 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1187 = linalg.generic {indexing_maps = [#map15, #map16, #map8], iterator_types = ["parallel", "parallel"]} ins(%1186, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%1184 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_422: f32, %out: f32):
      %1188 = arith.addf %in, %in_422 : f32
      linalg.yield %1188 : f32
    } -> tensor<1x1000xf32>
    return %1187 : tensor<1x1000xf32>
  }
}
