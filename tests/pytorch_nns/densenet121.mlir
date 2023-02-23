#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "DenseNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<-0.004208e+00> : tensor<1000x1024xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.017779e+00> : tensor<32x128x3x3xf32>
    %cst_2 = arith.constant dense<0.000899e+00> : tensor<128x992x1x1xf32>
    %cst_3 = arith.constant dense<-0.000651e+00> : tensor<32x128x3x3xf32>
    %cst_4 = arith.constant dense<0.002703e+00> : tensor<128x960x1x1xf32>
    %cst_5 = arith.constant dense<-0.001185e+00> : tensor<32x128x3x3xf32>
    %cst_6 = arith.constant dense<0.003036e+00> : tensor<128x928x1x1xf32>
    %cst_7 = arith.constant dense<-0.013700e+00> : tensor<32x128x3x3xf32>
    %cst_8 = arith.constant dense<0.017923e+00> : tensor<128x896x1x1xf32>
    %cst_9 = arith.constant dense<-0.000170e+00> : tensor<32x128x3x3xf32>
    %cst_10 = arith.constant dense<-0.012334e+00> : tensor<128x864x1x1xf32>
    %cst_11 = arith.constant dense<-0.004150e+00> : tensor<32x128x3x3xf32>
    %cst_12 = arith.constant dense<0.002779e+00> : tensor<128x832x1x1xf32>
    %cst_13 = arith.constant dense<-0.005108e+00> : tensor<32x128x3x3xf32>
    %cst_14 = arith.constant dense<-0.003633e+00> : tensor<128x800x1x1xf32>
    %cst_15 = arith.constant dense<0.006493e+00> : tensor<32x128x3x3xf32>
    %cst_16 = arith.constant dense<0.011717e+00> : tensor<128x768x1x1xf32>
    %cst_17 = arith.constant dense<0.006196e+00> : tensor<32x128x3x3xf32>
    %cst_18 = arith.constant dense<0.004493e+00> : tensor<128x736x1x1xf32>
    %cst_19 = arith.constant dense<0.003765e+00> : tensor<32x128x3x3xf32>
    %cst_20 = arith.constant dense<-0.001356e+00> : tensor<128x704x1x1xf32>
    %cst_21 = arith.constant dense<-0.005415e+00> : tensor<32x128x3x3xf32>
    %cst_22 = arith.constant dense<-0.005001e+00> : tensor<128x672x1x1xf32>
    %cst_23 = arith.constant dense<0.014053e+00> : tensor<32x128x3x3xf32>
    %cst_24 = arith.constant dense<0.014294e+00> : tensor<128x640x1x1xf32>
    %cst_25 = arith.constant dense<0.001935e+00> : tensor<32x128x3x3xf32>
    %cst_26 = arith.constant dense<-0.010392e+00> : tensor<128x608x1x1xf32>
    %cst_27 = arith.constant dense<0.007815e+00> : tensor<32x128x3x3xf32>
    %cst_28 = arith.constant dense<-0.005523e+00> : tensor<128x576x1x1xf32>
    %cst_29 = arith.constant dense<-0.014528e+00> : tensor<32x128x3x3xf32>
    %cst_30 = arith.constant dense<0.007672e+00> : tensor<128x544x1x1xf32>
    %cst_31 = arith.constant dense<0.001317e+00> : tensor<32x128x3x3xf32>
    %cst_32 = arith.constant dense<0.000376e+00> : tensor<128x512x1x1xf32>
    %cst_33 = arith.constant dense<0.009730e+00> : tensor<512x1024x1x1xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_35 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_36 = arith.constant dense<-0.003686e+00> : tensor<32x128x3x3xf32>
    %cst_37 = arith.constant dense<0.011817e+00> : tensor<128x992x1x1xf32>
    %cst_38 = arith.constant dense<0.000000e+00> : tensor<992xf32>
    %cst_39 = arith.constant dense<1.000000e+00> : tensor<992xf32>
    %cst_40 = arith.constant dense<0.017262e+00> : tensor<32x128x3x3xf32>
    %cst_41 = arith.constant dense<-0.009312e+00> : tensor<128x960x1x1xf32>
    %cst_42 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_43 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_44 = arith.constant dense<-0.012938e+00> : tensor<32x128x3x3xf32>
    %cst_45 = arith.constant dense<0.005044e+00> : tensor<128x928x1x1xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<928xf32>
    %cst_47 = arith.constant dense<1.000000e+00> : tensor<928xf32>
    %cst_48 = arith.constant dense<0.001013e+00> : tensor<32x128x3x3xf32>
    %cst_49 = arith.constant dense<-0.012565e+00> : tensor<128x896x1x1xf32>
    %cst_50 = arith.constant dense<0.000000e+00> : tensor<896xf32>
    %cst_51 = arith.constant dense<1.000000e+00> : tensor<896xf32>
    %cst_52 = arith.constant dense<0.004183e+00> : tensor<32x128x3x3xf32>
    %cst_53 = arith.constant dense<0.009105e+00> : tensor<128x864x1x1xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<864xf32>
    %cst_55 = arith.constant dense<1.000000e+00> : tensor<864xf32>
    %cst_56 = arith.constant dense<-0.013315e+00> : tensor<32x128x3x3xf32>
    %cst_57 = arith.constant dense<-0.007010e+00> : tensor<128x832x1x1xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<832xf32>
    %cst_59 = arith.constant dense<1.000000e+00> : tensor<832xf32>
    %cst_60 = arith.constant dense<0.005837e+00> : tensor<32x128x3x3xf32>
    %cst_61 = arith.constant dense<0.005202e+00> : tensor<128x800x1x1xf32>
    %cst_62 = arith.constant dense<0.000000e+00> : tensor<800xf32>
    %cst_63 = arith.constant dense<1.000000e+00> : tensor<800xf32>
    %cst_64 = arith.constant dense<-0.010386e+00> : tensor<32x128x3x3xf32>
    %cst_65 = arith.constant dense<-0.008797e+00> : tensor<128x768x1x1xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_68 = arith.constant dense<0.004270e+00> : tensor<32x128x3x3xf32>
    %cst_69 = arith.constant dense<0.000279e+00> : tensor<128x736x1x1xf32>
    %cst_70 = arith.constant dense<0.000000e+00> : tensor<736xf32>
    %cst_71 = arith.constant dense<1.000000e+00> : tensor<736xf32>
    %cst_72 = arith.constant dense<0.006646e+00> : tensor<32x128x3x3xf32>
    %cst_73 = arith.constant dense<-0.000280e+00> : tensor<128x704x1x1xf32>
    %cst_74 = arith.constant dense<0.000000e+00> : tensor<704xf32>
    %cst_75 = arith.constant dense<1.000000e+00> : tensor<704xf32>
    %cst_76 = arith.constant dense<0.003472e+00> : tensor<32x128x3x3xf32>
    %cst_77 = arith.constant dense<0.015271e+00> : tensor<128x672x1x1xf32>
    %cst_78 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_79 = arith.constant dense<1.000000e+00> : tensor<672xf32>
    %cst_80 = arith.constant dense<0.004151e+00> : tensor<32x128x3x3xf32>
    %cst_81 = arith.constant dense<-0.007525e+00> : tensor<128x640x1x1xf32>
    %cst_82 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_83 = arith.constant dense<1.000000e+00> : tensor<640xf32>
    %cst_84 = arith.constant dense<0.007089e+00> : tensor<32x128x3x3xf32>
    %cst_85 = arith.constant dense<-0.008515e+00> : tensor<128x608x1x1xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<608xf32>
    %cst_87 = arith.constant dense<1.000000e+00> : tensor<608xf32>
    %cst_88 = arith.constant dense<-0.015660e+00> : tensor<32x128x3x3xf32>
    %cst_89 = arith.constant dense<-0.002606e+00> : tensor<128x576x1x1xf32>
    %cst_90 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_91 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_92 = arith.constant dense<0.010403e+00> : tensor<32x128x3x3xf32>
    %cst_93 = arith.constant dense<-0.004359e+00> : tensor<128x544x1x1xf32>
    %cst_94 = arith.constant dense<0.000000e+00> : tensor<544xf32>
    %cst_95 = arith.constant dense<1.000000e+00> : tensor<544xf32>
    %cst_96 = arith.constant dense<-0.017068e+00> : tensor<32x128x3x3xf32>
    %cst_97 = arith.constant dense<-0.007787e+00> : tensor<128x512x1x1xf32>
    %cst_98 = arith.constant dense<0.003124e+00> : tensor<32x128x3x3xf32>
    %cst_99 = arith.constant dense<-0.007228e+00> : tensor<128x480x1x1xf32>
    %cst_100 = arith.constant dense<-0.003199e+00> : tensor<32x128x3x3xf32>
    %cst_101 = arith.constant dense<0.001524e+00> : tensor<128x448x1x1xf32>
    %cst_102 = arith.constant dense<-0.007980e+00> : tensor<32x128x3x3xf32>
    %cst_103 = arith.constant dense<-0.011282e+00> : tensor<128x416x1x1xf32>
    %cst_104 = arith.constant dense<-0.000385e+00> : tensor<32x128x3x3xf32>
    %cst_105 = arith.constant dense<-0.022815e+00> : tensor<128x384x1x1xf32>
    %cst_106 = arith.constant dense<0.001813e+00> : tensor<32x128x3x3xf32>
    %cst_107 = arith.constant dense<0.006428e+00> : tensor<128x352x1x1xf32>
    %cst_108 = arith.constant dense<-0.001209e+00> : tensor<32x128x3x3xf32>
    %cst_109 = arith.constant dense<0.000468e+00> : tensor<128x320x1x1xf32>
    %cst_110 = arith.constant dense<-0.000761e+00> : tensor<32x128x3x3xf32>
    %cst_111 = arith.constant dense<-0.011162e+00> : tensor<128x288x1x1xf32>
    %cst_112 = arith.constant dense<-0.003653e+00> : tensor<32x128x3x3xf32>
    %cst_113 = arith.constant dense<0.004916e+00> : tensor<128x256x1x1xf32>
    %cst_114 = arith.constant dense<0.007367e+00> : tensor<256x512x1x1xf32>
    %cst_115 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_116 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_117 = arith.constant dense<-0.000918e+00> : tensor<32x128x3x3xf32>
    %cst_118 = arith.constant dense<0.008743e+00> : tensor<128x480x1x1xf32>
    %cst_119 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_120 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_121 = arith.constant dense<-0.000675e+00> : tensor<32x128x3x3xf32>
    %cst_122 = arith.constant dense<0.004250e+00> : tensor<128x448x1x1xf32>
    %cst_123 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_124 = arith.constant dense<1.000000e+00> : tensor<448xf32>
    %cst_125 = arith.constant dense<-0.016338e+00> : tensor<32x128x3x3xf32>
    %cst_126 = arith.constant dense<-0.002719e+00> : tensor<128x416x1x1xf32>
    %cst_127 = arith.constant dense<0.000000e+00> : tensor<416xf32>
    %cst_128 = arith.constant dense<1.000000e+00> : tensor<416xf32>
    %cst_129 = arith.constant dense<-0.002893e+00> : tensor<32x128x3x3xf32>
    %cst_130 = arith.constant dense<0.011140e+00> : tensor<128x384x1x1xf32>
    %cst_131 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_132 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_133 = arith.constant dense<-0.020292e+00> : tensor<32x128x3x3xf32>
    %cst_134 = arith.constant dense<0.023278e+00> : tensor<128x352x1x1xf32>
    %cst_135 = arith.constant dense<0.000000e+00> : tensor<352xf32>
    %cst_136 = arith.constant dense<1.000000e+00> : tensor<352xf32>
    %cst_137 = arith.constant dense<-0.009285e+00> : tensor<32x128x3x3xf32>
    %cst_138 = arith.constant dense<0.008919e+00> : tensor<128x320x1x1xf32>
    %cst_139 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_140 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_141 = arith.constant dense<-0.009443e+00> : tensor<32x128x3x3xf32>
    %cst_142 = arith.constant dense<-0.005622e+00> : tensor<128x288x1x1xf32>
    %cst_143 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_144 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_145 = arith.constant dense<-0.005607e+00> : tensor<32x128x3x3xf32>
    %cst_146 = arith.constant dense<0.001076e+00> : tensor<128x256x1x1xf32>
    %cst_147 = arith.constant dense<0.001555e+00> : tensor<32x128x3x3xf32>
    %cst_148 = arith.constant dense<-0.010763e+00> : tensor<128x224x1x1xf32>
    %cst_149 = arith.constant dense<-0.003753e+00> : tensor<32x128x3x3xf32>
    %cst_150 = arith.constant dense<0.002256e+00> : tensor<128x192x1x1xf32>
    %cst_151 = arith.constant dense<0.008629e+00> : tensor<32x128x3x3xf32>
    %cst_152 = arith.constant dense<-0.017901e+00> : tensor<128x160x1x1xf32>
    %cst_153 = arith.constant dense<-0.002389e+00> : tensor<32x128x3x3xf32>
    %cst_154 = arith.constant dense<-0.004631e+00> : tensor<128x128x1x1xf32>
    %cst_155 = arith.constant dense<0.001862e+00> : tensor<128x256x1x1xf32>
    %cst_156 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_157 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_158 = arith.constant dense<0.006207e+00> : tensor<32x128x3x3xf32>
    %cst_159 = arith.constant dense<-0.007767e+00> : tensor<128x224x1x1xf32>
    %cst_160 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_161 = arith.constant dense<1.000000e+00> : tensor<224xf32>
    %cst_162 = arith.constant dense<-0.007628e+00> : tensor<32x128x3x3xf32>
    %cst_163 = arith.constant dense<-0.019460e+00> : tensor<128x192x1x1xf32>
    %cst_164 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_165 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_166 = arith.constant dense<-0.004868e+00> : tensor<32x128x3x3xf32>
    %cst_167 = arith.constant dense<0.009937e+00> : tensor<128x160x1x1xf32>
    %cst_168 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_169 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_170 = arith.constant dense<-0.003961e+00> : tensor<32x128x3x3xf32>
    %cst_171 = arith.constant dense<0.002537e+00> : tensor<128x128x1x1xf32>
    %cst_172 = arith.constant dense<0.008837e+00> : tensor<32x128x3x3xf32>
    %cst_173 = arith.constant dense<0.011077e+00> : tensor<128x96x1x1xf32>
    %cst_174 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_175 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_176 = arith.constant dense<-0.010963e+00> : tensor<32x128x3x3xf32>
    %cst_177 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_178 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_179 = arith.constant dense<-0.000248e+00> : tensor<128x64x1x1xf32>
    %cst_180 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_181 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_182 = arith.constant dense<-0.009038e+00> : tensor<64x3x7x7xf32>
    %cst_183 = arith.constant 0.000000e+00 : f32
    %cst_184 = arith.constant -3.40282347E+38 : f32
    %cst_185 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %cst_186 = arith.constant 4.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_183 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_182 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_181, %cst_180, %cst_180, %cst_181 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_187 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_184 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_184 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_187, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %10 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %cst_181, %cst_180, %cst_180, %cst_181 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%9 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x64x8x8xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x64x8x8xf32>
    %12 = tensor.empty() : tensor<1x128x8x8xf32>
    %13 = linalg.fill ins(%cst_183 : f32) outs(%12 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%11, %cst_179 : tensor<1x64x8x8xf32>, tensor<128x64x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%14 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_188 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %17 = tensor.empty() : tensor<1x32x8x8xf32>
    %18 = linalg.fill ins(%cst_183 : f32) outs(%17 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_188, %cst_176 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %20 = tensor.empty() : tensor<1x96x8x8xf32>
    %inserted_slice = tensor.insert_slice %9 into %20[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x96x8x8xf32>
    %inserted_slice_189 = tensor.insert_slice %19 into %inserted_slice[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_189, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%inserted_slice_189 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x96x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x96x8x8xf32>) outs(%20 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x96x8x8xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %cst_173 : tensor<1x96x8x8xf32>, tensor<128x96x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %24 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%23 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_190 = tensor.pad %25 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_190, %cst_172 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %inserted_slice_191 = tensor.insert_slice %9 into %12[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x128x8x8xf32>
    %inserted_slice_192 = tensor.insert_slice %19 into %inserted_slice_191[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x128x8x8xf32>
    %inserted_slice_193 = tensor.insert_slice %26 into %inserted_slice_192[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_193, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%inserted_slice_193 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %cst_171 : tensor<1x128x8x8xf32>, tensor<128x128x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_194 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_194, %cst_170 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %33 = tensor.empty() : tensor<1x160x8x8xf32>
    %inserted_slice_195 = tensor.insert_slice %9 into %33[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x160x8x8xf32>
    %inserted_slice_196 = tensor.insert_slice %19 into %inserted_slice_195[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x160x8x8xf32>
    %inserted_slice_197 = tensor.insert_slice %26 into %inserted_slice_196[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x160x8x8xf32>
    %inserted_slice_198 = tensor.insert_slice %32 into %inserted_slice_197[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x160x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %34 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_198, %cst_169, %cst_168, %cst_168, %cst_169 : tensor<1x160x8x8xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%inserted_slice_198 : tensor<1x160x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x160x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x160x8x8xf32>) outs(%33 : tensor<1x160x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x160x8x8xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%35, %cst_167 : tensor<1x160x8x8xf32>, tensor<128x160x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_199 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %cst_166 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %40 = tensor.empty() : tensor<1x192x8x8xf32>
    %inserted_slice_200 = tensor.insert_slice %9 into %40[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_201 = tensor.insert_slice %19 into %inserted_slice_200[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_202 = tensor.insert_slice %26 into %inserted_slice_201[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_203 = tensor.insert_slice %32 into %inserted_slice_202[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_204 = tensor.insert_slice %39 into %inserted_slice_203[0, 160, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_204, %cst_165, %cst_164, %cst_164, %cst_165 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%inserted_slice_204 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x192x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x192x8x8xf32>) outs(%40 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x192x8x8xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%42, %cst_163 : tensor<1x192x8x8xf32>, tensor<128x192x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%43 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_205 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %cst_162 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %47 = tensor.empty() : tensor<1x224x8x8xf32>
    %inserted_slice_206 = tensor.insert_slice %9 into %47[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_207 = tensor.insert_slice %19 into %inserted_slice_206[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_208 = tensor.insert_slice %26 into %inserted_slice_207[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_209 = tensor.insert_slice %32 into %inserted_slice_208[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_210 = tensor.insert_slice %39 into %inserted_slice_209[0, 160, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_211 = tensor.insert_slice %46 into %inserted_slice_210[0, 192, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_211, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x224x8x8xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%inserted_slice_211 : tensor<1x224x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x224x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x224x8x8xf32>) outs(%47 : tensor<1x224x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x224x8x8xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_159 : tensor<1x224x8x8xf32>, tensor<128x224x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%50 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x8x8xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_212 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_212, %cst_158 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %54 = tensor.empty() : tensor<1x256x8x8xf32>
    %inserted_slice_213 = tensor.insert_slice %9 into %54[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_214 = tensor.insert_slice %19 into %inserted_slice_213[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_215 = tensor.insert_slice %26 into %inserted_slice_214[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_216 = tensor.insert_slice %32 into %inserted_slice_215[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_217 = tensor.insert_slice %39 into %inserted_slice_216[0, 160, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_218 = tensor.insert_slice %46 into %inserted_slice_217[0, 192, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_219 = tensor.insert_slice %53 into %inserted_slice_218[0, 224, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_219, %cst_157, %cst_156, %cst_156, %cst_157 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%inserted_slice_219 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x256x8x8xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x256x8x8xf32>) outs(%54 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x256x8x8xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%56, %cst_155 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %58 = tensor.empty() : tensor<1x128x4x4xf32>
    %59 = linalg.fill ins(%cst_183 : f32) outs(%58 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %60 = tensor.empty() : tensor<2x2xf32>
    %61 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%57, %60 : tensor<1x128x8x8xf32>, tensor<2x2xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.divf %in, %cst_186 : f32
      linalg.yield %464 : f32
    } -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%62 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%64, %cst_154 : tensor<1x128x4x4xf32>, tensor<128x128x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%65 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_220 = tensor.pad %67 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %68 = tensor.empty() : tensor<1x32x4x4xf32>
    %69 = linalg.fill ins(%cst_183 : f32) outs(%68 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_220, %cst_153 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %71 = tensor.empty() : tensor<1x160x4x4xf32>
    %inserted_slice_221 = tensor.insert_slice %62 into %71[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x160x4x4xf32>
    %inserted_slice_222 = tensor.insert_slice %70 into %inserted_slice_221[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x160x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_222, %cst_169, %cst_168, %cst_168, %cst_169 : tensor<1x160x4x4xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%inserted_slice_222 : tensor<1x160x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x160x4x4xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x160x4x4xf32>) outs(%71 : tensor<1x160x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x160x4x4xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%73, %cst_152 : tensor<1x160x4x4xf32>, tensor<128x160x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%74 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_223 = tensor.pad %76 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_223, %cst_151 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %78 = tensor.empty() : tensor<1x192x4x4xf32>
    %inserted_slice_224 = tensor.insert_slice %62 into %78[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x192x4x4xf32>
    %inserted_slice_225 = tensor.insert_slice %70 into %inserted_slice_224[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x192x4x4xf32>
    %inserted_slice_226 = tensor.insert_slice %77 into %inserted_slice_225[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_226, %cst_165, %cst_164, %cst_164, %cst_165 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%inserted_slice_226 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x192x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x192x4x4xf32>) outs(%78 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x192x4x4xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%80, %cst_150 : tensor<1x192x4x4xf32>, tensor<128x192x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%81 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_227 = tensor.pad %83 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_227, %cst_149 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %85 = tensor.empty() : tensor<1x224x4x4xf32>
    %inserted_slice_228 = tensor.insert_slice %62 into %85[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x224x4x4xf32>
    %inserted_slice_229 = tensor.insert_slice %70 into %inserted_slice_228[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x224x4x4xf32>
    %inserted_slice_230 = tensor.insert_slice %77 into %inserted_slice_229[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x224x4x4xf32>
    %inserted_slice_231 = tensor.insert_slice %84 into %inserted_slice_230[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x224x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_231, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x224x4x4xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%inserted_slice_231 : tensor<1x224x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x224x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x224x4x4xf32>) outs(%85 : tensor<1x224x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x224x4x4xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_148 : tensor<1x224x4x4xf32>, tensor<128x224x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%88 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_232 = tensor.pad %90 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_232, %cst_147 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %92 = tensor.empty() : tensor<1x256x4x4xf32>
    %inserted_slice_233 = tensor.insert_slice %62 into %92[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_234 = tensor.insert_slice %70 into %inserted_slice_233[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_235 = tensor.insert_slice %77 into %inserted_slice_234[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_236 = tensor.insert_slice %84 into %inserted_slice_235[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_237 = tensor.insert_slice %91 into %inserted_slice_236[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_237, %cst_157, %cst_156, %cst_156, %cst_157 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%inserted_slice_237 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x256x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x256x4x4xf32>) outs(%92 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x256x4x4xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%94, %cst_146 : tensor<1x256x4x4xf32>, tensor<128x256x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%95 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_238 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %98 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_238, %cst_145 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %99 = tensor.empty() : tensor<1x288x4x4xf32>
    %inserted_slice_239 = tensor.insert_slice %62 into %99[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_240 = tensor.insert_slice %70 into %inserted_slice_239[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_241 = tensor.insert_slice %77 into %inserted_slice_240[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_242 = tensor.insert_slice %84 into %inserted_slice_241[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_243 = tensor.insert_slice %91 into %inserted_slice_242[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_244 = tensor.insert_slice %98 into %inserted_slice_243[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_244, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%inserted_slice_244 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x288x4x4xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x288x4x4xf32>) outs(%99 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x288x4x4xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %cst_142 : tensor<1x288x4x4xf32>, tensor<128x288x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%102 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %104 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_245 = tensor.pad %104 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_245, %cst_141 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %106 = tensor.empty() : tensor<1x320x4x4xf32>
    %inserted_slice_246 = tensor.insert_slice %62 into %106[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_247 = tensor.insert_slice %70 into %inserted_slice_246[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_248 = tensor.insert_slice %77 into %inserted_slice_247[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_249 = tensor.insert_slice %84 into %inserted_slice_248[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_250 = tensor.insert_slice %91 into %inserted_slice_249[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_251 = tensor.insert_slice %98 into %inserted_slice_250[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_252 = tensor.insert_slice %105 into %inserted_slice_251[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_252, %cst_140, %cst_139, %cst_139, %cst_140 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%inserted_slice_252 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x320x4x4xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x320x4x4xf32>) outs(%106 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x320x4x4xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %cst_138 : tensor<1x320x4x4xf32>, tensor<128x320x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%109 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_253 = tensor.pad %111 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_253, %cst_137 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %113 = tensor.empty() : tensor<1x352x4x4xf32>
    %inserted_slice_254 = tensor.insert_slice %62 into %113[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_255 = tensor.insert_slice %70 into %inserted_slice_254[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_256 = tensor.insert_slice %77 into %inserted_slice_255[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_257 = tensor.insert_slice %84 into %inserted_slice_256[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_258 = tensor.insert_slice %91 into %inserted_slice_257[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_259 = tensor.insert_slice %98 into %inserted_slice_258[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_260 = tensor.insert_slice %105 into %inserted_slice_259[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_261 = tensor.insert_slice %112 into %inserted_slice_260[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_261, %cst_136, %cst_135, %cst_135, %cst_136 : tensor<1x352x4x4xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>) outs(%inserted_slice_261 : tensor<1x352x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x352x4x4xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x352x4x4xf32>) outs(%113 : tensor<1x352x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x352x4x4xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_134 : tensor<1x352x4x4xf32>, tensor<128x352x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%116 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_262 = tensor.pad %118 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_262, %cst_133 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %120 = tensor.empty() : tensor<1x384x4x4xf32>
    %inserted_slice_263 = tensor.insert_slice %62 into %120[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_264 = tensor.insert_slice %70 into %inserted_slice_263[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_265 = tensor.insert_slice %77 into %inserted_slice_264[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_266 = tensor.insert_slice %84 into %inserted_slice_265[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_267 = tensor.insert_slice %91 into %inserted_slice_266[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_268 = tensor.insert_slice %98 into %inserted_slice_267[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_269 = tensor.insert_slice %105 into %inserted_slice_268[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_270 = tensor.insert_slice %112 into %inserted_slice_269[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_271 = tensor.insert_slice %119 into %inserted_slice_270[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %121 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_271, %cst_132, %cst_131, %cst_131, %cst_132 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%inserted_slice_271 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x384x4x4xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x384x4x4xf32>) outs(%120 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x384x4x4xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_130 : tensor<1x384x4x4xf32>, tensor<128x384x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%123 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_272 = tensor.pad %125 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_272, %cst_129 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %127 = tensor.empty() : tensor<1x416x4x4xf32>
    %inserted_slice_273 = tensor.insert_slice %62 into %127[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_274 = tensor.insert_slice %70 into %inserted_slice_273[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_275 = tensor.insert_slice %77 into %inserted_slice_274[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_276 = tensor.insert_slice %84 into %inserted_slice_275[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_277 = tensor.insert_slice %91 into %inserted_slice_276[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_278 = tensor.insert_slice %98 into %inserted_slice_277[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_279 = tensor.insert_slice %105 into %inserted_slice_278[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_280 = tensor.insert_slice %112 into %inserted_slice_279[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_281 = tensor.insert_slice %119 into %inserted_slice_280[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_282 = tensor.insert_slice %126 into %inserted_slice_281[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_282, %cst_128, %cst_127, %cst_127, %cst_128 : tensor<1x416x4x4xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>) outs(%inserted_slice_282 : tensor<1x416x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x416x4x4xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x416x4x4xf32>) outs(%127 : tensor<1x416x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x416x4x4xf32>
    %130 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_126 : tensor<1x416x4x4xf32>, tensor<128x416x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %131 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%130 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_283 = tensor.pad %132 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %133 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_283, %cst_125 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %134 = tensor.empty() : tensor<1x448x4x4xf32>
    %inserted_slice_284 = tensor.insert_slice %62 into %134[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_285 = tensor.insert_slice %70 into %inserted_slice_284[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_286 = tensor.insert_slice %77 into %inserted_slice_285[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_287 = tensor.insert_slice %84 into %inserted_slice_286[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_288 = tensor.insert_slice %91 into %inserted_slice_287[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_289 = tensor.insert_slice %98 into %inserted_slice_288[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_290 = tensor.insert_slice %105 into %inserted_slice_289[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_291 = tensor.insert_slice %112 into %inserted_slice_290[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_292 = tensor.insert_slice %119 into %inserted_slice_291[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_293 = tensor.insert_slice %126 into %inserted_slice_292[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_294 = tensor.insert_slice %133 into %inserted_slice_293[0, 416, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_294, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x448x4x4xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%inserted_slice_294 : tensor<1x448x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x448x4x4xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x448x4x4xf32>) outs(%134 : tensor<1x448x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x448x4x4xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_122 : tensor<1x448x4x4xf32>, tensor<128x448x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%137 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_295 = tensor.pad %139 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_295, %cst_121 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %141 = tensor.empty() : tensor<1x480x4x4xf32>
    %inserted_slice_296 = tensor.insert_slice %62 into %141[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_297 = tensor.insert_slice %70 into %inserted_slice_296[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_298 = tensor.insert_slice %77 into %inserted_slice_297[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_299 = tensor.insert_slice %84 into %inserted_slice_298[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_300 = tensor.insert_slice %91 into %inserted_slice_299[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_301 = tensor.insert_slice %98 into %inserted_slice_300[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_302 = tensor.insert_slice %105 into %inserted_slice_301[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_303 = tensor.insert_slice %112 into %inserted_slice_302[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_304 = tensor.insert_slice %119 into %inserted_slice_303[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_305 = tensor.insert_slice %126 into %inserted_slice_304[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_306 = tensor.insert_slice %133 into %inserted_slice_305[0, 416, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_307 = tensor.insert_slice %140 into %inserted_slice_306[0, 448, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_307, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%inserted_slice_307 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x480x4x4xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x480x4x4xf32>) outs(%141 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x480x4x4xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_118 : tensor<1x480x4x4xf32>, tensor<128x480x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%144 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x4x4xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_308 = tensor.pad %146 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_308, %cst_117 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %148 = tensor.empty() : tensor<1x512x4x4xf32>
    %inserted_slice_309 = tensor.insert_slice %62 into %148[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_310 = tensor.insert_slice %70 into %inserted_slice_309[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_311 = tensor.insert_slice %77 into %inserted_slice_310[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_312 = tensor.insert_slice %84 into %inserted_slice_311[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_313 = tensor.insert_slice %91 into %inserted_slice_312[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_314 = tensor.insert_slice %98 into %inserted_slice_313[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_315 = tensor.insert_slice %105 into %inserted_slice_314[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_316 = tensor.insert_slice %112 into %inserted_slice_315[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_317 = tensor.insert_slice %119 into %inserted_slice_316[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_318 = tensor.insert_slice %126 into %inserted_slice_317[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_319 = tensor.insert_slice %133 into %inserted_slice_318[0, 416, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_320 = tensor.insert_slice %140 into %inserted_slice_319[0, 448, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_321 = tensor.insert_slice %147 into %inserted_slice_320[0, 480, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_321, %cst_116, %cst_115, %cst_115, %cst_116 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%inserted_slice_321 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x512x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x512x4x4xf32>) outs(%148 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x512x4x4xf32>
    %151 = linalg.fill ins(%cst_183 : f32) outs(%92 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_114 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%151 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %153 = tensor.empty() : tensor<1x256x2x2xf32>
    %154 = linalg.fill ins(%cst_183 : f32) outs(%153 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %155 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%152, %60 : tensor<1x256x4x4xf32>, tensor<2x2xf32>) outs(%154 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x2x2xf32>) outs(%153 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.divf %in, %cst_186 : f32
      linalg.yield %464 : f32
    } -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_157, %cst_156, %cst_156, %cst_157 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%156 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x256x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x256x2x2xf32>) outs(%153 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x256x2x2xf32>
    %159 = tensor.empty() : tensor<1x128x2x2xf32>
    %160 = linalg.fill ins(%cst_183 : f32) outs(%159 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_113 : tensor<1x256x2x2xf32>, tensor<128x256x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%161 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_322 = tensor.pad %163 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %164 = tensor.empty() : tensor<1x32x2x2xf32>
    %165 = linalg.fill ins(%cst_183 : f32) outs(%164 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_322, %cst_112 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %167 = tensor.empty() : tensor<1x288x2x2xf32>
    %inserted_slice_323 = tensor.insert_slice %156 into %167[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x288x2x2xf32>
    %inserted_slice_324 = tensor.insert_slice %166 into %inserted_slice_323[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_324, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%inserted_slice_324 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x288x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x288x2x2xf32>) outs(%167 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x288x2x2xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%169, %cst_111 : tensor<1x288x2x2xf32>, tensor<128x288x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%170 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_325 = tensor.pad %172 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_325, %cst_110 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %174 = tensor.empty() : tensor<1x320x2x2xf32>
    %inserted_slice_326 = tensor.insert_slice %156 into %174[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x320x2x2xf32>
    %inserted_slice_327 = tensor.insert_slice %166 into %inserted_slice_326[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x320x2x2xf32>
    %inserted_slice_328 = tensor.insert_slice %173 into %inserted_slice_327[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x320x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_328, %cst_140, %cst_139, %cst_139, %cst_140 : tensor<1x320x2x2xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%inserted_slice_328 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x320x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x320x2x2xf32>) outs(%174 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x320x2x2xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_109 : tensor<1x320x2x2xf32>, tensor<128x320x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%177 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_329 = tensor.pad %179 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_329, %cst_108 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %181 = tensor.empty() : tensor<1x352x2x2xf32>
    %inserted_slice_330 = tensor.insert_slice %156 into %181[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x352x2x2xf32>
    %inserted_slice_331 = tensor.insert_slice %166 into %inserted_slice_330[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x352x2x2xf32>
    %inserted_slice_332 = tensor.insert_slice %173 into %inserted_slice_331[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x352x2x2xf32>
    %inserted_slice_333 = tensor.insert_slice %180 into %inserted_slice_332[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x352x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_333, %cst_136, %cst_135, %cst_135, %cst_136 : tensor<1x352x2x2xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>) outs(%inserted_slice_333 : tensor<1x352x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x352x2x2xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x352x2x2xf32>) outs(%181 : tensor<1x352x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x352x2x2xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_107 : tensor<1x352x2x2xf32>, tensor<128x352x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%184 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_334 = tensor.pad %186 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_334, %cst_106 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %188 = tensor.empty() : tensor<1x384x2x2xf32>
    %inserted_slice_335 = tensor.insert_slice %156 into %188[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_336 = tensor.insert_slice %166 into %inserted_slice_335[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_337 = tensor.insert_slice %173 into %inserted_slice_336[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_338 = tensor.insert_slice %180 into %inserted_slice_337[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_339 = tensor.insert_slice %187 into %inserted_slice_338[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %189 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_339, %cst_132, %cst_131, %cst_131, %cst_132 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%inserted_slice_339 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x384x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x384x2x2xf32>) outs(%188 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x384x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_105 : tensor<1x384x2x2xf32>, tensor<128x384x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%191 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_340 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_340, %cst_104 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %195 = tensor.empty() : tensor<1x416x2x2xf32>
    %inserted_slice_341 = tensor.insert_slice %156 into %195[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_342 = tensor.insert_slice %166 into %inserted_slice_341[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_343 = tensor.insert_slice %173 into %inserted_slice_342[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_344 = tensor.insert_slice %180 into %inserted_slice_343[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_345 = tensor.insert_slice %187 into %inserted_slice_344[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_346 = tensor.insert_slice %194 into %inserted_slice_345[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_346, %cst_128, %cst_127, %cst_127, %cst_128 : tensor<1x416x2x2xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>) outs(%inserted_slice_346 : tensor<1x416x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x416x2x2xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x416x2x2xf32>) outs(%195 : tensor<1x416x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x416x2x2xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_103 : tensor<1x416x2x2xf32>, tensor<128x416x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%198 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_347 = tensor.pad %200 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_347, %cst_102 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %202 = tensor.empty() : tensor<1x448x2x2xf32>
    %inserted_slice_348 = tensor.insert_slice %156 into %202[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_349 = tensor.insert_slice %166 into %inserted_slice_348[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_350 = tensor.insert_slice %173 into %inserted_slice_349[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_351 = tensor.insert_slice %180 into %inserted_slice_350[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_352 = tensor.insert_slice %187 into %inserted_slice_351[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_353 = tensor.insert_slice %194 into %inserted_slice_352[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_354 = tensor.insert_slice %201 into %inserted_slice_353[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_354, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x448x2x2xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%inserted_slice_354 : tensor<1x448x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x448x2x2xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x448x2x2xf32>) outs(%202 : tensor<1x448x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x448x2x2xf32>
    %205 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%204, %cst_101 : tensor<1x448x2x2xf32>, tensor<128x448x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %206 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%205 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_355 = tensor.pad %207 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_355, %cst_100 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %209 = tensor.empty() : tensor<1x480x2x2xf32>
    %inserted_slice_356 = tensor.insert_slice %156 into %209[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_357 = tensor.insert_slice %166 into %inserted_slice_356[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_358 = tensor.insert_slice %173 into %inserted_slice_357[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_359 = tensor.insert_slice %180 into %inserted_slice_358[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_360 = tensor.insert_slice %187 into %inserted_slice_359[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_361 = tensor.insert_slice %194 into %inserted_slice_360[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_362 = tensor.insert_slice %201 into %inserted_slice_361[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_363 = tensor.insert_slice %208 into %inserted_slice_362[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_363, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%inserted_slice_363 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x480x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x480x2x2xf32>) outs(%209 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x480x2x2xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %cst_99 : tensor<1x480x2x2xf32>, tensor<128x480x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%212 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_364 = tensor.pad %214 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_364, %cst_98 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %216 = tensor.empty() : tensor<1x512x2x2xf32>
    %inserted_slice_365 = tensor.insert_slice %156 into %216[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_366 = tensor.insert_slice %166 into %inserted_slice_365[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_367 = tensor.insert_slice %173 into %inserted_slice_366[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_368 = tensor.insert_slice %180 into %inserted_slice_367[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_369 = tensor.insert_slice %187 into %inserted_slice_368[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_370 = tensor.insert_slice %194 into %inserted_slice_369[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_371 = tensor.insert_slice %201 into %inserted_slice_370[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_372 = tensor.insert_slice %208 into %inserted_slice_371[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_373 = tensor.insert_slice %215 into %inserted_slice_372[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %217 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_373, %cst_116, %cst_115, %cst_115, %cst_116 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%inserted_slice_373 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x512x2x2xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x512x2x2xf32>) outs(%216 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x512x2x2xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_97 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%219 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_374 = tensor.pad %221 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_374, %cst_96 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %223 = tensor.empty() : tensor<1x544x2x2xf32>
    %inserted_slice_375 = tensor.insert_slice %156 into %223[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_376 = tensor.insert_slice %166 into %inserted_slice_375[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_377 = tensor.insert_slice %173 into %inserted_slice_376[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_378 = tensor.insert_slice %180 into %inserted_slice_377[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_379 = tensor.insert_slice %187 into %inserted_slice_378[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_380 = tensor.insert_slice %194 into %inserted_slice_379[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_381 = tensor.insert_slice %201 into %inserted_slice_380[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_382 = tensor.insert_slice %208 into %inserted_slice_381[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_383 = tensor.insert_slice %215 into %inserted_slice_382[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_384 = tensor.insert_slice %222 into %inserted_slice_383[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %224 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_384, %cst_95, %cst_94, %cst_94, %cst_95 : tensor<1x544x2x2xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>) outs(%inserted_slice_384 : tensor<1x544x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x544x2x2xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x544x2x2xf32>) outs(%223 : tensor<1x544x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x544x2x2xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%225, %cst_93 : tensor<1x544x2x2xf32>, tensor<128x544x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %227 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%226 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_385 = tensor.pad %228 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %229 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_385, %cst_92 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %230 = tensor.empty() : tensor<1x576x2x2xf32>
    %inserted_slice_386 = tensor.insert_slice %156 into %230[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_387 = tensor.insert_slice %166 into %inserted_slice_386[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_388 = tensor.insert_slice %173 into %inserted_slice_387[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_389 = tensor.insert_slice %180 into %inserted_slice_388[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_390 = tensor.insert_slice %187 into %inserted_slice_389[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_391 = tensor.insert_slice %194 into %inserted_slice_390[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_392 = tensor.insert_slice %201 into %inserted_slice_391[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_393 = tensor.insert_slice %208 into %inserted_slice_392[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_394 = tensor.insert_slice %215 into %inserted_slice_393[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_395 = tensor.insert_slice %222 into %inserted_slice_394[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_396 = tensor.insert_slice %229 into %inserted_slice_395[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %231 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_396, %cst_91, %cst_90, %cst_90, %cst_91 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%inserted_slice_396 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x576x2x2xf32>
    %232 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x576x2x2xf32>) outs(%230 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x576x2x2xf32>
    %233 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%232, %cst_89 : tensor<1x576x2x2xf32>, tensor<128x576x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %234 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%233 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_397 = tensor.pad %235 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_397, %cst_88 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %237 = tensor.empty() : tensor<1x608x2x2xf32>
    %inserted_slice_398 = tensor.insert_slice %156 into %237[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_399 = tensor.insert_slice %166 into %inserted_slice_398[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_400 = tensor.insert_slice %173 into %inserted_slice_399[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_401 = tensor.insert_slice %180 into %inserted_slice_400[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_402 = tensor.insert_slice %187 into %inserted_slice_401[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_403 = tensor.insert_slice %194 into %inserted_slice_402[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_404 = tensor.insert_slice %201 into %inserted_slice_403[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_405 = tensor.insert_slice %208 into %inserted_slice_404[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_406 = tensor.insert_slice %215 into %inserted_slice_405[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_407 = tensor.insert_slice %222 into %inserted_slice_406[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_408 = tensor.insert_slice %229 into %inserted_slice_407[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_409 = tensor.insert_slice %236 into %inserted_slice_408[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_409, %cst_87, %cst_86, %cst_86, %cst_87 : tensor<1x608x2x2xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>) outs(%inserted_slice_409 : tensor<1x608x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x608x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x608x2x2xf32>) outs(%237 : tensor<1x608x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x608x2x2xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_85 : tensor<1x608x2x2xf32>, tensor<128x608x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%240 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_410 = tensor.pad %242 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_410, %cst_84 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %244 = tensor.empty() : tensor<1x640x2x2xf32>
    %inserted_slice_411 = tensor.insert_slice %156 into %244[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_412 = tensor.insert_slice %166 into %inserted_slice_411[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_413 = tensor.insert_slice %173 into %inserted_slice_412[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_414 = tensor.insert_slice %180 into %inserted_slice_413[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_415 = tensor.insert_slice %187 into %inserted_slice_414[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_416 = tensor.insert_slice %194 into %inserted_slice_415[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_417 = tensor.insert_slice %201 into %inserted_slice_416[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_418 = tensor.insert_slice %208 into %inserted_slice_417[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_419 = tensor.insert_slice %215 into %inserted_slice_418[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_420 = tensor.insert_slice %222 into %inserted_slice_419[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_421 = tensor.insert_slice %229 into %inserted_slice_420[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_422 = tensor.insert_slice %236 into %inserted_slice_421[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_423 = tensor.insert_slice %243 into %inserted_slice_422[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_423, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%inserted_slice_423 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x640x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x640x2x2xf32>) outs(%244 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x640x2x2xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_81 : tensor<1x640x2x2xf32>, tensor<128x640x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%247 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_424 = tensor.pad %249 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %250 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_424, %cst_80 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %251 = tensor.empty() : tensor<1x672x2x2xf32>
    %inserted_slice_425 = tensor.insert_slice %156 into %251[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_426 = tensor.insert_slice %166 into %inserted_slice_425[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_427 = tensor.insert_slice %173 into %inserted_slice_426[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_428 = tensor.insert_slice %180 into %inserted_slice_427[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_429 = tensor.insert_slice %187 into %inserted_slice_428[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_430 = tensor.insert_slice %194 into %inserted_slice_429[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_431 = tensor.insert_slice %201 into %inserted_slice_430[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_432 = tensor.insert_slice %208 into %inserted_slice_431[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_433 = tensor.insert_slice %215 into %inserted_slice_432[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_434 = tensor.insert_slice %222 into %inserted_slice_433[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_435 = tensor.insert_slice %229 into %inserted_slice_434[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_436 = tensor.insert_slice %236 into %inserted_slice_435[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_437 = tensor.insert_slice %243 into %inserted_slice_436[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_438 = tensor.insert_slice %250 into %inserted_slice_437[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_438, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%inserted_slice_438 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x672x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x672x2x2xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %cst_77 : tensor<1x672x2x2xf32>, tensor<128x672x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%254 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_439 = tensor.pad %256 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_439, %cst_76 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %258 = tensor.empty() : tensor<1x704x2x2xf32>
    %inserted_slice_440 = tensor.insert_slice %156 into %258[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_441 = tensor.insert_slice %166 into %inserted_slice_440[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_442 = tensor.insert_slice %173 into %inserted_slice_441[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_443 = tensor.insert_slice %180 into %inserted_slice_442[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_444 = tensor.insert_slice %187 into %inserted_slice_443[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_445 = tensor.insert_slice %194 into %inserted_slice_444[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_446 = tensor.insert_slice %201 into %inserted_slice_445[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_447 = tensor.insert_slice %208 into %inserted_slice_446[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_448 = tensor.insert_slice %215 into %inserted_slice_447[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_449 = tensor.insert_slice %222 into %inserted_slice_448[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_450 = tensor.insert_slice %229 into %inserted_slice_449[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_451 = tensor.insert_slice %236 into %inserted_slice_450[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_452 = tensor.insert_slice %243 into %inserted_slice_451[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_453 = tensor.insert_slice %250 into %inserted_slice_452[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_454 = tensor.insert_slice %257 into %inserted_slice_453[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_454, %cst_75, %cst_74, %cst_74, %cst_75 : tensor<1x704x2x2xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>) outs(%inserted_slice_454 : tensor<1x704x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x704x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x704x2x2xf32>) outs(%258 : tensor<1x704x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x704x2x2xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_73 : tensor<1x704x2x2xf32>, tensor<128x704x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%261 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_455 = tensor.pad %263 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_455, %cst_72 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %265 = tensor.empty() : tensor<1x736x2x2xf32>
    %inserted_slice_456 = tensor.insert_slice %156 into %265[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_457 = tensor.insert_slice %166 into %inserted_slice_456[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_458 = tensor.insert_slice %173 into %inserted_slice_457[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_459 = tensor.insert_slice %180 into %inserted_slice_458[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_460 = tensor.insert_slice %187 into %inserted_slice_459[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_461 = tensor.insert_slice %194 into %inserted_slice_460[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_462 = tensor.insert_slice %201 into %inserted_slice_461[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_463 = tensor.insert_slice %208 into %inserted_slice_462[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_464 = tensor.insert_slice %215 into %inserted_slice_463[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_465 = tensor.insert_slice %222 into %inserted_slice_464[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_466 = tensor.insert_slice %229 into %inserted_slice_465[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_467 = tensor.insert_slice %236 into %inserted_slice_466[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_468 = tensor.insert_slice %243 into %inserted_slice_467[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_469 = tensor.insert_slice %250 into %inserted_slice_468[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_470 = tensor.insert_slice %257 into %inserted_slice_469[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_471 = tensor.insert_slice %264 into %inserted_slice_470[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %266 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_471, %cst_71, %cst_70, %cst_70, %cst_71 : tensor<1x736x2x2xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>) outs(%inserted_slice_471 : tensor<1x736x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x736x2x2xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x736x2x2xf32>) outs(%265 : tensor<1x736x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x736x2x2xf32>
    %268 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_69 : tensor<1x736x2x2xf32>, tensor<128x736x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %269 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%268 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_472 = tensor.pad %270 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_472, %cst_68 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %272 = tensor.empty() : tensor<1x768x2x2xf32>
    %inserted_slice_473 = tensor.insert_slice %156 into %272[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_474 = tensor.insert_slice %166 into %inserted_slice_473[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_475 = tensor.insert_slice %173 into %inserted_slice_474[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_476 = tensor.insert_slice %180 into %inserted_slice_475[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_477 = tensor.insert_slice %187 into %inserted_slice_476[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_478 = tensor.insert_slice %194 into %inserted_slice_477[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_479 = tensor.insert_slice %201 into %inserted_slice_478[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_480 = tensor.insert_slice %208 into %inserted_slice_479[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_481 = tensor.insert_slice %215 into %inserted_slice_480[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_482 = tensor.insert_slice %222 into %inserted_slice_481[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_483 = tensor.insert_slice %229 into %inserted_slice_482[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_484 = tensor.insert_slice %236 into %inserted_slice_483[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_485 = tensor.insert_slice %243 into %inserted_slice_484[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_486 = tensor.insert_slice %250 into %inserted_slice_485[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_487 = tensor.insert_slice %257 into %inserted_slice_486[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_488 = tensor.insert_slice %264 into %inserted_slice_487[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_489 = tensor.insert_slice %271 into %inserted_slice_488[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %273 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_489, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%inserted_slice_489 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x768x2x2xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x768x2x2xf32>) outs(%272 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x768x2x2xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_65 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %276 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%275 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_490 = tensor.pad %277 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_490, %cst_64 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %279 = tensor.empty() : tensor<1x800x2x2xf32>
    %inserted_slice_491 = tensor.insert_slice %156 into %279[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_492 = tensor.insert_slice %166 into %inserted_slice_491[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_493 = tensor.insert_slice %173 into %inserted_slice_492[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_494 = tensor.insert_slice %180 into %inserted_slice_493[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_495 = tensor.insert_slice %187 into %inserted_slice_494[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_496 = tensor.insert_slice %194 into %inserted_slice_495[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_497 = tensor.insert_slice %201 into %inserted_slice_496[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_498 = tensor.insert_slice %208 into %inserted_slice_497[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_499 = tensor.insert_slice %215 into %inserted_slice_498[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_500 = tensor.insert_slice %222 into %inserted_slice_499[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_501 = tensor.insert_slice %229 into %inserted_slice_500[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_502 = tensor.insert_slice %236 into %inserted_slice_501[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_503 = tensor.insert_slice %243 into %inserted_slice_502[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_504 = tensor.insert_slice %250 into %inserted_slice_503[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_505 = tensor.insert_slice %257 into %inserted_slice_504[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_506 = tensor.insert_slice %264 into %inserted_slice_505[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_507 = tensor.insert_slice %271 into %inserted_slice_506[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_508 = tensor.insert_slice %278 into %inserted_slice_507[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_508, %cst_63, %cst_62, %cst_62, %cst_63 : tensor<1x800x2x2xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>) outs(%inserted_slice_508 : tensor<1x800x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x800x2x2xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x800x2x2xf32>) outs(%279 : tensor<1x800x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x800x2x2xf32>
    %282 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%281, %cst_61 : tensor<1x800x2x2xf32>, tensor<128x800x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %283 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%282 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_509 = tensor.pad %284 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_509, %cst_60 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %286 = tensor.empty() : tensor<1x832x2x2xf32>
    %inserted_slice_510 = tensor.insert_slice %156 into %286[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_511 = tensor.insert_slice %166 into %inserted_slice_510[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_512 = tensor.insert_slice %173 into %inserted_slice_511[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_513 = tensor.insert_slice %180 into %inserted_slice_512[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_514 = tensor.insert_slice %187 into %inserted_slice_513[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_515 = tensor.insert_slice %194 into %inserted_slice_514[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_516 = tensor.insert_slice %201 into %inserted_slice_515[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_517 = tensor.insert_slice %208 into %inserted_slice_516[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_518 = tensor.insert_slice %215 into %inserted_slice_517[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_519 = tensor.insert_slice %222 into %inserted_slice_518[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_520 = tensor.insert_slice %229 into %inserted_slice_519[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_521 = tensor.insert_slice %236 into %inserted_slice_520[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_522 = tensor.insert_slice %243 into %inserted_slice_521[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_523 = tensor.insert_slice %250 into %inserted_slice_522[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_524 = tensor.insert_slice %257 into %inserted_slice_523[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_525 = tensor.insert_slice %264 into %inserted_slice_524[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_526 = tensor.insert_slice %271 into %inserted_slice_525[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_527 = tensor.insert_slice %278 into %inserted_slice_526[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_528 = tensor.insert_slice %285 into %inserted_slice_527[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %287 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_528, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x832x2x2xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>) outs(%inserted_slice_528 : tensor<1x832x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x832x2x2xf32>
    %288 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x832x2x2xf32>) outs(%286 : tensor<1x832x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x832x2x2xf32>
    %289 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%288, %cst_57 : tensor<1x832x2x2xf32>, tensor<128x832x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %290 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%289 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_529 = tensor.pad %291 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %292 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_529, %cst_56 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %293 = tensor.empty() : tensor<1x864x2x2xf32>
    %inserted_slice_530 = tensor.insert_slice %156 into %293[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_531 = tensor.insert_slice %166 into %inserted_slice_530[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_532 = tensor.insert_slice %173 into %inserted_slice_531[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_533 = tensor.insert_slice %180 into %inserted_slice_532[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_534 = tensor.insert_slice %187 into %inserted_slice_533[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_535 = tensor.insert_slice %194 into %inserted_slice_534[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_536 = tensor.insert_slice %201 into %inserted_slice_535[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_537 = tensor.insert_slice %208 into %inserted_slice_536[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_538 = tensor.insert_slice %215 into %inserted_slice_537[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_539 = tensor.insert_slice %222 into %inserted_slice_538[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_540 = tensor.insert_slice %229 into %inserted_slice_539[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_541 = tensor.insert_slice %236 into %inserted_slice_540[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_542 = tensor.insert_slice %243 into %inserted_slice_541[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_543 = tensor.insert_slice %250 into %inserted_slice_542[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_544 = tensor.insert_slice %257 into %inserted_slice_543[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_545 = tensor.insert_slice %264 into %inserted_slice_544[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_546 = tensor.insert_slice %271 into %inserted_slice_545[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_547 = tensor.insert_slice %278 into %inserted_slice_546[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_548 = tensor.insert_slice %285 into %inserted_slice_547[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_549 = tensor.insert_slice %292 into %inserted_slice_548[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_549, %cst_55, %cst_54, %cst_54, %cst_55 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%inserted_slice_549 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x864x2x2xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x864x2x2xf32>) outs(%293 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x864x2x2xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_53 : tensor<1x864x2x2xf32>, tensor<128x864x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%296 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_550 = tensor.pad %298 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_550, %cst_52 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %300 = tensor.empty() : tensor<1x896x2x2xf32>
    %inserted_slice_551 = tensor.insert_slice %156 into %300[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_552 = tensor.insert_slice %166 into %inserted_slice_551[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_553 = tensor.insert_slice %173 into %inserted_slice_552[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_554 = tensor.insert_slice %180 into %inserted_slice_553[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_555 = tensor.insert_slice %187 into %inserted_slice_554[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_556 = tensor.insert_slice %194 into %inserted_slice_555[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_557 = tensor.insert_slice %201 into %inserted_slice_556[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_558 = tensor.insert_slice %208 into %inserted_slice_557[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_559 = tensor.insert_slice %215 into %inserted_slice_558[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_560 = tensor.insert_slice %222 into %inserted_slice_559[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_561 = tensor.insert_slice %229 into %inserted_slice_560[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_562 = tensor.insert_slice %236 into %inserted_slice_561[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_563 = tensor.insert_slice %243 into %inserted_slice_562[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_564 = tensor.insert_slice %250 into %inserted_slice_563[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_565 = tensor.insert_slice %257 into %inserted_slice_564[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_566 = tensor.insert_slice %264 into %inserted_slice_565[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_567 = tensor.insert_slice %271 into %inserted_slice_566[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_568 = tensor.insert_slice %278 into %inserted_slice_567[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_569 = tensor.insert_slice %285 into %inserted_slice_568[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_570 = tensor.insert_slice %292 into %inserted_slice_569[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_571 = tensor.insert_slice %299 into %inserted_slice_570[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_571, %cst_51, %cst_50, %cst_50, %cst_51 : tensor<1x896x2x2xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>) outs(%inserted_slice_571 : tensor<1x896x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x896x2x2xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x896x2x2xf32>) outs(%300 : tensor<1x896x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x896x2x2xf32>
    %303 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%302, %cst_49 : tensor<1x896x2x2xf32>, tensor<128x896x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %304 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%303 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_572 = tensor.pad %305 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_572, %cst_48 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %307 = tensor.empty() : tensor<1x928x2x2xf32>
    %inserted_slice_573 = tensor.insert_slice %156 into %307[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_574 = tensor.insert_slice %166 into %inserted_slice_573[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_575 = tensor.insert_slice %173 into %inserted_slice_574[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_576 = tensor.insert_slice %180 into %inserted_slice_575[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_577 = tensor.insert_slice %187 into %inserted_slice_576[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_578 = tensor.insert_slice %194 into %inserted_slice_577[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_579 = tensor.insert_slice %201 into %inserted_slice_578[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_580 = tensor.insert_slice %208 into %inserted_slice_579[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_581 = tensor.insert_slice %215 into %inserted_slice_580[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_582 = tensor.insert_slice %222 into %inserted_slice_581[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_583 = tensor.insert_slice %229 into %inserted_slice_582[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_584 = tensor.insert_slice %236 into %inserted_slice_583[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_585 = tensor.insert_slice %243 into %inserted_slice_584[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_586 = tensor.insert_slice %250 into %inserted_slice_585[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_587 = tensor.insert_slice %257 into %inserted_slice_586[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_588 = tensor.insert_slice %264 into %inserted_slice_587[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_589 = tensor.insert_slice %271 into %inserted_slice_588[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_590 = tensor.insert_slice %278 into %inserted_slice_589[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_591 = tensor.insert_slice %285 into %inserted_slice_590[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_592 = tensor.insert_slice %292 into %inserted_slice_591[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_593 = tensor.insert_slice %299 into %inserted_slice_592[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_594 = tensor.insert_slice %306 into %inserted_slice_593[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_594, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x928x2x2xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>) outs(%inserted_slice_594 : tensor<1x928x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x928x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x928x2x2xf32>) outs(%307 : tensor<1x928x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x928x2x2xf32>
    %310 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %cst_45 : tensor<1x928x2x2xf32>, tensor<128x928x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %311 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%310 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %312 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_595 = tensor.pad %312 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_595, %cst_44 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %314 = tensor.empty() : tensor<1x960x2x2xf32>
    %inserted_slice_596 = tensor.insert_slice %156 into %314[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_597 = tensor.insert_slice %166 into %inserted_slice_596[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_598 = tensor.insert_slice %173 into %inserted_slice_597[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_599 = tensor.insert_slice %180 into %inserted_slice_598[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_600 = tensor.insert_slice %187 into %inserted_slice_599[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_601 = tensor.insert_slice %194 into %inserted_slice_600[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_602 = tensor.insert_slice %201 into %inserted_slice_601[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_603 = tensor.insert_slice %208 into %inserted_slice_602[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_604 = tensor.insert_slice %215 into %inserted_slice_603[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_605 = tensor.insert_slice %222 into %inserted_slice_604[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_606 = tensor.insert_slice %229 into %inserted_slice_605[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_607 = tensor.insert_slice %236 into %inserted_slice_606[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_608 = tensor.insert_slice %243 into %inserted_slice_607[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_609 = tensor.insert_slice %250 into %inserted_slice_608[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_610 = tensor.insert_slice %257 into %inserted_slice_609[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_611 = tensor.insert_slice %264 into %inserted_slice_610[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_612 = tensor.insert_slice %271 into %inserted_slice_611[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_613 = tensor.insert_slice %278 into %inserted_slice_612[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_614 = tensor.insert_slice %285 into %inserted_slice_613[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_615 = tensor.insert_slice %292 into %inserted_slice_614[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_616 = tensor.insert_slice %299 into %inserted_slice_615[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_617 = tensor.insert_slice %306 into %inserted_slice_616[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_618 = tensor.insert_slice %313 into %inserted_slice_617[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_618, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%inserted_slice_618 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x960x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x960x2x2xf32>) outs(%314 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x960x2x2xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%316, %cst_41 : tensor<1x960x2x2xf32>, tensor<128x960x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%317 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_619 = tensor.pad %319 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_619, %cst_40 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %321 = tensor.empty() : tensor<1x992x2x2xf32>
    %inserted_slice_620 = tensor.insert_slice %156 into %321[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_621 = tensor.insert_slice %166 into %inserted_slice_620[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_622 = tensor.insert_slice %173 into %inserted_slice_621[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_623 = tensor.insert_slice %180 into %inserted_slice_622[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_624 = tensor.insert_slice %187 into %inserted_slice_623[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_625 = tensor.insert_slice %194 into %inserted_slice_624[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_626 = tensor.insert_slice %201 into %inserted_slice_625[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_627 = tensor.insert_slice %208 into %inserted_slice_626[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_628 = tensor.insert_slice %215 into %inserted_slice_627[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_629 = tensor.insert_slice %222 into %inserted_slice_628[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_630 = tensor.insert_slice %229 into %inserted_slice_629[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_631 = tensor.insert_slice %236 into %inserted_slice_630[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_632 = tensor.insert_slice %243 into %inserted_slice_631[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_633 = tensor.insert_slice %250 into %inserted_slice_632[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_634 = tensor.insert_slice %257 into %inserted_slice_633[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_635 = tensor.insert_slice %264 into %inserted_slice_634[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_636 = tensor.insert_slice %271 into %inserted_slice_635[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_637 = tensor.insert_slice %278 into %inserted_slice_636[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_638 = tensor.insert_slice %285 into %inserted_slice_637[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_639 = tensor.insert_slice %292 into %inserted_slice_638[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_640 = tensor.insert_slice %299 into %inserted_slice_639[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_641 = tensor.insert_slice %306 into %inserted_slice_640[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_642 = tensor.insert_slice %313 into %inserted_slice_641[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_643 = tensor.insert_slice %320 into %inserted_slice_642[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_643, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x992x2x2xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>) outs(%inserted_slice_643 : tensor<1x992x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x992x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x992x2x2xf32>) outs(%321 : tensor<1x992x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x992x2x2xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%323, %cst_37 : tensor<1x992x2x2xf32>, tensor<128x992x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%324 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_644 = tensor.pad %326 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_644, %cst_36 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %328 = tensor.empty() : tensor<1x1024x2x2xf32>
    %inserted_slice_645 = tensor.insert_slice %156 into %328[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_646 = tensor.insert_slice %166 into %inserted_slice_645[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_647 = tensor.insert_slice %173 into %inserted_slice_646[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_648 = tensor.insert_slice %180 into %inserted_slice_647[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_649 = tensor.insert_slice %187 into %inserted_slice_648[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_650 = tensor.insert_slice %194 into %inserted_slice_649[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_651 = tensor.insert_slice %201 into %inserted_slice_650[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_652 = tensor.insert_slice %208 into %inserted_slice_651[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_653 = tensor.insert_slice %215 into %inserted_slice_652[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_654 = tensor.insert_slice %222 into %inserted_slice_653[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_655 = tensor.insert_slice %229 into %inserted_slice_654[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_656 = tensor.insert_slice %236 into %inserted_slice_655[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_657 = tensor.insert_slice %243 into %inserted_slice_656[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_658 = tensor.insert_slice %250 into %inserted_slice_657[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_659 = tensor.insert_slice %257 into %inserted_slice_658[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_660 = tensor.insert_slice %264 into %inserted_slice_659[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_661 = tensor.insert_slice %271 into %inserted_slice_660[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_662 = tensor.insert_slice %278 into %inserted_slice_661[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_663 = tensor.insert_slice %285 into %inserted_slice_662[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_664 = tensor.insert_slice %292 into %inserted_slice_663[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_665 = tensor.insert_slice %299 into %inserted_slice_664[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_666 = tensor.insert_slice %306 into %inserted_slice_665[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_667 = tensor.insert_slice %313 into %inserted_slice_666[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_668 = tensor.insert_slice %320 into %inserted_slice_667[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_669 = tensor.insert_slice %327 into %inserted_slice_668[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_669, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%inserted_slice_669 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x1024x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x2x2xf32>) outs(%328 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x1024x2x2xf32>
    %331 = linalg.fill ins(%cst_183 : f32) outs(%216 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %332 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_33 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%331 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %333 = tensor.empty() : tensor<1x512x1x1xf32>
    %334 = linalg.fill ins(%cst_183 : f32) outs(%333 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %335 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%332, %60 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%334 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x512x1x1xf32>) outs(%333 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.divf %in, %cst_186 : f32
      linalg.yield %464 : f32
    } -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %337 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst_116, %cst_115, %cst_115, %cst_116 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%336 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x512x1x1xf32>
    %338 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x512x1x1xf32>) outs(%333 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x512x1x1xf32>
    %339 = tensor.empty() : tensor<1x128x1x1xf32>
    %340 = linalg.fill ins(%cst_183 : f32) outs(%339 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %341 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%338, %cst_32 : tensor<1x512x1x1xf32>, tensor<128x512x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %342 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%341 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_670 = tensor.pad %343 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %344 = tensor.empty() : tensor<1x32x1x1xf32>
    %345 = linalg.fill ins(%cst_183 : f32) outs(%344 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %346 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_670, %cst_31 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %347 = tensor.empty() : tensor<1x544x1x1xf32>
    %inserted_slice_671 = tensor.insert_slice %336 into %347[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x544x1x1xf32>
    %inserted_slice_672 = tensor.insert_slice %346 into %inserted_slice_671[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x544x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %348 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_672, %cst_95, %cst_94, %cst_94, %cst_95 : tensor<1x544x1x1xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>) outs(%inserted_slice_672 : tensor<1x544x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x544x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x544x1x1xf32>) outs(%347 : tensor<1x544x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x544x1x1xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_30 : tensor<1x544x1x1xf32>, tensor<128x544x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %351 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%350 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_673 = tensor.pad %352 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_673, %cst_29 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %354 = tensor.empty() : tensor<1x576x1x1xf32>
    %inserted_slice_674 = tensor.insert_slice %336 into %354[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x576x1x1xf32>
    %inserted_slice_675 = tensor.insert_slice %346 into %inserted_slice_674[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x576x1x1xf32>
    %inserted_slice_676 = tensor.insert_slice %353 into %inserted_slice_675[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_676, %cst_91, %cst_90, %cst_90, %cst_91 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%inserted_slice_676 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x576x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x576x1x1xf32>) outs(%354 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x576x1x1xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %cst_28 : tensor<1x576x1x1xf32>, tensor<128x576x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%357 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %359 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_677 = tensor.pad %359 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %360 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_677, %cst_27 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %361 = tensor.empty() : tensor<1x608x1x1xf32>
    %inserted_slice_678 = tensor.insert_slice %336 into %361[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x608x1x1xf32>
    %inserted_slice_679 = tensor.insert_slice %346 into %inserted_slice_678[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x608x1x1xf32>
    %inserted_slice_680 = tensor.insert_slice %353 into %inserted_slice_679[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x608x1x1xf32>
    %inserted_slice_681 = tensor.insert_slice %360 into %inserted_slice_680[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x608x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %362 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_681, %cst_87, %cst_86, %cst_86, %cst_87 : tensor<1x608x1x1xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>) outs(%inserted_slice_681 : tensor<1x608x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x608x1x1xf32>
    %363 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x608x1x1xf32>) outs(%361 : tensor<1x608x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x608x1x1xf32>
    %364 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%363, %cst_26 : tensor<1x608x1x1xf32>, tensor<128x608x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %365 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%364 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %366 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_682 = tensor.pad %366 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %367 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_682, %cst_25 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %368 = tensor.empty() : tensor<1x640x1x1xf32>
    %inserted_slice_683 = tensor.insert_slice %336 into %368[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x640x1x1xf32>
    %inserted_slice_684 = tensor.insert_slice %346 into %inserted_slice_683[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x640x1x1xf32>
    %inserted_slice_685 = tensor.insert_slice %353 into %inserted_slice_684[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x640x1x1xf32>
    %inserted_slice_686 = tensor.insert_slice %360 into %inserted_slice_685[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x640x1x1xf32>
    %inserted_slice_687 = tensor.insert_slice %367 into %inserted_slice_686[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %369 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_687, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%inserted_slice_687 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x640x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x640x1x1xf32>) outs(%368 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x640x1x1xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_24 : tensor<1x640x1x1xf32>, tensor<128x640x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %372 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%371 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_688 = tensor.pad %373 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %374 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_688, %cst_23 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %375 = tensor.empty() : tensor<1x672x1x1xf32>
    %inserted_slice_689 = tensor.insert_slice %336 into %375[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x672x1x1xf32>
    %inserted_slice_690 = tensor.insert_slice %346 into %inserted_slice_689[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x672x1x1xf32>
    %inserted_slice_691 = tensor.insert_slice %353 into %inserted_slice_690[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x672x1x1xf32>
    %inserted_slice_692 = tensor.insert_slice %360 into %inserted_slice_691[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x672x1x1xf32>
    %inserted_slice_693 = tensor.insert_slice %367 into %inserted_slice_692[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x672x1x1xf32>
    %inserted_slice_694 = tensor.insert_slice %374 into %inserted_slice_693[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x672x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_694, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x672x1x1xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%inserted_slice_694 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x672x1x1xf32>
    %377 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x672x1x1xf32>) outs(%375 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x672x1x1xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_22 : tensor<1x672x1x1xf32>, tensor<128x672x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%378 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %380 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_695 = tensor.pad %380 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %381 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_695, %cst_21 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %382 = tensor.empty() : tensor<1x704x1x1xf32>
    %inserted_slice_696 = tensor.insert_slice %336 into %382[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x704x1x1xf32>
    %inserted_slice_697 = tensor.insert_slice %346 into %inserted_slice_696[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x704x1x1xf32>
    %inserted_slice_698 = tensor.insert_slice %353 into %inserted_slice_697[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x704x1x1xf32>
    %inserted_slice_699 = tensor.insert_slice %360 into %inserted_slice_698[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x704x1x1xf32>
    %inserted_slice_700 = tensor.insert_slice %367 into %inserted_slice_699[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x704x1x1xf32>
    %inserted_slice_701 = tensor.insert_slice %374 into %inserted_slice_700[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x704x1x1xf32>
    %inserted_slice_702 = tensor.insert_slice %381 into %inserted_slice_701[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x704x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %383 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_702, %cst_75, %cst_74, %cst_74, %cst_75 : tensor<1x704x1x1xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>) outs(%inserted_slice_702 : tensor<1x704x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x704x1x1xf32>
    %384 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x704x1x1xf32>) outs(%382 : tensor<1x704x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x704x1x1xf32>
    %385 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%384, %cst_20 : tensor<1x704x1x1xf32>, tensor<128x704x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %386 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%385 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_703 = tensor.pad %387 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %388 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_703, %cst_19 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %389 = tensor.empty() : tensor<1x736x1x1xf32>
    %inserted_slice_704 = tensor.insert_slice %336 into %389[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_705 = tensor.insert_slice %346 into %inserted_slice_704[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_706 = tensor.insert_slice %353 into %inserted_slice_705[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_707 = tensor.insert_slice %360 into %inserted_slice_706[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_708 = tensor.insert_slice %367 into %inserted_slice_707[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_709 = tensor.insert_slice %374 into %inserted_slice_708[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_710 = tensor.insert_slice %381 into %inserted_slice_709[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    %inserted_slice_711 = tensor.insert_slice %388 into %inserted_slice_710[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x736x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %390 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_711, %cst_71, %cst_70, %cst_70, %cst_71 : tensor<1x736x1x1xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>) outs(%inserted_slice_711 : tensor<1x736x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x736x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x736x1x1xf32>) outs(%389 : tensor<1x736x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x736x1x1xf32>
    %392 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %cst_18 : tensor<1x736x1x1xf32>, tensor<128x736x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %393 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%392 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %394 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_712 = tensor.pad %394 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %395 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_712, %cst_17 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %396 = tensor.empty() : tensor<1x768x1x1xf32>
    %inserted_slice_713 = tensor.insert_slice %336 into %396[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_714 = tensor.insert_slice %346 into %inserted_slice_713[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_715 = tensor.insert_slice %353 into %inserted_slice_714[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_716 = tensor.insert_slice %360 into %inserted_slice_715[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_717 = tensor.insert_slice %367 into %inserted_slice_716[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_718 = tensor.insert_slice %374 into %inserted_slice_717[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_719 = tensor.insert_slice %381 into %inserted_slice_718[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_720 = tensor.insert_slice %388 into %inserted_slice_719[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    %inserted_slice_721 = tensor.insert_slice %395 into %inserted_slice_720[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x768x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %397 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_721, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x768x1x1xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%inserted_slice_721 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x768x1x1xf32>
    %398 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397 : tensor<1x768x1x1xf32>) outs(%396 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x768x1x1xf32>
    %399 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%398, %cst_16 : tensor<1x768x1x1xf32>, tensor<128x768x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %400 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%399 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_722 = tensor.pad %401 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %402 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_722, %cst_15 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %403 = tensor.empty() : tensor<1x800x1x1xf32>
    %inserted_slice_723 = tensor.insert_slice %336 into %403[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_724 = tensor.insert_slice %346 into %inserted_slice_723[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_725 = tensor.insert_slice %353 into %inserted_slice_724[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_726 = tensor.insert_slice %360 into %inserted_slice_725[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_727 = tensor.insert_slice %367 into %inserted_slice_726[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_728 = tensor.insert_slice %374 into %inserted_slice_727[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_729 = tensor.insert_slice %381 into %inserted_slice_728[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_730 = tensor.insert_slice %388 into %inserted_slice_729[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_731 = tensor.insert_slice %395 into %inserted_slice_730[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    %inserted_slice_732 = tensor.insert_slice %402 into %inserted_slice_731[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x800x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %404 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_732, %cst_63, %cst_62, %cst_62, %cst_63 : tensor<1x800x1x1xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>) outs(%inserted_slice_732 : tensor<1x800x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x800x1x1xf32>
    %405 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404 : tensor<1x800x1x1xf32>) outs(%403 : tensor<1x800x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x800x1x1xf32>
    %406 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%405, %cst_14 : tensor<1x800x1x1xf32>, tensor<128x800x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %407 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%406 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_733 = tensor.pad %408 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %409 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_733, %cst_13 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %410 = tensor.empty() : tensor<1x832x1x1xf32>
    %inserted_slice_734 = tensor.insert_slice %336 into %410[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_735 = tensor.insert_slice %346 into %inserted_slice_734[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_736 = tensor.insert_slice %353 into %inserted_slice_735[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_737 = tensor.insert_slice %360 into %inserted_slice_736[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_738 = tensor.insert_slice %367 into %inserted_slice_737[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_739 = tensor.insert_slice %374 into %inserted_slice_738[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_740 = tensor.insert_slice %381 into %inserted_slice_739[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_741 = tensor.insert_slice %388 into %inserted_slice_740[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_742 = tensor.insert_slice %395 into %inserted_slice_741[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_743 = tensor.insert_slice %402 into %inserted_slice_742[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    %inserted_slice_744 = tensor.insert_slice %409 into %inserted_slice_743[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x832x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %411 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_744, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x832x1x1xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>) outs(%inserted_slice_744 : tensor<1x832x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x832x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x832x1x1xf32>) outs(%410 : tensor<1x832x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x832x1x1xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %cst_12 : tensor<1x832x1x1xf32>, tensor<128x832x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %414 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%413 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %415 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_745 = tensor.pad %415 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %416 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_745, %cst_11 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %417 = tensor.empty() : tensor<1x864x1x1xf32>
    %inserted_slice_746 = tensor.insert_slice %336 into %417[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_747 = tensor.insert_slice %346 into %inserted_slice_746[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_748 = tensor.insert_slice %353 into %inserted_slice_747[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_749 = tensor.insert_slice %360 into %inserted_slice_748[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_750 = tensor.insert_slice %367 into %inserted_slice_749[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_751 = tensor.insert_slice %374 into %inserted_slice_750[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_752 = tensor.insert_slice %381 into %inserted_slice_751[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_753 = tensor.insert_slice %388 into %inserted_slice_752[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_754 = tensor.insert_slice %395 into %inserted_slice_753[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_755 = tensor.insert_slice %402 into %inserted_slice_754[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_756 = tensor.insert_slice %409 into %inserted_slice_755[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    %inserted_slice_757 = tensor.insert_slice %416 into %inserted_slice_756[0, 832, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x864x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %418 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_757, %cst_55, %cst_54, %cst_54, %cst_55 : tensor<1x864x1x1xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%inserted_slice_757 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x864x1x1xf32>
    %419 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x864x1x1xf32>) outs(%417 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x864x1x1xf32>
    %420 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%419, %cst_10 : tensor<1x864x1x1xf32>, tensor<128x864x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %421 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%420 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %422 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_758 = tensor.pad %422 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %423 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_758, %cst_9 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %424 = tensor.empty() : tensor<1x896x1x1xf32>
    %inserted_slice_759 = tensor.insert_slice %336 into %424[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_760 = tensor.insert_slice %346 into %inserted_slice_759[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_761 = tensor.insert_slice %353 into %inserted_slice_760[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_762 = tensor.insert_slice %360 into %inserted_slice_761[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_763 = tensor.insert_slice %367 into %inserted_slice_762[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_764 = tensor.insert_slice %374 into %inserted_slice_763[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_765 = tensor.insert_slice %381 into %inserted_slice_764[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_766 = tensor.insert_slice %388 into %inserted_slice_765[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_767 = tensor.insert_slice %395 into %inserted_slice_766[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_768 = tensor.insert_slice %402 into %inserted_slice_767[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_769 = tensor.insert_slice %409 into %inserted_slice_768[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_770 = tensor.insert_slice %416 into %inserted_slice_769[0, 832, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    %inserted_slice_771 = tensor.insert_slice %423 into %inserted_slice_770[0, 864, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x896x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %425 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_771, %cst_51, %cst_50, %cst_50, %cst_51 : tensor<1x896x1x1xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>) outs(%inserted_slice_771 : tensor<1x896x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x896x1x1xf32>
    %426 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425 : tensor<1x896x1x1xf32>) outs(%424 : tensor<1x896x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x896x1x1xf32>
    %427 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%426, %cst_8 : tensor<1x896x1x1xf32>, tensor<128x896x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %428 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%427 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %429 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_772 = tensor.pad %429 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %430 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_772, %cst_7 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %431 = tensor.empty() : tensor<1x928x1x1xf32>
    %inserted_slice_773 = tensor.insert_slice %336 into %431[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_774 = tensor.insert_slice %346 into %inserted_slice_773[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_775 = tensor.insert_slice %353 into %inserted_slice_774[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_776 = tensor.insert_slice %360 into %inserted_slice_775[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_777 = tensor.insert_slice %367 into %inserted_slice_776[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_778 = tensor.insert_slice %374 into %inserted_slice_777[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_779 = tensor.insert_slice %381 into %inserted_slice_778[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_780 = tensor.insert_slice %388 into %inserted_slice_779[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_781 = tensor.insert_slice %395 into %inserted_slice_780[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_782 = tensor.insert_slice %402 into %inserted_slice_781[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_783 = tensor.insert_slice %409 into %inserted_slice_782[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_784 = tensor.insert_slice %416 into %inserted_slice_783[0, 832, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_785 = tensor.insert_slice %423 into %inserted_slice_784[0, 864, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_786 = tensor.insert_slice %430 into %inserted_slice_785[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %432 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_786, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x928x1x1xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>) outs(%inserted_slice_786 : tensor<1x928x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x928x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x928x1x1xf32>) outs(%431 : tensor<1x928x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x928x1x1xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%433, %cst_6 : tensor<1x928x1x1xf32>, tensor<128x928x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%434 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_787 = tensor.pad %436 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_787, %cst_5 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %438 = tensor.empty() : tensor<1x960x1x1xf32>
    %inserted_slice_788 = tensor.insert_slice %336 into %438[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_789 = tensor.insert_slice %346 into %inserted_slice_788[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_790 = tensor.insert_slice %353 into %inserted_slice_789[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_791 = tensor.insert_slice %360 into %inserted_slice_790[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_792 = tensor.insert_slice %367 into %inserted_slice_791[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_793 = tensor.insert_slice %374 into %inserted_slice_792[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_794 = tensor.insert_slice %381 into %inserted_slice_793[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_795 = tensor.insert_slice %388 into %inserted_slice_794[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_796 = tensor.insert_slice %395 into %inserted_slice_795[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_797 = tensor.insert_slice %402 into %inserted_slice_796[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_798 = tensor.insert_slice %409 into %inserted_slice_797[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_799 = tensor.insert_slice %416 into %inserted_slice_798[0, 832, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_800 = tensor.insert_slice %423 into %inserted_slice_799[0, 864, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_801 = tensor.insert_slice %430 into %inserted_slice_800[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_802 = tensor.insert_slice %437 into %inserted_slice_801[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %439 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_802, %cst_43, %cst_42, %cst_42, %cst_43 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%inserted_slice_802 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x960x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x960x1x1xf32>) outs(%438 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x960x1x1xf32>
    %441 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_4 : tensor<1x960x1x1xf32>, tensor<128x960x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %442 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%441 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_803 = tensor.pad %443 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %444 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_803, %cst_3 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %445 = tensor.empty() : tensor<1x992x1x1xf32>
    %inserted_slice_804 = tensor.insert_slice %336 into %445[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_805 = tensor.insert_slice %346 into %inserted_slice_804[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_806 = tensor.insert_slice %353 into %inserted_slice_805[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_807 = tensor.insert_slice %360 into %inserted_slice_806[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_808 = tensor.insert_slice %367 into %inserted_slice_807[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_809 = tensor.insert_slice %374 into %inserted_slice_808[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_810 = tensor.insert_slice %381 into %inserted_slice_809[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_811 = tensor.insert_slice %388 into %inserted_slice_810[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_812 = tensor.insert_slice %395 into %inserted_slice_811[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_813 = tensor.insert_slice %402 into %inserted_slice_812[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_814 = tensor.insert_slice %409 into %inserted_slice_813[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_815 = tensor.insert_slice %416 into %inserted_slice_814[0, 832, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_816 = tensor.insert_slice %423 into %inserted_slice_815[0, 864, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_817 = tensor.insert_slice %430 into %inserted_slice_816[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_818 = tensor.insert_slice %437 into %inserted_slice_817[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_819 = tensor.insert_slice %444 into %inserted_slice_818[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %446 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_819, %cst_39, %cst_38, %cst_38, %cst_39 : tensor<1x992x1x1xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>) outs(%inserted_slice_819 : tensor<1x992x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x992x1x1xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x992x1x1xf32>) outs(%445 : tensor<1x992x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x992x1x1xf32>
    %448 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %cst_2 : tensor<1x992x1x1xf32>, tensor<128x992x1x1xf32>) outs(%340 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %449 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%448 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x128x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x128x1x1xf32>) outs(%339 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_820 = tensor.pad %450 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_183 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %451 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_820, %cst_1 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%345 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %452 = tensor.empty() : tensor<1x1024x1x1xf32>
    %inserted_slice_821 = tensor.insert_slice %336 into %452[0, 0, 0, 0] [1, 512, 1, 1] [1, 1, 1, 1] : tensor<1x512x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_822 = tensor.insert_slice %346 into %inserted_slice_821[0, 512, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_823 = tensor.insert_slice %353 into %inserted_slice_822[0, 544, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_824 = tensor.insert_slice %360 into %inserted_slice_823[0, 576, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_825 = tensor.insert_slice %367 into %inserted_slice_824[0, 608, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_826 = tensor.insert_slice %374 into %inserted_slice_825[0, 640, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_827 = tensor.insert_slice %381 into %inserted_slice_826[0, 672, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_828 = tensor.insert_slice %388 into %inserted_slice_827[0, 704, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_829 = tensor.insert_slice %395 into %inserted_slice_828[0, 736, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_830 = tensor.insert_slice %402 into %inserted_slice_829[0, 768, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_831 = tensor.insert_slice %409 into %inserted_slice_830[0, 800, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_832 = tensor.insert_slice %416 into %inserted_slice_831[0, 832, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_833 = tensor.insert_slice %423 into %inserted_slice_832[0, 864, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_834 = tensor.insert_slice %430 into %inserted_slice_833[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_835 = tensor.insert_slice %437 into %inserted_slice_834[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_836 = tensor.insert_slice %444 into %inserted_slice_835[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_837 = tensor.insert_slice %451 into %inserted_slice_836[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %453 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_837, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%inserted_slice_837 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_838: f32, %in_839: f32, %in_840: f32, %in_841: f32, %out: f32):
      %464 = arith.truncf %cst_185 : f64 to f32
      %465 = arith.addf %in_841, %464 : f32
      %466 = math.rsqrt %465 : f32
      %467 = arith.subf %in, %in_840 : f32
      %468 = arith.mulf %467, %466 : f32
      %469 = arith.mulf %468, %in_838 : f32
      %470 = arith.addf %469, %in_839 : f32
      linalg.yield %470 : f32
    } -> tensor<1x1024x1x1xf32>
    %454 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<1x1024x1x1xf32>) outs(%452 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %464 = arith.cmpf ugt, %in, %cst_183 : f32
      %465 = arith.select %464, %in, %cst_183 : f32
      linalg.yield %465 : f32
    } -> tensor<1x1024x1x1xf32>
    %455 = linalg.fill ins(%cst_183 : f32) outs(%452 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %456 = tensor.empty() : tensor<1x1xf32>
    %457 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %456 : tensor<1x1024x1x1xf32>, tensor<1x1xf32>) outs(%455 : tensor<1x1024x1x1xf32>) -> tensor<1x1024x1x1xf32>
    %collapsed = tensor.collapse_shape %457 [[0], [1, 2, 3]] : tensor<1x1024x1x1xf32> into tensor<1x1024xf32>
    %458 = tensor.empty() : tensor<1024x1000xf32>
    %459 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1024xf32>) outs(%458 : tensor<1024x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1024x1000xf32>
    %460 = tensor.empty() : tensor<1x1000xf32>
    %461 = linalg.fill ins(%cst_183 : f32) outs(%460 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %462 = linalg.matmul ins(%collapsed, %459 : tensor<1x1024xf32>, tensor<1024x1000xf32>) outs(%461 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %463 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%462, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%460 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_838: f32, %out: f32):
      %464 = arith.addf %in, %in_838 : f32
      linalg.yield %464 : f32
    } -> tensor<1x1000xf32>
    return %463 : tensor<1x1000xf32>
  }
}
