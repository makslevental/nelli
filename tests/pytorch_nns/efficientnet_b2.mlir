#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "EfficientNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.003398e+00> : tensor<1000x1408xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1408xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1408xf32>
    %cst_3 = arith.constant dense<-0.002931e+00> : tensor<1408x352x1x1xf32>
    %cst_4 = arith.constant dense<0.010929e+00> : tensor<352x2112x1x1xf32>
    %cst_5 = arith.constant dense<-0.007454e+00> : tensor<2112x88x1x1xf32>
    %cst_6 = arith.constant dense<0.020397e+00> : tensor<88x2112x1x1xf32>
    %cst_7 = arith.constant dense<0.012586e+00> : tensor<2112x1x3x3xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2112xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2112xf32>
    %cst_10 = arith.constant dense<0.022236e+00> : tensor<2112x352x1x1xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<352xf32>
    %cst_12 = arith.constant dense<1.000000e+00> : tensor<352xf32>
    %cst_13 = arith.constant dense<0.006289e+00> : tensor<352x1248x1x1xf32>
    %cst_14 = arith.constant dense<0.000110e+00> : tensor<1248x52x1x1xf32>
    %cst_15 = arith.constant dense<-0.009034e+00> : tensor<52x1248x1x1xf32>
    %cst_16 = arith.constant dense<0.010606e+00> : tensor<1248x1x3x3xf32>
    %cst_17 = arith.constant dense<0.006880e+00> : tensor<1248x208x1x1xf32>
    %cst_18 = arith.constant dense<-0.013694e+00> : tensor<208x1248x1x1xf32>
    %cst_19 = arith.constant dense<-0.006194e+00> : tensor<1248x52x1x1xf32>
    %cst_20 = arith.constant dense<-0.017232e+00> : tensor<52x1248x1x1xf32>
    %cst_21 = arith.constant dense<-0.003940e+00> : tensor<1248x1x5x5xf32>
    %cst_22 = arith.constant dense<-0.003355e+00> : tensor<1248x208x1x1xf32>
    %cst_23 = arith.constant dense<-0.018203e+00> : tensor<208x1248x1x1xf32>
    %cst_24 = arith.constant dense<0.000330e+00> : tensor<1248x52x1x1xf32>
    %cst_25 = arith.constant dense<-0.010241e+00> : tensor<52x1248x1x1xf32>
    %cst_26 = arith.constant dense<-0.011920e+00> : tensor<1248x1x5x5xf32>
    %cst_27 = arith.constant dense<-0.026220e+00> : tensor<1248x208x1x1xf32>
    %cst_28 = arith.constant dense<0.004182e+00> : tensor<208x1248x1x1xf32>
    %cst_29 = arith.constant dense<0.024551e+00> : tensor<1248x52x1x1xf32>
    %cst_30 = arith.constant dense<0.019757e+00> : tensor<52x1248x1x1xf32>
    %cst_31 = arith.constant dense<-0.001803e+00> : tensor<1248x1x5x5xf32>
    %cst_32 = arith.constant dense<0.000358e+00> : tensor<1248x208x1x1xf32>
    %cst_33 = arith.constant dense<-0.005265e+00> : tensor<208x1248x1x1xf32>
    %cst_34 = arith.constant dense<-0.004358e+00> : tensor<1248x52x1x1xf32>
    %cst_35 = arith.constant dense<-0.010232e+00> : tensor<52x1248x1x1xf32>
    %cst_36 = arith.constant dense<0.000000e+00> : tensor<52xf32>
    %cst_37 = arith.constant dense<0.006883e+00> : tensor<1248x1x5x5xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<1248xf32>
    %cst_39 = arith.constant dense<1.000000e+00> : tensor<1248xf32>
    %cst_40 = arith.constant dense<0.017143e+00> : tensor<1248x208x1x1xf32>
    %cst_41 = arith.constant dense<0.000000e+00> : tensor<208xf32>
    %cst_42 = arith.constant dense<1.000000e+00> : tensor<208xf32>
    %cst_43 = arith.constant dense<0.005130e+00> : tensor<208x720x1x1xf32>
    %cst_44 = arith.constant dense<-0.007880e+00> : tensor<720x30x1x1xf32>
    %cst_45 = arith.constant dense<-0.004505e+00> : tensor<30x720x1x1xf32>
    %cst_46 = arith.constant dense<0.004126e+00> : tensor<720x1x5x5xf32>
    %cst_47 = arith.constant dense<-0.010328e+00> : tensor<720x120x1x1xf32>
    %cst_48 = arith.constant dense<-0.009699e+00> : tensor<120x720x1x1xf32>
    %cst_49 = arith.constant dense<0.017023e+00> : tensor<720x30x1x1xf32>
    %cst_50 = arith.constant dense<0.003784e+00> : tensor<30x720x1x1xf32>
    %cst_51 = arith.constant dense<-0.001749e+00> : tensor<720x1x5x5xf32>
    %cst_52 = arith.constant dense<-0.015361e+00> : tensor<720x120x1x1xf32>
    %cst_53 = arith.constant dense<-0.008054e+00> : tensor<120x720x1x1xf32>
    %cst_54 = arith.constant dense<-0.002236e+00> : tensor<720x30x1x1xf32>
    %cst_55 = arith.constant dense<0.004652e+00> : tensor<30x720x1x1xf32>
    %cst_56 = arith.constant dense<0.007772e+00> : tensor<720x1x5x5xf32>
    %cst_57 = arith.constant dense<0.001471e+00> : tensor<720x120x1x1xf32>
    %cst_58 = arith.constant dense<-0.012250e+00> : tensor<120x720x1x1xf32>
    %cst_59 = arith.constant dense<-0.011134e+00> : tensor<720x30x1x1xf32>
    %cst_60 = arith.constant dense<-0.002095e+00> : tensor<30x720x1x1xf32>
    %cst_61 = arith.constant dense<0.000000e+00> : tensor<30xf32>
    %cst_62 = arith.constant dense<0.003865e+00> : tensor<720x1x5x5xf32>
    %cst_63 = arith.constant dense<0.000000e+00> : tensor<720xf32>
    %cst_64 = arith.constant dense<1.000000e+00> : tensor<720xf32>
    %cst_65 = arith.constant dense<-0.008882e+00> : tensor<720x120x1x1xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<120xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<120xf32>
    %cst_68 = arith.constant dense<0.003593e+00> : tensor<120x528x1x1xf32>
    %cst_69 = arith.constant dense<0.010449e+00> : tensor<528x22x1x1xf32>
    %cst_70 = arith.constant dense<0.002205e+00> : tensor<22x528x1x1xf32>
    %cst_71 = arith.constant dense<-0.017935e+00> : tensor<528x1x5x5xf32>
    %cst_72 = arith.constant dense<-0.007591e+00> : tensor<528x88x1x1xf32>
    %cst_73 = arith.constant dense<0.000804e+00> : tensor<88x528x1x1xf32>
    %cst_74 = arith.constant dense<-0.013074e+00> : tensor<528x22x1x1xf32>
    %cst_75 = arith.constant dense<-0.000804e+00> : tensor<22x528x1x1xf32>
    %cst_76 = arith.constant dense<0.009045e+00> : tensor<528x1x3x3xf32>
    %cst_77 = arith.constant dense<-0.001058e+00> : tensor<528x88x1x1xf32>
    %cst_78 = arith.constant dense<-0.000988e+00> : tensor<88x528x1x1xf32>
    %cst_79 = arith.constant dense<-0.015641e+00> : tensor<528x22x1x1xf32>
    %cst_80 = arith.constant dense<0.011535e+00> : tensor<22x528x1x1xf32>
    %cst_81 = arith.constant dense<-0.001624e+00> : tensor<528x1x3x3xf32>
    %cst_82 = arith.constant dense<0.025933e+00> : tensor<528x88x1x1xf32>
    %cst_83 = arith.constant dense<0.002194e+00> : tensor<88x528x1x1xf32>
    %cst_84 = arith.constant dense<0.007638e+00> : tensor<528x22x1x1xf32>
    %cst_85 = arith.constant dense<0.001192e+00> : tensor<22x528x1x1xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<22xf32>
    %cst_87 = arith.constant dense<0.006042e+00> : tensor<528x1x3x3xf32>
    %cst_88 = arith.constant dense<0.000000e+00> : tensor<528xf32>
    %cst_89 = arith.constant dense<1.000000e+00> : tensor<528xf32>
    %cst_90 = arith.constant dense<-0.006883e+00> : tensor<528x88x1x1xf32>
    %cst_91 = arith.constant dense<0.000000e+00> : tensor<88xf32>
    %cst_92 = arith.constant dense<1.000000e+00> : tensor<88xf32>
    %cst_93 = arith.constant dense<-0.002611e+00> : tensor<88x288x1x1xf32>
    %cst_94 = arith.constant dense<-0.005340e+00> : tensor<288x12x1x1xf32>
    %cst_95 = arith.constant dense<-0.005654e+00> : tensor<12x288x1x1xf32>
    %cst_96 = arith.constant dense<0.006939e+00> : tensor<288x1x3x3xf32>
    %cst_97 = arith.constant dense<-0.005118e+00> : tensor<288x48x1x1xf32>
    %cst_98 = arith.constant dense<-0.020522e+00> : tensor<48x288x1x1xf32>
    %cst_99 = arith.constant dense<0.001117e+00> : tensor<288x12x1x1xf32>
    %cst_100 = arith.constant dense<-0.008369e+00> : tensor<12x288x1x1xf32>
    %cst_101 = arith.constant dense<0.001111e+00> : tensor<288x1x5x5xf32>
    %cst_102 = arith.constant dense<-0.006594e+00> : tensor<288x48x1x1xf32>
    %cst_103 = arith.constant dense<0.010537e+00> : tensor<48x288x1x1xf32>
    %cst_104 = arith.constant dense<-0.000605e+00> : tensor<288x12x1x1xf32>
    %cst_105 = arith.constant dense<-0.002193e+00> : tensor<12x288x1x1xf32>
    %cst_106 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_107 = arith.constant dense<0.010465e+00> : tensor<288x1x5x5xf32>
    %cst_108 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_109 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_110 = arith.constant dense<-0.011967e+00> : tensor<288x48x1x1xf32>
    %cst_111 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_112 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_113 = arith.constant dense<-0.001703e+00> : tensor<48x144x1x1xf32>
    %cst_114 = arith.constant dense<-0.004661e+00> : tensor<144x6x1x1xf32>
    %cst_115 = arith.constant dense<-0.013162e+00> : tensor<6x144x1x1xf32>
    %cst_116 = arith.constant dense<0.012388e+00> : tensor<144x1x5x5xf32>
    %cst_117 = arith.constant dense<-0.006789e+00> : tensor<144x24x1x1xf32>
    %cst_118 = arith.constant dense<-0.004422e+00> : tensor<24x144x1x1xf32>
    %cst_119 = arith.constant dense<0.020977e+00> : tensor<144x6x1x1xf32>
    %cst_120 = arith.constant dense<0.007152e+00> : tensor<6x144x1x1xf32>
    %cst_121 = arith.constant dense<-0.012990e+00> : tensor<144x1x3x3xf32>
    %cst_122 = arith.constant dense<0.002171e+00> : tensor<144x24x1x1xf32>
    %cst_123 = arith.constant dense<0.020162e+00> : tensor<24x144x1x1xf32>
    %cst_124 = arith.constant dense<0.005369e+00> : tensor<144x6x1x1xf32>
    %cst_125 = arith.constant dense<0.001996e+00> : tensor<6x144x1x1xf32>
    %cst_126 = arith.constant dense<0.000000e+00> : tensor<6xf32>
    %cst_127 = arith.constant dense<0.000046e+00> : tensor<144x1x3x3xf32>
    %cst_128 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_129 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_130 = arith.constant dense<-0.007643e+00> : tensor<144x24x1x1xf32>
    %cst_131 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_132 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_133 = arith.constant dense<0.012400e+00> : tensor<24x96x1x1xf32>
    %cst_134 = arith.constant dense<-0.002340e+00> : tensor<96x4x1x1xf32>
    %cst_135 = arith.constant dense<0.018173e+00> : tensor<4x96x1x1xf32>
    %cst_136 = arith.constant dense<0.007706e+00> : tensor<96x1x3x3xf32>
    %cst_137 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_138 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_139 = arith.constant dense<-0.002347e+00> : tensor<96x16x1x1xf32>
    %cst_140 = arith.constant dense<0.005709e+00> : tensor<16x16x1x1xf32>
    %cst_141 = arith.constant dense<-0.019348e+00> : tensor<16x4x1x1xf32>
    %cst_142 = arith.constant dense<-0.011683e+00> : tensor<4x16x1x1xf32>
    %cst_143 = arith.constant dense<0.000000e+00> : tensor<4xf32>
    %cst_144 = arith.constant dense<-0.000110e+00> : tensor<16x1x3x3xf32>
    %cst_145 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_146 = arith.constant dense<1.000000e+00> : tensor<16xf32>
    %cst_147 = arith.constant dense<-0.004395e+00> : tensor<16x32x1x1xf32>
    %cst_148 = arith.constant dense<-0.011532e+00> : tensor<32x8x1x1xf32>
    %cst_149 = arith.constant dense<-0.004977e+00> : tensor<8x32x1x1xf32>
    %cst_150 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_151 = arith.constant dense<0.004376e+00> : tensor<32x1x3x3xf32>
    %cst_152 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_153 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_154 = arith.constant dense<-0.008126e+00> : tensor<32x3x3x3xf32>
    %cst_155 = arith.constant 0.000000e+00 : f32
    %cst_156 = arith.constant 1.000000e-05 : f64
    %cst_157 = arith.constant 2.560000e+02 : f32
    %cst_158 = arith.constant 6.400000e+01 : f32
    %cst_159 = arith.constant 1.600000e+01 : f32
    %cst_160 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_161 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x32x16x16xf32>
    %1 = linalg.fill ins(%cst_155 : f32) outs(%0 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_154 : tensor<1x3x34x34xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_153, %cst_152, %cst_152, %cst_153 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x32x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x32x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_162 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_151 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_162, %collapsed : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_153, %cst_152, %cst_152, %cst_153 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%7 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x32x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x32x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x32x16x16xf32>
    %11 = tensor.empty() : tensor<1x32x1x1xf32>
    %12 = linalg.fill ins(%cst_155 : f32) outs(%11 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x32x1x1xf32>) outs(%11 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_157 : f32
      linalg.yield %513 : f32
    } -> tensor<1x32x1x1xf32>
    %16 = tensor.empty() : tensor<1x8x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_150 : tensor<8xf32>) outs(%16 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_149 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%17 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x8x1x1xf32>) outs(%16 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x8x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%16 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x8x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_152 : tensor<32xf32>) outs(%11 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_148 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%21 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x32x1x1xf32>) outs(%11 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x32x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x32x16x16xf32>
    %25 = tensor.empty() : tensor<1x16x16x16xf32>
    %26 = linalg.fill ins(%cst_155 : f32) outs(%25 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_147 : tensor<1x32x16x16xf32>, tensor<16x32x1x1xf32>) outs(%26 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_146, %cst_145, %cst_145, %cst_146 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%27 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x16x16x16xf32>
    %padded_163 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x16x16x16xf32> to tensor<1x16x18x18xf32>
    %collapsed_164 = tensor.collapse_shape %cst_144 [[0, 1], [2], [3]] : tensor<16x1x3x3xf32> into tensor<16x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_163, %collapsed_164 : tensor<1x16x18x18xf32>, tensor<16x3x3xf32>) outs(%26 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_146, %cst_145, %cst_145, %cst_146 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%29 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x16x16x16xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x16x16x16xf32>) outs(%25 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x16x16x16xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x16x16x16xf32>, tensor<1x16x16x16xf32>) outs(%25 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x16x16x16xf32>
    %33 = tensor.empty() : tensor<1x16x1x1xf32>
    %34 = linalg.fill ins(%cst_155 : f32) outs(%33 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x16x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x16x1x1xf32>) outs(%33 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_157 : f32
      linalg.yield %513 : f32
    } -> tensor<1x16x1x1xf32>
    %37 = tensor.empty() : tensor<1x4x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_143 : tensor<4xf32>) outs(%37 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x4x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_142 : tensor<1x16x1x1xf32>, tensor<4x16x1x1xf32>) outs(%38 : tensor<1x4x1x1xf32>) -> tensor<1x4x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x4x1x1xf32>) outs(%37 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x4x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x4x1x1xf32>, tensor<1x4x1x1xf32>) outs(%37 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x4x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_145 : tensor<16xf32>) outs(%33 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_141 : tensor<1x4x1x1xf32>, tensor<16x4x1x1xf32>) outs(%42 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x16x1x1xf32>) outs(%33 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x16x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x16x1x1xf32>, tensor<1x16x16x16xf32>) outs(%25 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x16x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_140 : tensor<1x16x16x16xf32>, tensor<16x16x1x1xf32>) outs(%26 : tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_146, %cst_145, %cst_145, %cst_146 : tensor<1x16x16x16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%46 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x16x16x16xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x16x16x16xf32>, tensor<1x16x16x16xf32>) outs(%25 : tensor<1x16x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x16x16x16xf32>
    %49 = tensor.empty() : tensor<1x96x16x16xf32>
    %50 = linalg.fill ins(%cst_155 : f32) outs(%49 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%48, %cst_139 : tensor<1x16x16x16xf32>, tensor<96x16x1x1xf32>) outs(%50 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_138, %cst_137, %cst_137, %cst_138 : tensor<1x96x16x16xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%51 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x96x16x16xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x96x16x16xf32>) outs(%49 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x96x16x16xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %52 : tensor<1x96x16x16xf32>, tensor<1x96x16x16xf32>) outs(%49 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x96x16x16xf32>
    %padded_165 = tensor.pad %54 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x96x16x16xf32> to tensor<1x96x18x18xf32>
    %55 = tensor.empty() : tensor<1x96x8x8xf32>
    %56 = linalg.fill ins(%cst_155 : f32) outs(%55 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %collapsed_166 = tensor.collapse_shape %cst_136 [[0, 1], [2], [3]] : tensor<96x1x3x3xf32> into tensor<96x3x3xf32>
    %57 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_165, %collapsed_166 : tensor<1x96x18x18xf32>, tensor<96x3x3xf32>) outs(%56 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_138, %cst_137, %cst_137, %cst_138 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%57 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x96x8x8xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x96x8x8xf32>) outs(%55 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x96x8x8xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %58 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%55 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x96x8x8xf32>
    %61 = tensor.empty() : tensor<1x96x1x1xf32>
    %62 = linalg.fill ins(%cst_155 : f32) outs(%61 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %63 = tensor.empty() : tensor<8x8xf32>
    %64 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %63 : tensor<1x96x8x8xf32>, tensor<8x8xf32>) outs(%62 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x96x1x1xf32>) outs(%61 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_158 : f32
      linalg.yield %513 : f32
    } -> tensor<1x96x1x1xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_135 : tensor<1x96x1x1xf32>, tensor<4x96x1x1xf32>) outs(%38 : tensor<1x4x1x1xf32>) -> tensor<1x4x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x4x1x1xf32>) outs(%37 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x4x1x1xf32>
    %68 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %66 : tensor<1x4x1x1xf32>, tensor<1x4x1x1xf32>) outs(%37 : tensor<1x4x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x4x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_137 : tensor<96xf32>) outs(%61 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_134 : tensor<1x4x1x1xf32>, tensor<96x4x1x1xf32>) outs(%69 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x96x1x1xf32>) outs(%61 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x96x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %60 : tensor<1x96x1x1xf32>, tensor<1x96x8x8xf32>) outs(%55 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x96x8x8xf32>
    %73 = tensor.empty() : tensor<1x24x8x8xf32>
    %74 = linalg.fill ins(%cst_155 : f32) outs(%73 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_133 : tensor<1x96x8x8xf32>, tensor<24x96x1x1xf32>) outs(%74 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_132, %cst_131, %cst_131, %cst_132 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%75 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x24x8x8xf32>
    %77 = tensor.empty() : tensor<1x144x8x8xf32>
    %78 = linalg.fill ins(%cst_155 : f32) outs(%77 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_130 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%78 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_129, %cst_128, %cst_128, %cst_129 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%79 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x144x8x8xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x8x8xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %80 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_167 = tensor.pad %82 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x10x10xf32>
    %collapsed_168 = tensor.collapse_shape %cst_127 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %83 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_167, %collapsed_168 : tensor<1x144x10x10xf32>, tensor<144x3x3xf32>) outs(%78 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_129, %cst_128, %cst_128, %cst_129 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%83 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x144x8x8xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x8x8xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %87 = tensor.empty() : tensor<1x144x1x1xf32>
    %88 = linalg.fill ins(%cst_155 : f32) outs(%87 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %89 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%86, %63 : tensor<1x144x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x144x1x1xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_158 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x1x1xf32>
    %91 = tensor.empty() : tensor<1x6x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_126 : tensor<6xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x6x1x1xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%90, %cst_125 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%92 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %94 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x6x1x1xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x6x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %93 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x6x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_128 : tensor<144xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%95, %cst_124 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%96 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x144x1x1xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %86 : tensor<1x144x1x1xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_123 : tensor<1x144x8x8xf32>, tensor<24x144x1x1xf32>) outs(%74 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_132, %cst_131, %cst_131, %cst_132 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%100 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x24x8x8xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %76 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%73 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x24x8x8xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_122 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%78 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_129, %cst_128, %cst_128, %cst_129 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%103 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x144x8x8xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x8x8xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %104 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_169 = tensor.pad %106 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x10x10xf32>
    %collapsed_170 = tensor.collapse_shape %cst_121 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %107 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_169, %collapsed_170 : tensor<1x144x10x10xf32>, tensor<144x3x3xf32>) outs(%78 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_129, %cst_128, %cst_128, %cst_129 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%107 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x144x8x8xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x8x8xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %111 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %63 : tensor<1x144x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x144x1x1xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_158 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x1x1xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_120 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%92 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x6x1x1xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x6x1x1xf32>
    %115 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %113 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x6x1x1xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_119 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%96 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x144x1x1xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %110 : tensor<1x144x1x1xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_118 : tensor<1x144x8x8xf32>, tensor<24x144x1x1xf32>) outs(%74 : tensor<1x24x8x8xf32>) -> tensor<1x24x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_132, %cst_131, %cst_131, %cst_132 : tensor<1x24x8x8xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%119 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x24x8x8xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %102 : tensor<1x24x8x8xf32>, tensor<1x24x8x8xf32>) outs(%73 : tensor<1x24x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x24x8x8xf32>
    %122 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_117 : tensor<1x24x8x8xf32>, tensor<144x24x1x1xf32>) outs(%78 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %123 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_129, %cst_128, %cst_128, %cst_129 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%122 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x144x8x8xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x8x8xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %123 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%77 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x8x8xf32>
    %padded_171 = tensor.pad %125 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x144x8x8xf32> to tensor<1x144x12x12xf32>
    %126 = tensor.empty() : tensor<1x144x4x4xf32>
    %127 = linalg.fill ins(%cst_155 : f32) outs(%126 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    %collapsed_172 = tensor.collapse_shape %cst_116 [[0, 1], [2], [3]] : tensor<144x1x5x5xf32> into tensor<144x5x5xf32>
    %128 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_171, %collapsed_172 : tensor<1x144x12x12xf32>, tensor<144x5x5xf32>) outs(%127 : tensor<1x144x4x4xf32>) -> tensor<1x144x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_129, %cst_128, %cst_128, %cst_129 : tensor<1x144x4x4xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%128 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x144x4x4xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x144x4x4xf32>) outs(%126 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x4x4xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %129 : tensor<1x144x4x4xf32>, tensor<1x144x4x4xf32>) outs(%126 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x4x4xf32>
    %132 = tensor.empty() : tensor<4x4xf32>
    %133 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%131, %132 : tensor<1x144x4x4xf32>, tensor<4x4xf32>) outs(%88 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x144x1x1xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_159 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x1x1xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_115 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%92 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %136 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x6x1x1xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x6x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %135 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%91 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x6x1x1xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_114 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%96 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %139 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x144x1x1xf32>) outs(%87 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x144x1x1xf32>
    %140 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %131 : tensor<1x144x1x1xf32>, tensor<1x144x4x4xf32>) outs(%126 : tensor<1x144x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x144x4x4xf32>
    %141 = tensor.empty() : tensor<1x48x4x4xf32>
    %142 = linalg.fill ins(%cst_155 : f32) outs(%141 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %cst_113 : tensor<1x144x4x4xf32>, tensor<48x144x1x1xf32>) outs(%142 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %144 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%143 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x48x4x4xf32>
    %145 = tensor.empty() : tensor<1x288x4x4xf32>
    %146 = linalg.fill ins(%cst_155 : f32) outs(%145 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %cst_110 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_109, %cst_108, %cst_108, %cst_109 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%147 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x288x4x4xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %148 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_173 = tensor.pad %150 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x8x8xf32>
    %collapsed_174 = tensor.collapse_shape %cst_107 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %151 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_173, %collapsed_174 : tensor<1x288x8x8xf32>, tensor<288x5x5xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_109, %cst_108, %cst_108, %cst_109 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%151 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x288x4x4xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x4x4xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %152 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %155 = tensor.empty() : tensor<1x288x1x1xf32>
    %156 = linalg.fill ins(%cst_155 : f32) outs(%155 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %157 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%154, %132 : tensor<1x288x4x4xf32>, tensor<4x4xf32>) outs(%156 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_159 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x1x1xf32>
    %159 = tensor.empty() : tensor<1x12x1x1xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_106 : tensor<12xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_105 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%160 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x12x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %161 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x12x1x1xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_108 : tensor<288xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %cst_104 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%164 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %166 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %154 : tensor<1x288x1x1xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%167, %cst_103 : tensor<1x288x4x4xf32>, tensor<48x288x1x1xf32>) outs(%142 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%168 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x48x4x4xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %144 : tensor<1x48x4x4xf32>, tensor<1x48x4x4xf32>) outs(%141 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x48x4x4xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_102 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_109, %cst_108, %cst_108, %cst_109 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%171 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x288x4x4xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x4x4xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %172 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_175 = tensor.pad %174 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x8x8xf32>
    %collapsed_176 = tensor.collapse_shape %cst_101 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %175 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_175, %collapsed_176 : tensor<1x288x8x8xf32>, tensor<288x5x5xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_109, %cst_108, %cst_108, %cst_109 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%175 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x288x4x4xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x4x4xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %179 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %132 : tensor<1x288x4x4xf32>, tensor<4x4xf32>) outs(%156 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_159 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x1x1xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_100 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%160 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x12x1x1xf32>
    %183 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %181 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x12x1x1xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_99 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%164 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %178 : tensor<1x288x1x1xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_98 : tensor<1x288x4x4xf32>, tensor<48x288x1x1xf32>) outs(%142 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_112, %cst_111, %cst_111, %cst_112 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%187 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x48x4x4xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %170 : tensor<1x48x4x4xf32>, tensor<1x48x4x4xf32>) outs(%141 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x48x4x4xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%189, %cst_97 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %191 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_109, %cst_108, %cst_108, %cst_109 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%190 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x288x4x4xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x4x4xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %191 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_177 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x6x6xf32>
    %194 = tensor.empty() : tensor<1x288x2x2xf32>
    %195 = linalg.fill ins(%cst_155 : f32) outs(%194 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %collapsed_178 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %196 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_177, %collapsed_178 : tensor<1x288x6x6xf32>, tensor<288x3x3xf32>) outs(%195 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %197 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_109, %cst_108, %cst_108, %cst_109 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%196 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x288x2x2xf32>
    %198 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x288x2x2xf32>) outs(%194 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x2x2xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %197 : tensor<1x288x2x2xf32>, tensor<1x288x2x2xf32>) outs(%194 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x2x2xf32>
    %200 = tensor.empty() : tensor<2x2xf32>
    %201 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %200 : tensor<1x288x2x2xf32>, tensor<2x2xf32>) outs(%156 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x1x1xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%202, %cst_95 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%160 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x12x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %203 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x12x1x1xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%205, %cst_94 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%164 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %207 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x288x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %199 : tensor<1x288x1x1xf32>, tensor<1x288x2x2xf32>) outs(%194 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x288x2x2xf32>
    %209 = tensor.empty() : tensor<1x88x2x2xf32>
    %210 = linalg.fill ins(%cst_155 : f32) outs(%209 : tensor<1x88x2x2xf32>) -> tensor<1x88x2x2xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%208, %cst_93 : tensor<1x288x2x2xf32>, tensor<88x288x1x1xf32>) outs(%210 : tensor<1x88x2x2xf32>) -> tensor<1x88x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x88x2x2xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%211 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x88x2x2xf32>
    %213 = tensor.empty() : tensor<1x528x2x2xf32>
    %214 = linalg.fill ins(%cst_155 : f32) outs(%213 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_90 : tensor<1x88x2x2xf32>, tensor<528x88x1x1xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%215 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %216 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %padded_179 = tensor.pad %218 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x528x2x2xf32> to tensor<1x528x4x4xf32>
    %collapsed_180 = tensor.collapse_shape %cst_87 [[0, 1], [2], [3]] : tensor<528x1x3x3xf32> into tensor<528x3x3xf32>
    %219 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_179, %collapsed_180 : tensor<1x528x4x4xf32>, tensor<528x3x3xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%219 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %220 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %223 = tensor.empty() : tensor<1x528x1x1xf32>
    %224 = linalg.fill ins(%cst_155 : f32) outs(%223 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %225 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%222, %200 : tensor<1x528x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x1x1xf32>
    %227 = tensor.empty() : tensor<1x22x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_86 : tensor<22xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x22x1x1xf32>
    %229 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_85 : tensor<1x528x1x1xf32>, tensor<22x528x1x1xf32>) outs(%228 : tensor<1x22x1x1xf32>) -> tensor<1x22x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x22x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %229 : tensor<1x22x1x1xf32>, tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x22x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_88 : tensor<528xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x528x1x1xf32>
    %233 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %cst_84 : tensor<1x22x1x1xf32>, tensor<528x22x1x1xf32>) outs(%232 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %222 : tensor<1x528x1x1xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %cst_83 : tensor<1x528x2x2xf32>, tensor<88x528x1x1xf32>) outs(%210 : tensor<1x88x2x2xf32>) -> tensor<1x88x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %237 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x88x2x2xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%236 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x88x2x2xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %212 : tensor<1x88x2x2xf32>, tensor<1x88x2x2xf32>) outs(%209 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x88x2x2xf32>
    %239 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%238, %cst_82 : tensor<1x88x2x2xf32>, tensor<528x88x1x1xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %240 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%239 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %241 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %240 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %padded_181 = tensor.pad %242 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x528x2x2xf32> to tensor<1x528x4x4xf32>
    %collapsed_182 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<528x1x3x3xf32> into tensor<528x3x3xf32>
    %243 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_181, %collapsed_182 : tensor<1x528x4x4xf32>, tensor<528x3x3xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %244 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%243 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %244 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %247 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %200 : tensor<1x528x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %248 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x1x1xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%248, %cst_80 : tensor<1x528x1x1xf32>, tensor<22x528x1x1xf32>) outs(%228 : tensor<1x22x1x1xf32>) -> tensor<1x22x1x1xf32>
    %250 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x22x1x1xf32>
    %251 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %249 : tensor<1x22x1x1xf32>, tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x22x1x1xf32>
    %252 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %cst_79 : tensor<1x22x1x1xf32>, tensor<528x22x1x1xf32>) outs(%232 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %253 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x1x1xf32>
    %254 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %246 : tensor<1x528x1x1xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %255 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%254, %cst_78 : tensor<1x528x2x2xf32>, tensor<88x528x1x1xf32>) outs(%210 : tensor<1x88x2x2xf32>) -> tensor<1x88x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %256 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x88x2x2xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%255 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x88x2x2xf32>
    %257 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %238 : tensor<1x88x2x2xf32>, tensor<1x88x2x2xf32>) outs(%209 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x88x2x2xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%257, %cst_77 : tensor<1x88x2x2xf32>, tensor<528x88x1x1xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%258 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %261 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %259 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %padded_183 = tensor.pad %261 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x528x2x2xf32> to tensor<1x528x4x4xf32>
    %collapsed_184 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<528x1x3x3xf32> into tensor<528x3x3xf32>
    %262 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_183, %collapsed_184 : tensor<1x528x4x4xf32>, tensor<528x3x3xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%262 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %265 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %263 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %266 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%265, %200 : tensor<1x528x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %267 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x1x1xf32>
    %268 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_75 : tensor<1x528x1x1xf32>, tensor<22x528x1x1xf32>) outs(%228 : tensor<1x22x1x1xf32>) -> tensor<1x22x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x22x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269, %268 : tensor<1x22x1x1xf32>, tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x22x1x1xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%270, %cst_74 : tensor<1x22x1x1xf32>, tensor<528x22x1x1xf32>) outs(%232 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %272 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %265 : tensor<1x528x1x1xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%273, %cst_73 : tensor<1x528x2x2xf32>, tensor<88x528x1x1xf32>) outs(%210 : tensor<1x88x2x2xf32>) -> tensor<1x88x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x88x2x2xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>, tensor<88xf32>) outs(%274 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x88x2x2xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %257 : tensor<1x88x2x2xf32>, tensor<1x88x2x2xf32>) outs(%209 : tensor<1x88x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x88x2x2xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_72 : tensor<1x88x2x2xf32>, tensor<528x88x1x1xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%277 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %278 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %padded_185 = tensor.pad %280 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x528x2x2xf32> to tensor<1x528x6x6xf32>
    %collapsed_186 = tensor.collapse_shape %cst_71 [[0, 1], [2], [3]] : tensor<528x1x5x5xf32> into tensor<528x5x5xf32>
    %281 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_185, %collapsed_186 : tensor<1x528x6x6xf32>, tensor<528x5x5xf32>) outs(%214 : tensor<1x528x2x2xf32>) -> tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%281 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x528x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %282 : tensor<1x528x2x2xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %285 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%284, %200 : tensor<1x528x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x1x1xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_70 : tensor<1x528x1x1xf32>, tensor<22x528x1x1xf32>) outs(%228 : tensor<1x22x1x1xf32>) -> tensor<1x22x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x22x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %287 : tensor<1x22x1x1xf32>, tensor<1x22x1x1xf32>) outs(%227 : tensor<1x22x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x22x1x1xf32>
    %290 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%289, %cst_69 : tensor<1x22x1x1xf32>, tensor<528x22x1x1xf32>) outs(%232 : tensor<1x528x1x1xf32>) -> tensor<1x528x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x528x1x1xf32>) outs(%223 : tensor<1x528x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x528x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %284 : tensor<1x528x1x1xf32>, tensor<1x528x2x2xf32>) outs(%213 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x528x2x2xf32>
    %293 = tensor.empty() : tensor<1x120x2x2xf32>
    %294 = linalg.fill ins(%cst_155 : f32) outs(%293 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    %295 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%292, %cst_68 : tensor<1x528x2x2xf32>, tensor<120x528x1x1xf32>) outs(%294 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %296 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x120x2x2xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%295 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x120x2x2xf32>
    %297 = tensor.empty() : tensor<1x720x2x2xf32>
    %298 = linalg.fill ins(%cst_155 : f32) outs(%297 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_65 : tensor<1x120x2x2xf32>, tensor<720x120x1x1xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %300 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%299 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %300 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %padded_187 = tensor.pad %302 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x720x2x2xf32> to tensor<1x720x6x6xf32>
    %collapsed_188 = tensor.collapse_shape %cst_62 [[0, 1], [2], [3]] : tensor<720x1x5x5xf32> into tensor<720x5x5xf32>
    %303 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_187, %collapsed_188 : tensor<1x720x6x6xf32>, tensor<720x5x5xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %304 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%303 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %304 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %307 = tensor.empty() : tensor<1x720x1x1xf32>
    %308 = linalg.fill ins(%cst_155 : f32) outs(%307 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %309 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%306, %200 : tensor<1x720x2x2xf32>, tensor<2x2xf32>) outs(%308 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x1x1xf32>
    %311 = tensor.empty() : tensor<1x30x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_61 : tensor<30xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x30x1x1xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %cst_60 : tensor<1x720x1x1xf32>, tensor<30x720x1x1xf32>) outs(%312 : tensor<1x30x1x1xf32>) -> tensor<1x30x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x30x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %313 : tensor<1x30x1x1xf32>, tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x30x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_63 : tensor<720xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x720x1x1xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%315, %cst_59 : tensor<1x30x1x1xf32>, tensor<720x30x1x1xf32>) outs(%316 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x1x1xf32>
    %319 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %306 : tensor<1x720x1x1xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%319, %cst_58 : tensor<1x720x2x2xf32>, tensor<120x720x1x1xf32>) outs(%294 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %321 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x120x2x2xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%320 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x120x2x2xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %296 : tensor<1x120x2x2xf32>, tensor<1x120x2x2xf32>) outs(%293 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x120x2x2xf32>
    %323 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %cst_57 : tensor<1x120x2x2xf32>, tensor<720x120x1x1xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %324 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%323 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %325 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %324 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %padded_189 = tensor.pad %326 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x720x2x2xf32> to tensor<1x720x6x6xf32>
    %collapsed_190 = tensor.collapse_shape %cst_56 [[0, 1], [2], [3]] : tensor<720x1x5x5xf32> into tensor<720x5x5xf32>
    %327 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_189, %collapsed_190 : tensor<1x720x6x6xf32>, tensor<720x5x5xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %328 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%327 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %328 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %331 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %200 : tensor<1x720x2x2xf32>, tensor<2x2xf32>) outs(%308 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x1x1xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%332, %cst_55 : tensor<1x720x1x1xf32>, tensor<30x720x1x1xf32>) outs(%312 : tensor<1x30x1x1xf32>) -> tensor<1x30x1x1xf32>
    %334 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x30x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %333 : tensor<1x30x1x1xf32>, tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x30x1x1xf32>
    %336 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_54 : tensor<1x30x1x1xf32>, tensor<720x30x1x1xf32>) outs(%316 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %337 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x1x1xf32>
    %338 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %330 : tensor<1x720x1x1xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %339 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%338, %cst_53 : tensor<1x720x2x2xf32>, tensor<120x720x1x1xf32>) outs(%294 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %340 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x120x2x2xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%339 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x120x2x2xf32>
    %341 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %322 : tensor<1x120x2x2xf32>, tensor<1x120x2x2xf32>) outs(%293 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x120x2x2xf32>
    %342 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%341, %cst_52 : tensor<1x120x2x2xf32>, tensor<720x120x1x1xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %343 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%342 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %344 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %345 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %343 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %padded_191 = tensor.pad %345 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x720x2x2xf32> to tensor<1x720x6x6xf32>
    %collapsed_192 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<720x1x5x5xf32> into tensor<720x5x5xf32>
    %346 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_191, %collapsed_192 : tensor<1x720x6x6xf32>, tensor<720x5x5xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %347 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%346 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %348 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %347 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %350 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %200 : tensor<1x720x2x2xf32>, tensor<2x2xf32>) outs(%308 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.divf %in, %cst_160 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x1x1xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %cst_50 : tensor<1x720x1x1xf32>, tensor<30x720x1x1xf32>) outs(%312 : tensor<1x30x1x1xf32>) -> tensor<1x30x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x30x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %352 : tensor<1x30x1x1xf32>, tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x30x1x1xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %cst_49 : tensor<1x30x1x1xf32>, tensor<720x30x1x1xf32>) outs(%316 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %349 : tensor<1x720x1x1xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %358 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%357, %cst_48 : tensor<1x720x2x2xf32>, tensor<120x720x1x1xf32>) outs(%294 : tensor<1x120x2x2xf32>) -> tensor<1x120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %359 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x120x2x2xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%358 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x120x2x2xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %341 : tensor<1x120x2x2xf32>, tensor<1x120x2x2xf32>) outs(%293 : tensor<1x120x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x120x2x2xf32>
    %361 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %cst_47 : tensor<1x120x2x2xf32>, tensor<720x120x1x1xf32>) outs(%298 : tensor<1x720x2x2xf32>) -> tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %362 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%361 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x2x2xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x2x2xf32>
    %364 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %362 : tensor<1x720x2x2xf32>, tensor<1x720x2x2xf32>) outs(%297 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x2x2xf32>
    %padded_193 = tensor.pad %364 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x720x2x2xf32> to tensor<1x720x6x6xf32>
    %collapsed_194 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<720x1x5x5xf32> into tensor<720x5x5xf32>
    %365 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_193, %collapsed_194 : tensor<1x720x6x6xf32>, tensor<720x5x5xf32>) outs(%308 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %366 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x720x1x1xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%365 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x720x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %366 : tensor<1x720x1x1xf32>, tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x1x1xf32>
    %369 = tensor.empty() : tensor<1x1xf32>
    %370 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %369 : tensor<1x720x1x1xf32>, tensor<1x1xf32>) outs(%308 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_45 : tensor<1x720x1x1xf32>, tensor<30x720x1x1xf32>) outs(%312 : tensor<1x30x1x1xf32>) -> tensor<1x30x1x1xf32>
    %372 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x30x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372, %371 : tensor<1x30x1x1xf32>, tensor<1x30x1x1xf32>) outs(%311 : tensor<1x30x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x30x1x1xf32>
    %374 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%373, %cst_44 : tensor<1x30x1x1xf32>, tensor<720x30x1x1xf32>) outs(%316 : tensor<1x720x1x1xf32>) -> tensor<1x720x1x1xf32>
    %375 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374 : tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x720x1x1xf32>
    %376 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %368 : tensor<1x720x1x1xf32>, tensor<1x720x1x1xf32>) outs(%307 : tensor<1x720x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x720x1x1xf32>
    %377 = tensor.empty() : tensor<1x208x1x1xf32>
    %378 = linalg.fill ins(%cst_155 : f32) outs(%377 : tensor<1x208x1x1xf32>) -> tensor<1x208x1x1xf32>
    %379 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%376, %cst_43 : tensor<1x720x1x1xf32>, tensor<208x720x1x1xf32>) outs(%378 : tensor<1x208x1x1xf32>) -> tensor<1x208x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %380 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %cst_42, %cst_41, %cst_41, %cst_42 : tensor<1x208x1x1xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>) outs(%379 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x208x1x1xf32>
    %381 = tensor.empty() : tensor<1x1248x1x1xf32>
    %382 = linalg.fill ins(%cst_155 : f32) outs(%381 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %383 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%380, %cst_40 : tensor<1x208x1x1xf32>, tensor<1248x208x1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %384 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%383 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %385 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %384 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %padded_195 = tensor.pad %386 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x1248x1x1xf32> to tensor<1x1248x5x5xf32>
    %collapsed_196 = tensor.collapse_shape %cst_37 [[0, 1], [2], [3]] : tensor<1248x1x5x5xf32> into tensor<1248x5x5xf32>
    %387 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_195, %collapsed_196 : tensor<1x1248x5x5xf32>, tensor<1248x5x5xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%387 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %389 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %388 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %391 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %369 : tensor<1x1248x1x1xf32>, tensor<1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %392 = tensor.empty() : tensor<1x52x1x1xf32>
    %393 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_36 : tensor<52xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x52x1x1xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %cst_35 : tensor<1x1248x1x1xf32>, tensor<52x1248x1x1xf32>) outs(%393 : tensor<1x52x1x1xf32>) -> tensor<1x52x1x1xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x52x1x1xf32>
    %396 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395, %394 : tensor<1x52x1x1xf32>, tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x52x1x1xf32>
    %397 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_38 : tensor<1248xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1248x1x1xf32>
    %398 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_34 : tensor<1x52x1x1xf32>, tensor<1248x52x1x1xf32>) outs(%397 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %399 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %400 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %390 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %401 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%400, %cst_33 : tensor<1x1248x1x1xf32>, tensor<208x1248x1x1xf32>) outs(%378 : tensor<1x208x1x1xf32>) -> tensor<1x208x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_42, %cst_41, %cst_41, %cst_42 : tensor<1x208x1x1xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>) outs(%401 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x208x1x1xf32>
    %403 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402, %380 : tensor<1x208x1x1xf32>, tensor<1x208x1x1xf32>) outs(%377 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x208x1x1xf32>
    %404 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%403, %cst_32 : tensor<1x208x1x1xf32>, tensor<1248x208x1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %405 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%404 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %406 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %407 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %405 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %padded_197 = tensor.pad %407 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x1248x1x1xf32> to tensor<1x1248x5x5xf32>
    %collapsed_198 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<1248x1x5x5xf32> into tensor<1248x5x5xf32>
    %408 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_197, %collapsed_198 : tensor<1x1248x5x5xf32>, tensor<1248x5x5xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %409 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%408 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %409 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %412 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%411, %369 : tensor<1x1248x1x1xf32>, tensor<1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %cst_30 : tensor<1x1248x1x1xf32>, tensor<52x1248x1x1xf32>) outs(%393 : tensor<1x52x1x1xf32>) -> tensor<1x52x1x1xf32>
    %414 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413 : tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x52x1x1xf32>
    %415 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %413 : tensor<1x52x1x1xf32>, tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x52x1x1xf32>
    %416 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%415, %cst_29 : tensor<1x52x1x1xf32>, tensor<1248x52x1x1xf32>) outs(%397 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %417 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %411 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %419 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%418, %cst_28 : tensor<1x1248x1x1xf32>, tensor<208x1248x1x1xf32>) outs(%378 : tensor<1x208x1x1xf32>) -> tensor<1x208x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %420 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419, %cst_42, %cst_41, %cst_41, %cst_42 : tensor<1x208x1x1xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>) outs(%419 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x208x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %403 : tensor<1x208x1x1xf32>, tensor<1x208x1x1xf32>) outs(%377 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x208x1x1xf32>
    %422 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%421, %cst_27 : tensor<1x208x1x1xf32>, tensor<1248x208x1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %423 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%422 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %424 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %425 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %423 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %padded_199 = tensor.pad %425 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x1248x1x1xf32> to tensor<1x1248x5x5xf32>
    %collapsed_200 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<1248x1x5x5xf32> into tensor<1248x5x5xf32>
    %426 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %collapsed_200 : tensor<1x1248x5x5xf32>, tensor<1248x5x5xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %427 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%426 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %428 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %429 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %427 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %430 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%429, %369 : tensor<1x1248x1x1xf32>, tensor<1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %431 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%430, %cst_25 : tensor<1x1248x1x1xf32>, tensor<52x1248x1x1xf32>) outs(%393 : tensor<1x52x1x1xf32>) -> tensor<1x52x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x52x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %431 : tensor<1x52x1x1xf32>, tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x52x1x1xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%433, %cst_24 : tensor<1x52x1x1xf32>, tensor<1248x52x1x1xf32>) outs(%397 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %435 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %429 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_23 : tensor<1x1248x1x1xf32>, tensor<208x1248x1x1xf32>) outs(%378 : tensor<1x208x1x1xf32>) -> tensor<1x208x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %438 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %cst_42, %cst_41, %cst_41, %cst_42 : tensor<1x208x1x1xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>) outs(%437 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x208x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %421 : tensor<1x208x1x1xf32>, tensor<1x208x1x1xf32>) outs(%377 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x208x1x1xf32>
    %440 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%439, %cst_22 : tensor<1x208x1x1xf32>, tensor<1248x208x1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %441 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%440 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %442 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %441 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %padded_201 = tensor.pad %443 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x1248x1x1xf32> to tensor<1x1248x5x5xf32>
    %collapsed_202 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<1248x1x5x5xf32> into tensor<1248x5x5xf32>
    %444 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_201, %collapsed_202 : tensor<1x1248x5x5xf32>, tensor<1248x5x5xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %445 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%444 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %446 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %445 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %448 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %369 : tensor<1x1248x1x1xf32>, tensor<1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %449 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%448, %cst_20 : tensor<1x1248x1x1xf32>, tensor<52x1248x1x1xf32>) outs(%393 : tensor<1x52x1x1xf32>) -> tensor<1x52x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x52x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %449 : tensor<1x52x1x1xf32>, tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x52x1x1xf32>
    %452 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%451, %cst_19 : tensor<1x52x1x1xf32>, tensor<1248x52x1x1xf32>) outs(%397 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %453 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %454 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %447 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %455 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %cst_18 : tensor<1x1248x1x1xf32>, tensor<208x1248x1x1xf32>) outs(%378 : tensor<1x208x1x1xf32>) -> tensor<1x208x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %456 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %cst_42, %cst_41, %cst_41, %cst_42 : tensor<1x208x1x1xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>, tensor<208xf32>) outs(%455 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x208x1x1xf32>
    %457 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %439 : tensor<1x208x1x1xf32>, tensor<1x208x1x1xf32>) outs(%377 : tensor<1x208x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x208x1x1xf32>
    %458 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%457, %cst_17 : tensor<1x208x1x1xf32>, tensor<1248x208x1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %459 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%458 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %459 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %padded_203 = tensor.pad %461 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x1248x1x1xf32> to tensor<1x1248x3x3xf32>
    %collapsed_204 = tensor.collapse_shape %cst_16 [[0, 1], [2], [3]] : tensor<1248x1x3x3xf32> into tensor<1248x3x3xf32>
    %462 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_203, %collapsed_204 : tensor<1x1248x3x3xf32>, tensor<1248x3x3xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %463 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%462 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1248x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %465 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %463 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %466 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%465, %369 : tensor<1x1248x1x1xf32>, tensor<1x1xf32>) outs(%382 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %467 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%466, %cst_15 : tensor<1x1248x1x1xf32>, tensor<52x1248x1x1xf32>) outs(%393 : tensor<1x52x1x1xf32>) -> tensor<1x52x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x52x1x1xf32>
    %469 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %467 : tensor<1x52x1x1xf32>, tensor<1x52x1x1xf32>) outs(%392 : tensor<1x52x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x52x1x1xf32>
    %470 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%469, %cst_14 : tensor<1x52x1x1xf32>, tensor<1248x52x1x1xf32>) outs(%397 : tensor<1x1248x1x1xf32>) -> tensor<1x1248x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1248x1x1xf32>
    %472 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %465 : tensor<1x1248x1x1xf32>, tensor<1x1248x1x1xf32>) outs(%381 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1248x1x1xf32>
    %473 = tensor.empty() : tensor<1x352x1x1xf32>
    %474 = linalg.fill ins(%cst_155 : f32) outs(%473 : tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    %475 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%472, %cst_13 : tensor<1x1248x1x1xf32>, tensor<352x1248x1x1xf32>) outs(%474 : tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %cst_12, %cst_11, %cst_11, %cst_12 : tensor<1x352x1x1xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>) outs(%475 : tensor<1x352x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x352x1x1xf32>
    %477 = tensor.empty() : tensor<1x2112x1x1xf32>
    %478 = linalg.fill ins(%cst_155 : f32) outs(%477 : tensor<1x2112x1x1xf32>) -> tensor<1x2112x1x1xf32>
    %479 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%476, %cst_10 : tensor<1x352x1x1xf32>, tensor<2112x352x1x1xf32>) outs(%478 : tensor<1x2112x1x1xf32>) -> tensor<1x2112x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %480 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2112x1x1xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>) outs(%479 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x2112x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480 : tensor<1x2112x1x1xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x2112x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481, %480 : tensor<1x2112x1x1xf32>, tensor<1x2112x1x1xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x2112x1x1xf32>
    %padded_205 = tensor.pad %482 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_155 : f32
    } : tensor<1x2112x1x1xf32> to tensor<1x2112x3x3xf32>
    %collapsed_206 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<2112x1x3x3xf32> into tensor<2112x3x3xf32>
    %483 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %collapsed_206 : tensor<1x2112x3x3xf32>, tensor<2112x3x3xf32>) outs(%478 : tensor<1x2112x1x1xf32>) -> tensor<1x2112x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %484 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2112x1x1xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>) outs(%483 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x2112x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x2112x1x1xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x2112x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485, %484 : tensor<1x2112x1x1xf32>, tensor<1x2112x1x1xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x2112x1x1xf32>
    %487 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%486, %369 : tensor<1x2112x1x1xf32>, tensor<1x1xf32>) outs(%478 : tensor<1x2112x1x1xf32>) -> tensor<1x2112x1x1xf32>
    %488 = tensor.empty() : tensor<1x88x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_91 : tensor<88xf32>) outs(%488 : tensor<1x88x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x88x1x1xf32>
    %490 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%487, %cst_6 : tensor<1x2112x1x1xf32>, tensor<88x2112x1x1xf32>) outs(%489 : tensor<1x88x1x1xf32>) -> tensor<1x88x1x1xf32>
    %491 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490 : tensor<1x88x1x1xf32>) outs(%488 : tensor<1x88x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x88x1x1xf32>
    %492 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %490 : tensor<1x88x1x1xf32>, tensor<1x88x1x1xf32>) outs(%488 : tensor<1x88x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x88x1x1xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<2112xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2112x1x1xf32>
    %494 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%492, %cst_5 : tensor<1x88x1x1xf32>, tensor<2112x88x1x1xf32>) outs(%493 : tensor<1x2112x1x1xf32>) -> tensor<1x2112x1x1xf32>
    %495 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494 : tensor<1x2112x1x1xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x2112x1x1xf32>
    %496 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495, %486 : tensor<1x2112x1x1xf32>, tensor<1x2112x1x1xf32>) outs(%477 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x2112x1x1xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%496, %cst_4 : tensor<1x2112x1x1xf32>, tensor<352x2112x1x1xf32>) outs(%474 : tensor<1x352x1x1xf32>) -> tensor<1x352x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_12, %cst_11, %cst_11, %cst_12 : tensor<1x352x1x1xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>) outs(%497 : tensor<1x352x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x352x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %476 : tensor<1x352x1x1xf32>, tensor<1x352x1x1xf32>) outs(%473 : tensor<1x352x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x352x1x1xf32>
    %500 = tensor.empty() : tensor<1x1408x1x1xf32>
    %501 = linalg.fill ins(%cst_155 : f32) outs(%500 : tensor<1x1408x1x1xf32>) -> tensor<1x1408x1x1xf32>
    %502 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %cst_3 : tensor<1x352x1x1xf32>, tensor<1408x352x1x1xf32>) outs(%501 : tensor<1x1408x1x1xf32>) -> tensor<1x1408x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %503 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1408x1x1xf32>, tensor<1408xf32>, tensor<1408xf32>, tensor<1408xf32>, tensor<1408xf32>) outs(%502 : tensor<1x1408x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %in_209: f32, %in_210: f32, %in_211: f32, %out: f32):
      %513 = arith.truncf %cst_156 : f64 to f32
      %514 = arith.addf %in_211, %513 : f32
      %515 = math.rsqrt %514 : f32
      %516 = arith.subf %in, %in_210 : f32
      %517 = arith.mulf %516, %515 : f32
      %518 = arith.mulf %517, %in_208 : f32
      %519 = arith.addf %518, %in_209 : f32
      linalg.yield %519 : f32
    } -> tensor<1x1408x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x1408x1x1xf32>) outs(%500 : tensor<1x1408x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %513 = arith.negf %in : f32
      %514 = math.exp %513 : f32
      %515 = arith.addf %514, %cst_161 : f32
      %516 = arith.divf %cst_161, %515 : f32
      linalg.yield %516 : f32
    } -> tensor<1x1408x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %503 : tensor<1x1408x1x1xf32>, tensor<1x1408x1x1xf32>) outs(%500 : tensor<1x1408x1x1xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.mulf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1408x1x1xf32>
    %506 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %369 : tensor<1x1408x1x1xf32>, tensor<1x1xf32>) outs(%501 : tensor<1x1408x1x1xf32>) -> tensor<1x1408x1x1xf32>
    %collapsed_207 = tensor.collapse_shape %506 [[0], [1, 2, 3]] : tensor<1x1408x1x1xf32> into tensor<1x1408xf32>
    %507 = tensor.empty() : tensor<1408x1000xf32>
    %508 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1408xf32>) outs(%507 : tensor<1408x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1408x1000xf32>
    %509 = tensor.empty() : tensor<1x1000xf32>
    %510 = linalg.fill ins(%cst_155 : f32) outs(%509 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %511 = linalg.matmul ins(%collapsed_207, %508 : tensor<1x1408xf32>, tensor<1408x1000xf32>) outs(%510 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %512 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%511, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%509 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_208: f32, %out: f32):
      %513 = arith.addf %in, %in_208 : f32
      linalg.yield %513 : f32
    } -> tensor<1x1000xf32>
    return %512 : tensor<1x1000xf32>
  }
}
