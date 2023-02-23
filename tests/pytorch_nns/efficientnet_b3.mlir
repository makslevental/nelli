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
    %cst = arith.constant dense<0.005832e+00> : tensor<1000x1536xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1536xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1536xf32>
    %cst_3 = arith.constant dense<0.013309e+00> : tensor<1536x384x1x1xf32>
    %cst_4 = arith.constant dense<-0.004351e+00> : tensor<384x2304x1x1xf32>
    %cst_5 = arith.constant dense<0.002742e+00> : tensor<2304x96x1x1xf32>
    %cst_6 = arith.constant dense<-0.000714e+00> : tensor<96x2304x1x1xf32>
    %cst_7 = arith.constant dense<-0.018079e+00> : tensor<2304x1x3x3xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2304xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2304xf32>
    %cst_10 = arith.constant dense<-0.008965e+00> : tensor<2304x384x1x1xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_12 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_13 = arith.constant dense<-0.004211e+00> : tensor<384x1392x1x1xf32>
    %cst_14 = arith.constant dense<-0.014145e+00> : tensor<1392x58x1x1xf32>
    %cst_15 = arith.constant dense<0.001101e+00> : tensor<58x1392x1x1xf32>
    %cst_16 = arith.constant dense<0.010593e+00> : tensor<1392x1x3x3xf32>
    %cst_17 = arith.constant dense<0.010710e+00> : tensor<1392x232x1x1xf32>
    %cst_18 = arith.constant dense<0.005729e+00> : tensor<232x1392x1x1xf32>
    %cst_19 = arith.constant dense<0.013231e+00> : tensor<1392x58x1x1xf32>
    %cst_20 = arith.constant dense<-0.010140e+00> : tensor<58x1392x1x1xf32>
    %cst_21 = arith.constant dense<0.004145e+00> : tensor<1392x1x5x5xf32>
    %cst_22 = arith.constant dense<0.003248e+00> : tensor<1392x232x1x1xf32>
    %cst_23 = arith.constant dense<-0.007615e+00> : tensor<232x1392x1x1xf32>
    %cst_24 = arith.constant dense<0.025692e+00> : tensor<1392x58x1x1xf32>
    %cst_25 = arith.constant dense<0.010830e+00> : tensor<58x1392x1x1xf32>
    %cst_26 = arith.constant dense<-0.012148e+00> : tensor<1392x1x5x5xf32>
    %cst_27 = arith.constant dense<-0.009996e+00> : tensor<1392x232x1x1xf32>
    %cst_28 = arith.constant dense<-0.001903e+00> : tensor<232x1392x1x1xf32>
    %cst_29 = arith.constant dense<0.005918e+00> : tensor<1392x58x1x1xf32>
    %cst_30 = arith.constant dense<-0.000462e+00> : tensor<58x1392x1x1xf32>
    %cst_31 = arith.constant dense<-0.017443e+00> : tensor<1392x1x5x5xf32>
    %cst_32 = arith.constant dense<-0.001368e+00> : tensor<1392x232x1x1xf32>
    %cst_33 = arith.constant dense<-0.011001e+00> : tensor<232x1392x1x1xf32>
    %cst_34 = arith.constant dense<-0.006459e+00> : tensor<1392x58x1x1xf32>
    %cst_35 = arith.constant dense<-0.009915e+00> : tensor<58x1392x1x1xf32>
    %cst_36 = arith.constant dense<-0.003867e+00> : tensor<1392x1x5x5xf32>
    %cst_37 = arith.constant dense<0.001779e+00> : tensor<1392x232x1x1xf32>
    %cst_38 = arith.constant dense<-0.005740e+00> : tensor<232x1392x1x1xf32>
    %cst_39 = arith.constant dense<-0.000113e+00> : tensor<1392x58x1x1xf32>
    %cst_40 = arith.constant dense<0.004069e+00> : tensor<58x1392x1x1xf32>
    %cst_41 = arith.constant dense<0.000000e+00> : tensor<58xf32>
    %cst_42 = arith.constant dense<0.000899e+00> : tensor<1392x1x5x5xf32>
    %cst_43 = arith.constant dense<0.000000e+00> : tensor<1392xf32>
    %cst_44 = arith.constant dense<1.000000e+00> : tensor<1392xf32>
    %cst_45 = arith.constant dense<0.001435e+00> : tensor<1392x232x1x1xf32>
    %cst_46 = arith.constant dense<0.000000e+00> : tensor<232xf32>
    %cst_47 = arith.constant dense<1.000000e+00> : tensor<232xf32>
    %cst_48 = arith.constant dense<0.009556e+00> : tensor<232x816x1x1xf32>
    %cst_49 = arith.constant dense<0.013614e+00> : tensor<816x34x1x1xf32>
    %cst_50 = arith.constant dense<-0.002929e+00> : tensor<34x816x1x1xf32>
    %cst_51 = arith.constant dense<-0.001089e+00> : tensor<816x1x5x5xf32>
    %cst_52 = arith.constant dense<0.006373e+00> : tensor<816x136x1x1xf32>
    %cst_53 = arith.constant dense<-0.018117e+00> : tensor<136x816x1x1xf32>
    %cst_54 = arith.constant dense<0.006985e+00> : tensor<816x34x1x1xf32>
    %cst_55 = arith.constant dense<0.008502e+00> : tensor<34x816x1x1xf32>
    %cst_56 = arith.constant dense<0.005454e+00> : tensor<816x1x5x5xf32>
    %cst_57 = arith.constant dense<-0.004938e+00> : tensor<816x136x1x1xf32>
    %cst_58 = arith.constant dense<0.000113e+00> : tensor<136x816x1x1xf32>
    %cst_59 = arith.constant dense<0.020438e+00> : tensor<816x34x1x1xf32>
    %cst_60 = arith.constant dense<0.006883e+00> : tensor<34x816x1x1xf32>
    %cst_61 = arith.constant dense<-0.006219e+00> : tensor<816x1x5x5xf32>
    %cst_62 = arith.constant dense<-0.003657e+00> : tensor<816x136x1x1xf32>
    %cst_63 = arith.constant dense<-0.001545e+00> : tensor<136x816x1x1xf32>
    %cst_64 = arith.constant dense<-0.001140e+00> : tensor<816x34x1x1xf32>
    %cst_65 = arith.constant dense<-0.005263e+00> : tensor<34x816x1x1xf32>
    %cst_66 = arith.constant dense<0.004424e+00> : tensor<816x1x5x5xf32>
    %cst_67 = arith.constant dense<0.010201e+00> : tensor<816x136x1x1xf32>
    %cst_68 = arith.constant dense<0.000860e+00> : tensor<136x816x1x1xf32>
    %cst_69 = arith.constant dense<-0.008461e+00> : tensor<816x34x1x1xf32>
    %cst_70 = arith.constant dense<-0.001425e+00> : tensor<34x816x1x1xf32>
    %cst_71 = arith.constant dense<0.000000e+00> : tensor<34xf32>
    %cst_72 = arith.constant dense<-0.000429e+00> : tensor<816x1x5x5xf32>
    %cst_73 = arith.constant dense<0.000000e+00> : tensor<816xf32>
    %cst_74 = arith.constant dense<1.000000e+00> : tensor<816xf32>
    %cst_75 = arith.constant dense<0.007751e+00> : tensor<816x136x1x1xf32>
    %cst_76 = arith.constant dense<0.000000e+00> : tensor<136xf32>
    %cst_77 = arith.constant dense<1.000000e+00> : tensor<136xf32>
    %cst_78 = arith.constant dense<-0.006379e+00> : tensor<136x576x1x1xf32>
    %cst_79 = arith.constant dense<-0.015280e+00> : tensor<576x24x1x1xf32>
    %cst_80 = arith.constant dense<0.006891e+00> : tensor<24x576x1x1xf32>
    %cst_81 = arith.constant dense<0.004372e+00> : tensor<576x1x5x5xf32>
    %cst_82 = arith.constant dense<-0.002434e+00> : tensor<576x96x1x1xf32>
    %cst_83 = arith.constant dense<0.018316e+00> : tensor<96x576x1x1xf32>
    %cst_84 = arith.constant dense<0.008437e+00> : tensor<576x24x1x1xf32>
    %cst_85 = arith.constant dense<-0.018340e+00> : tensor<24x576x1x1xf32>
    %cst_86 = arith.constant dense<0.008411e+00> : tensor<576x1x3x3xf32>
    %cst_87 = arith.constant dense<-0.000065e+00> : tensor<576x96x1x1xf32>
    %cst_88 = arith.constant dense<-0.005232e+00> : tensor<96x576x1x1xf32>
    %cst_89 = arith.constant dense<-0.003316e+00> : tensor<576x24x1x1xf32>
    %cst_90 = arith.constant dense<-0.004493e+00> : tensor<24x576x1x1xf32>
    %cst_91 = arith.constant dense<-0.013472e+00> : tensor<576x1x3x3xf32>
    %cst_92 = arith.constant dense<0.019045e+00> : tensor<576x96x1x1xf32>
    %cst_93 = arith.constant dense<-0.002982e+00> : tensor<96x576x1x1xf32>
    %cst_94 = arith.constant dense<-0.000860e+00> : tensor<576x24x1x1xf32>
    %cst_95 = arith.constant dense<0.012941e+00> : tensor<24x576x1x1xf32>
    %cst_96 = arith.constant dense<-0.006636e+00> : tensor<576x1x3x3xf32>
    %cst_97 = arith.constant dense<0.006018e+00> : tensor<576x96x1x1xf32>
    %cst_98 = arith.constant dense<0.003709e+00> : tensor<96x576x1x1xf32>
    %cst_99 = arith.constant dense<-0.012217e+00> : tensor<576x24x1x1xf32>
    %cst_100 = arith.constant dense<0.008992e+00> : tensor<24x576x1x1xf32>
    %cst_101 = arith.constant dense<-0.007854e+00> : tensor<576x1x3x3xf32>
    %cst_102 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_103 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_104 = arith.constant dense<-0.019528e+00> : tensor<576x96x1x1xf32>
    %cst_105 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_106 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_107 = arith.constant dense<-0.001003e+00> : tensor<96x288x1x1xf32>
    %cst_108 = arith.constant dense<-0.010323e+00> : tensor<288x12x1x1xf32>
    %cst_109 = arith.constant dense<0.013970e+00> : tensor<12x288x1x1xf32>
    %cst_110 = arith.constant dense<-0.016655e+00> : tensor<288x1x3x3xf32>
    %cst_111 = arith.constant dense<-0.001949e+00> : tensor<288x48x1x1xf32>
    %cst_112 = arith.constant dense<0.002291e+00> : tensor<48x288x1x1xf32>
    %cst_113 = arith.constant dense<-0.009927e+00> : tensor<288x12x1x1xf32>
    %cst_114 = arith.constant dense<-0.006928e+00> : tensor<12x288x1x1xf32>
    %cst_115 = arith.constant dense<-0.012333e+00> : tensor<288x1x5x5xf32>
    %cst_116 = arith.constant dense<0.022394e+00> : tensor<288x48x1x1xf32>
    %cst_117 = arith.constant dense<0.007325e+00> : tensor<48x288x1x1xf32>
    %cst_118 = arith.constant dense<-0.011110e+00> : tensor<288x12x1x1xf32>
    %cst_119 = arith.constant dense<-0.007442e+00> : tensor<12x288x1x1xf32>
    %cst_120 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_121 = arith.constant dense<0.011789e+00> : tensor<288x1x5x5xf32>
    %cst_122 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_123 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_124 = arith.constant dense<0.015071e+00> : tensor<288x48x1x1xf32>
    %cst_125 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_126 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_127 = arith.constant dense<-0.004858e+00> : tensor<48x192x1x1xf32>
    %cst_128 = arith.constant dense<0.008366e+00> : tensor<192x8x1x1xf32>
    %cst_129 = arith.constant dense<0.001583e+00> : tensor<8x192x1x1xf32>
    %cst_130 = arith.constant dense<0.010872e+00> : tensor<192x1x5x5xf32>
    %cst_131 = arith.constant dense<0.005972e+00> : tensor<192x32x1x1xf32>
    %cst_132 = arith.constant dense<-0.016455e+00> : tensor<32x192x1x1xf32>
    %cst_133 = arith.constant dense<-0.005723e+00> : tensor<192x8x1x1xf32>
    %cst_134 = arith.constant dense<-0.003468e+00> : tensor<8x192x1x1xf32>
    %cst_135 = arith.constant dense<-0.002408e+00> : tensor<192x1x3x3xf32>
    %cst_136 = arith.constant dense<-0.015659e+00> : tensor<192x32x1x1xf32>
    %cst_137 = arith.constant dense<0.005466e+00> : tensor<32x192x1x1xf32>
    %cst_138 = arith.constant dense<0.014136e+00> : tensor<192x8x1x1xf32>
    %cst_139 = arith.constant dense<-0.013750e+00> : tensor<8x192x1x1xf32>
    %cst_140 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_141 = arith.constant dense<-0.001777e+00> : tensor<192x1x3x3xf32>
    %cst_142 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_143 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_144 = arith.constant dense<0.002293e+00> : tensor<192x32x1x1xf32>
    %cst_145 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_146 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_147 = arith.constant dense<-0.002627e+00> : tensor<32x144x1x1xf32>
    %cst_148 = arith.constant dense<0.017805e+00> : tensor<144x6x1x1xf32>
    %cst_149 = arith.constant dense<-0.017036e+00> : tensor<6x144x1x1xf32>
    %cst_150 = arith.constant dense<0.002367e+00> : tensor<144x1x3x3xf32>
    %cst_151 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_152 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_153 = arith.constant dense<0.000374e+00> : tensor<144x24x1x1xf32>
    %cst_154 = arith.constant dense<0.001494e+00> : tensor<24x24x1x1xf32>
    %cst_155 = arith.constant dense<-0.005497e+00> : tensor<24x6x1x1xf32>
    %cst_156 = arith.constant dense<-0.019318e+00> : tensor<6x24x1x1xf32>
    %cst_157 = arith.constant dense<0.000000e+00> : tensor<6xf32>
    %cst_158 = arith.constant dense<-0.008514e+00> : tensor<24x1x3x3xf32>
    %cst_159 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_160 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_161 = arith.constant dense<0.000371e+00> : tensor<24x40x1x1xf32>
    %cst_162 = arith.constant dense<0.004105e+00> : tensor<40x10x1x1xf32>
    %cst_163 = arith.constant dense<0.009723e+00> : tensor<10x40x1x1xf32>
    %cst_164 = arith.constant dense<0.000000e+00> : tensor<10xf32>
    %cst_165 = arith.constant dense<0.004550e+00> : tensor<40x1x3x3xf32>
    %cst_166 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_167 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_168 = arith.constant dense<0.015611e+00> : tensor<40x3x3x3xf32>
    %cst_169 = arith.constant 0.000000e+00 : f32
    %cst_170 = arith.constant 1.000000e-05 : f64
    %cst_171 = arith.constant 2.560000e+02 : f32
    %cst_172 = arith.constant 6.400000e+01 : f32
    %cst_173 = arith.constant 1.600000e+01 : f32
    %cst_174 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_175 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x40x16x16xf32>
    %1 = linalg.fill ins(%cst_169 : f32) outs(%0 : tensor<1x40x16x16xf32>) -> tensor<1x40x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_168 : tensor<1x3x34x34xf32>, tensor<40x3x3x3xf32>) outs(%1 : tensor<1x40x16x16xf32>) -> tensor<1x40x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x40x16x16xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%2 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x40x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x40x16x16xf32>) outs(%0 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x40x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x40x16x16xf32>, tensor<1x40x16x16xf32>) outs(%0 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x40x16x16xf32>
    %padded_176 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x40x16x16xf32> to tensor<1x40x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_165 [[0, 1], [2], [3]] : tensor<40x1x3x3xf32> into tensor<40x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_176, %collapsed : tensor<1x40x18x18xf32>, tensor<40x3x3xf32>) outs(%1 : tensor<1x40x16x16xf32>) -> tensor<1x40x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x40x16x16xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%7 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x40x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x40x16x16xf32>) outs(%0 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x40x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x40x16x16xf32>, tensor<1x40x16x16xf32>) outs(%0 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x40x16x16xf32>
    %11 = tensor.empty() : tensor<1x40x1x1xf32>
    %12 = linalg.fill ins(%cst_169 : f32) outs(%11 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x40x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x40x1x1xf32>) outs(%11 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_171 : f32
      linalg.yield %567 : f32
    } -> tensor<1x40x1x1xf32>
    %16 = tensor.empty() : tensor<1x10x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_164 : tensor<10xf32>) outs(%16 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x10x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_163 : tensor<1x40x1x1xf32>, tensor<10x40x1x1xf32>) outs(%17 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x10x1x1xf32>) outs(%16 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x10x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%16 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x10x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_166 : tensor<40xf32>) outs(%11 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_162 : tensor<1x10x1x1xf32>, tensor<40x10x1x1xf32>) outs(%21 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x40x1x1xf32>) outs(%11 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x40x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x40x1x1xf32>, tensor<1x40x16x16xf32>) outs(%0 : tensor<1x40x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x40x16x16xf32>
    %25 = tensor.empty() : tensor<1x24x16x16xf32>
    %26 = linalg.fill ins(%cst_169 : f32) outs(%25 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_161 : tensor<1x40x16x16xf32>, tensor<24x40x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_160, %cst_159, %cst_159, %cst_160 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%27 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_177 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %collapsed_178 = tensor.collapse_shape %cst_158 [[0, 1], [2], [3]] : tensor<24x1x3x3xf32> into tensor<24x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_177, %collapsed_178 : tensor<1x24x18x18xf32>, tensor<24x3x3xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_160, %cst_159, %cst_159, %cst_160 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%29 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x24x16x16xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x16x16xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x16x16xf32>
    %33 = tensor.empty() : tensor<1x24x1x1xf32>
    %34 = linalg.fill ins(%cst_169 : f32) outs(%33 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x24x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_171 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x1x1xf32>
    %37 = tensor.empty() : tensor<1x6x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_157 : tensor<6xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x6x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_156 : tensor<1x24x1x1xf32>, tensor<6x24x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x6x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x6x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_159 : tensor<24xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_155 : tensor<1x6x1x1xf32>, tensor<24x6x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x24x1x1xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_154 : tensor<1x24x16x16xf32>, tensor<24x24x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_160, %cst_159, %cst_159, %cst_160 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%46 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x24x16x16xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x16x16xf32>
    %49 = tensor.empty() : tensor<1x144x16x16xf32>
    %50 = linalg.fill ins(%cst_169 : f32) outs(%49 : tensor<1x144x16x16xf32>) -> tensor<1x144x16x16xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%48, %cst_153 : tensor<1x24x16x16xf32>, tensor<144x24x1x1xf32>) outs(%50 : tensor<1x144x16x16xf32>) -> tensor<1x144x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_152, %cst_151, %cst_151, %cst_152 : tensor<1x144x16x16xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%51 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x144x16x16xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x144x16x16xf32>) outs(%49 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x144x16x16xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %52 : tensor<1x144x16x16xf32>, tensor<1x144x16x16xf32>) outs(%49 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x144x16x16xf32>
    %padded_179 = tensor.pad %54 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x144x16x16xf32> to tensor<1x144x18x18xf32>
    %55 = tensor.empty() : tensor<1x144x8x8xf32>
    %56 = linalg.fill ins(%cst_169 : f32) outs(%55 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    %collapsed_180 = tensor.collapse_shape %cst_150 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %57 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_179, %collapsed_180 : tensor<1x144x18x18xf32>, tensor<144x3x3xf32>) outs(%56 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_152, %cst_151, %cst_151, %cst_152 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%57 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x144x8x8xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x144x8x8xf32>) outs(%55 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x144x8x8xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %58 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%55 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x144x8x8xf32>
    %61 = tensor.empty() : tensor<1x144x1x1xf32>
    %62 = linalg.fill ins(%cst_169 : f32) outs(%61 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %63 = tensor.empty() : tensor<8x8xf32>
    %64 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %63 : tensor<1x144x8x8xf32>, tensor<8x8xf32>) outs(%62 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x144x1x1xf32>) outs(%61 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_172 : f32
      linalg.yield %567 : f32
    } -> tensor<1x144x1x1xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_149 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x6x1x1xf32>
    %68 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %66 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x6x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_151 : tensor<144xf32>) outs(%61 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_148 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%69 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x144x1x1xf32>) outs(%61 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x144x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %60 : tensor<1x144x1x1xf32>, tensor<1x144x8x8xf32>) outs(%55 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x144x8x8xf32>
    %73 = tensor.empty() : tensor<1x32x8x8xf32>
    %74 = linalg.fill ins(%cst_169 : f32) outs(%73 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_147 : tensor<1x144x8x8xf32>, tensor<32x144x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_146, %cst_145, %cst_145, %cst_146 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%75 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x32x8x8xf32>
    %77 = tensor.empty() : tensor<1x192x8x8xf32>
    %78 = linalg.fill ins(%cst_169 : f32) outs(%77 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_144 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%79 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x192x8x8xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x8x8xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %80 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_181 = tensor.pad %82 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %collapsed_182 = tensor.collapse_shape %cst_141 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %83 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_181, %collapsed_182 : tensor<1x192x10x10xf32>, tensor<192x3x3xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%83 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x192x8x8xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x8x8xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %87 = tensor.empty() : tensor<1x192x1x1xf32>
    %88 = linalg.fill ins(%cst_169 : f32) outs(%87 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %89 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%86, %63 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_172 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x1x1xf32>
    %91 = tensor.empty() : tensor<1x8x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_140 : tensor<8xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%90, %cst_139 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %94 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x8x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %93 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x8x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_142 : tensor<192xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x1x1xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%95, %cst_138 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %86 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_137 : tensor<1x192x8x8xf32>, tensor<32x192x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_146, %cst_145, %cst_145, %cst_146 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%100 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x32x8x8xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %76 : tensor<1x32x8x8xf32>, tensor<1x32x8x8xf32>) outs(%73 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x32x8x8xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_136 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%103 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x192x8x8xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x8x8xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %104 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_183 = tensor.pad %106 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %collapsed_184 = tensor.collapse_shape %cst_135 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %107 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_183, %collapsed_184 : tensor<1x192x10x10xf32>, tensor<192x3x3xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%107 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x192x8x8xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x8x8xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %111 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %63 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_172 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x1x1xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_134 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x8x1x1xf32>
    %115 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %113 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x8x1x1xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_133 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %110 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_132 : tensor<1x192x8x8xf32>, tensor<32x192x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_146, %cst_145, %cst_145, %cst_146 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%119 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x32x8x8xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %102 : tensor<1x32x8x8xf32>, tensor<1x32x8x8xf32>) outs(%73 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x32x8x8xf32>
    %122 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_131 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %123 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%122 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x192x8x8xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x8x8xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %123 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_185 = tensor.pad %125 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x12x12xf32>
    %126 = tensor.empty() : tensor<1x192x4x4xf32>
    %127 = linalg.fill ins(%cst_169 : f32) outs(%126 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %collapsed_186 = tensor.collapse_shape %cst_130 [[0, 1], [2], [3]] : tensor<192x1x5x5xf32> into tensor<192x5x5xf32>
    %128 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_185, %collapsed_186 : tensor<1x192x12x12xf32>, tensor<192x5x5xf32>) outs(%127 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%128 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x192x4x4xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x192x4x4xf32>) outs(%126 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x4x4xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %129 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%126 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x4x4xf32>
    %132 = tensor.empty() : tensor<4x4xf32>
    %133 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%131, %132 : tensor<1x192x4x4xf32>, tensor<4x4xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_173 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x1x1xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_129 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %136 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x8x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %135 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x8x1x1xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_128 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %139 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x192x1x1xf32>
    %140 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %131 : tensor<1x192x1x1xf32>, tensor<1x192x4x4xf32>) outs(%126 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x192x4x4xf32>
    %141 = tensor.empty() : tensor<1x48x4x4xf32>
    %142 = linalg.fill ins(%cst_169 : f32) outs(%141 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %cst_127 : tensor<1x192x4x4xf32>, tensor<48x192x1x1xf32>) outs(%142 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %144 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %cst_126, %cst_125, %cst_125, %cst_126 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%143 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x48x4x4xf32>
    %145 = tensor.empty() : tensor<1x288x4x4xf32>
    %146 = linalg.fill ins(%cst_169 : f32) outs(%145 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %cst_124 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%147 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x288x4x4xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %148 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_187 = tensor.pad %150 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x8x8xf32>
    %collapsed_188 = tensor.collapse_shape %cst_121 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %151 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_187, %collapsed_188 : tensor<1x288x8x8xf32>, tensor<288x5x5xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%151 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x288x4x4xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x4x4xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %152 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %155 = tensor.empty() : tensor<1x288x1x1xf32>
    %156 = linalg.fill ins(%cst_169 : f32) outs(%155 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %157 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%154, %132 : tensor<1x288x4x4xf32>, tensor<4x4xf32>) outs(%156 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_173 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x1x1xf32>
    %159 = tensor.empty() : tensor<1x12x1x1xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_120 : tensor<12xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_119 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%160 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x12x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %161 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x12x1x1xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_122 : tensor<288xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %cst_118 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%164 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %166 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %154 : tensor<1x288x1x1xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%167, %cst_117 : tensor<1x288x4x4xf32>, tensor<48x288x1x1xf32>) outs(%142 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_126, %cst_125, %cst_125, %cst_126 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%168 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x48x4x4xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %144 : tensor<1x48x4x4xf32>, tensor<1x48x4x4xf32>) outs(%141 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x48x4x4xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_116 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%171 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x288x4x4xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x4x4xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %172 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_189 = tensor.pad %174 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x8x8xf32>
    %collapsed_190 = tensor.collapse_shape %cst_115 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %175 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_189, %collapsed_190 : tensor<1x288x8x8xf32>, tensor<288x5x5xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%175 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x288x4x4xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x4x4xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %179 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %132 : tensor<1x288x4x4xf32>, tensor<4x4xf32>) outs(%156 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_173 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x1x1xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_114 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%160 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x12x1x1xf32>
    %183 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %181 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x12x1x1xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_113 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%164 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %178 : tensor<1x288x1x1xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_112 : tensor<1x288x4x4xf32>, tensor<48x288x1x1xf32>) outs(%142 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_126, %cst_125, %cst_125, %cst_126 : tensor<1x48x4x4xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%187 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x48x4x4xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %170 : tensor<1x48x4x4xf32>, tensor<1x48x4x4xf32>) outs(%141 : tensor<1x48x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x48x4x4xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%189, %cst_111 : tensor<1x48x4x4xf32>, tensor<288x48x1x1xf32>) outs(%146 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %191 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%190 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x288x4x4xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x4x4xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %191 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%145 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x4x4xf32>
    %padded_191 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x288x4x4xf32> to tensor<1x288x6x6xf32>
    %194 = tensor.empty() : tensor<1x288x2x2xf32>
    %195 = linalg.fill ins(%cst_169 : f32) outs(%194 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %collapsed_192 = tensor.collapse_shape %cst_110 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %196 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_191, %collapsed_192 : tensor<1x288x6x6xf32>, tensor<288x3x3xf32>) outs(%195 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %197 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%196 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x288x2x2xf32>
    %198 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x288x2x2xf32>) outs(%194 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x2x2xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %197 : tensor<1x288x2x2xf32>, tensor<1x288x2x2xf32>) outs(%194 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x2x2xf32>
    %200 = tensor.empty() : tensor<2x2xf32>
    %201 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %200 : tensor<1x288x2x2xf32>, tensor<2x2xf32>) outs(%156 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x1x1xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%202, %cst_109 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%160 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x12x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %203 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%159 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x12x1x1xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%205, %cst_108 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%164 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %207 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x288x1x1xf32>) outs(%155 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x288x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %199 : tensor<1x288x1x1xf32>, tensor<1x288x2x2xf32>) outs(%194 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x288x2x2xf32>
    %209 = tensor.empty() : tensor<1x96x2x2xf32>
    %210 = linalg.fill ins(%cst_169 : f32) outs(%209 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%208, %cst_107 : tensor<1x288x2x2xf32>, tensor<96x288x1x1xf32>) outs(%210 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_106, %cst_105, %cst_105, %cst_106 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%211 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x96x2x2xf32>
    %213 = tensor.empty() : tensor<1x576x2x2xf32>
    %214 = linalg.fill ins(%cst_169 : f32) outs(%213 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_104 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%215 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %216 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_193 = tensor.pad %218 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_194 = tensor.collapse_shape %cst_101 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %219 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_193, %collapsed_194 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%219 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %220 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %223 = tensor.empty() : tensor<1x576x1x1xf32>
    %224 = linalg.fill ins(%cst_169 : f32) outs(%223 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %225 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%222, %200 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x1x1xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_100 : tensor<1x576x1x1xf32>, tensor<24x576x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %227 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_102 : tensor<576xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x576x1x1xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%229, %cst_99 : tensor<1x24x1x1xf32>, tensor<576x24x1x1xf32>) outs(%230 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x1x1xf32>
    %233 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %222 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_98 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%210 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_106, %cst_105, %cst_105, %cst_106 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%234 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x96x2x2xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %212 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%209 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x96x2x2xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%236, %cst_97 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%237 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %238 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_195 = tensor.pad %240 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_196 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %241 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_195, %collapsed_196 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%241 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %244 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %242 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %245 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%244, %200 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x1x1xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_95 : tensor<1x576x1x1xf32>, tensor<24x576x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %248 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x1x1xf32>
    %249 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %247 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x1x1xf32>
    %250 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%249, %cst_94 : tensor<1x24x1x1xf32>, tensor<576x24x1x1xf32>) outs(%230 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %251 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x1x1xf32>
    %252 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %244 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%252, %cst_93 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%210 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %254 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_106, %cst_105, %cst_105, %cst_106 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%253 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x96x2x2xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %236 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%209 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x96x2x2xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_92 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %257 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%256 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %258 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %257 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_197 = tensor.pad %259 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_198 = tensor.collapse_shape %cst_91 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %260 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_197, %collapsed_198 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %261 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%260 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %262 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %261 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %264 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %200 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x1x1xf32>
    %266 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%265, %cst_90 : tensor<1x576x1x1xf32>, tensor<24x576x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %267 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %266 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x1x1xf32>
    %269 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%268, %cst_89 : tensor<1x24x1x1xf32>, tensor<576x24x1x1xf32>) outs(%230 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x1x1xf32>
    %271 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %263 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %272 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %cst_88 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%210 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %273 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %cst_106, %cst_105, %cst_105, %cst_106 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%272 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x96x2x2xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %255 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%209 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x96x2x2xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_87 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %276 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%275 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %278 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %276 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_199 = tensor.pad %278 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x4x4xf32>
    %collapsed_200 = tensor.collapse_shape %cst_86 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %279 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %collapsed_200 : tensor<1x576x4x4xf32>, tensor<576x3x3xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%279 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %282 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %280 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %283 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %200 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %284 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x1x1xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%284, %cst_85 : tensor<1x576x1x1xf32>, tensor<24x576x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x1x1xf32>
    %287 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %285 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x1x1xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%287, %cst_84 : tensor<1x24x1x1xf32>, tensor<576x24x1x1xf32>) outs(%230 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %282 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_83 : tensor<1x576x2x2xf32>, tensor<96x576x1x1xf32>) outs(%210 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_106, %cst_105, %cst_105, %cst_106 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%291 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x96x2x2xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %274 : tensor<1x96x2x2xf32>, tensor<1x96x2x2xf32>) outs(%209 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x96x2x2xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_82 : tensor<1x96x2x2xf32>, tensor<576x96x1x1xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%294 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %295 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %padded_201 = tensor.pad %297 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x576x2x2xf32> to tensor<1x576x6x6xf32>
    %collapsed_202 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<576x1x5x5xf32> into tensor<576x5x5xf32>
    %298 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_201, %collapsed_202 : tensor<1x576x6x6xf32>, tensor<576x5x5xf32>) outs(%214 : tensor<1x576x2x2xf32>) -> tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%298 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x576x2x2xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x2x2xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %299 : tensor<1x576x2x2xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %302 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %200 : tensor<1x576x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x1x1xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_80 : tensor<1x576x1x1xf32>, tensor<24x576x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x24x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %304 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x24x1x1xf32>
    %307 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%306, %cst_79 : tensor<1x24x1x1xf32>, tensor<576x24x1x1xf32>) outs(%230 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x576x1x1xf32>) outs(%223 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x576x1x1xf32>
    %309 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %301 : tensor<1x576x1x1xf32>, tensor<1x576x2x2xf32>) outs(%213 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x576x2x2xf32>
    %310 = tensor.empty() : tensor<1x136x2x2xf32>
    %311 = linalg.fill ins(%cst_169 : f32) outs(%310 : tensor<1x136x2x2xf32>) -> tensor<1x136x2x2xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %cst_78 : tensor<1x576x2x2xf32>, tensor<136x576x1x1xf32>) outs(%311 : tensor<1x136x2x2xf32>) -> tensor<1x136x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x136x2x2xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>) outs(%312 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x136x2x2xf32>
    %314 = tensor.empty() : tensor<1x816x2x2xf32>
    %315 = linalg.fill ins(%cst_169 : f32) outs(%314 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    %316 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%313, %cst_75 : tensor<1x136x2x2xf32>, tensor<816x136x1x1xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %317 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%316 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %317 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %padded_203 = tensor.pad %319 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x816x2x2xf32> to tensor<1x816x6x6xf32>
    %collapsed_204 = tensor.collapse_shape %cst_72 [[0, 1], [2], [3]] : tensor<816x1x5x5xf32> into tensor<816x5x5xf32>
    %320 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_203, %collapsed_204 : tensor<1x816x6x6xf32>, tensor<816x5x5xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %321 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%320 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %321 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %324 = tensor.empty() : tensor<1x816x1x1xf32>
    %325 = linalg.fill ins(%cst_169 : f32) outs(%324 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %326 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%323, %200 : tensor<1x816x2x2xf32>, tensor<2x2xf32>) outs(%325 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x1x1xf32>
    %328 = tensor.empty() : tensor<1x34x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_71 : tensor<34xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x34x1x1xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_70 : tensor<1x816x1x1xf32>, tensor<34x816x1x1xf32>) outs(%329 : tensor<1x34x1x1xf32>) -> tensor<1x34x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x34x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %330 : tensor<1x34x1x1xf32>, tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x34x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_73 : tensor<816xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x816x1x1xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%332, %cst_69 : tensor<1x34x1x1xf32>, tensor<816x34x1x1xf32>) outs(%333 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %323 : tensor<1x816x1x1xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_68 : tensor<1x816x2x2xf32>, tensor<136x816x1x1xf32>) outs(%311 : tensor<1x136x2x2xf32>) -> tensor<1x136x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x136x2x2xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>) outs(%337 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x136x2x2xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %313 : tensor<1x136x2x2xf32>, tensor<1x136x2x2xf32>) outs(%310 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x136x2x2xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%339, %cst_67 : tensor<1x136x2x2xf32>, tensor<816x136x1x1xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%340 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %padded_205 = tensor.pad %343 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x816x2x2xf32> to tensor<1x816x6x6xf32>
    %collapsed_206 = tensor.collapse_shape %cst_66 [[0, 1], [2], [3]] : tensor<816x1x5x5xf32> into tensor<816x5x5xf32>
    %344 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %collapsed_206 : tensor<1x816x6x6xf32>, tensor<816x5x5xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%344 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %345 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %348 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%347, %200 : tensor<1x816x2x2xf32>, tensor<2x2xf32>) outs(%325 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x1x1xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_65 : tensor<1x816x1x1xf32>, tensor<34x816x1x1xf32>) outs(%329 : tensor<1x34x1x1xf32>) -> tensor<1x34x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x34x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %350 : tensor<1x34x1x1xf32>, tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x34x1x1xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%352, %cst_64 : tensor<1x34x1x1xf32>, tensor<816x34x1x1xf32>) outs(%333 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %347 : tensor<1x816x1x1xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %356 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%355, %cst_63 : tensor<1x816x2x2xf32>, tensor<136x816x1x1xf32>) outs(%311 : tensor<1x136x2x2xf32>) -> tensor<1x136x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %357 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x136x2x2xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>) outs(%356 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x136x2x2xf32>
    %358 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %339 : tensor<1x136x2x2xf32>, tensor<1x136x2x2xf32>) outs(%310 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x136x2x2xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_62 : tensor<1x136x2x2xf32>, tensor<816x136x1x1xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%359 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %362 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %360 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %padded_207 = tensor.pad %362 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x816x2x2xf32> to tensor<1x816x6x6xf32>
    %collapsed_208 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<816x1x5x5xf32> into tensor<816x5x5xf32>
    %363 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_207, %collapsed_208 : tensor<1x816x6x6xf32>, tensor<816x5x5xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%363 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %364 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %367 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %200 : tensor<1x816x2x2xf32>, tensor<2x2xf32>) outs(%325 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x1x1xf32>
    %369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %cst_60 : tensor<1x816x1x1xf32>, tensor<34x816x1x1xf32>) outs(%329 : tensor<1x34x1x1xf32>) -> tensor<1x34x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x34x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %369 : tensor<1x34x1x1xf32>, tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x34x1x1xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%371, %cst_59 : tensor<1x34x1x1xf32>, tensor<816x34x1x1xf32>) outs(%333 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %366 : tensor<1x816x1x1xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %375 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%374, %cst_58 : tensor<1x816x2x2xf32>, tensor<136x816x1x1xf32>) outs(%311 : tensor<1x136x2x2xf32>) -> tensor<1x136x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x136x2x2xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>) outs(%375 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x136x2x2xf32>
    %377 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %358 : tensor<1x136x2x2xf32>, tensor<1x136x2x2xf32>) outs(%310 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x136x2x2xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_57 : tensor<1x136x2x2xf32>, tensor<816x136x1x1xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%378 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %379 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %padded_209 = tensor.pad %381 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x816x2x2xf32> to tensor<1x816x6x6xf32>
    %collapsed_210 = tensor.collapse_shape %cst_56 [[0, 1], [2], [3]] : tensor<816x1x5x5xf32> into tensor<816x5x5xf32>
    %382 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_209, %collapsed_210 : tensor<1x816x6x6xf32>, tensor<816x5x5xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %383 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%382 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %384 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %385 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %383 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %386 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%385, %200 : tensor<1x816x2x2xf32>, tensor<2x2xf32>) outs(%325 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.divf %in, %cst_174 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x1x1xf32>
    %388 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%387, %cst_55 : tensor<1x816x1x1xf32>, tensor<34x816x1x1xf32>) outs(%329 : tensor<1x34x1x1xf32>) -> tensor<1x34x1x1xf32>
    %389 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x34x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %388 : tensor<1x34x1x1xf32>, tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x34x1x1xf32>
    %391 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %cst_54 : tensor<1x34x1x1xf32>, tensor<816x34x1x1xf32>) outs(%333 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %392 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x1x1xf32>
    %393 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %385 : tensor<1x816x1x1xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%393, %cst_53 : tensor<1x816x2x2xf32>, tensor<136x816x1x1xf32>) outs(%311 : tensor<1x136x2x2xf32>) -> tensor<1x136x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x136x2x2xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>, tensor<136xf32>) outs(%394 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x136x2x2xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395, %377 : tensor<1x136x2x2xf32>, tensor<1x136x2x2xf32>) outs(%310 : tensor<1x136x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x136x2x2xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_52 : tensor<1x136x2x2xf32>, tensor<816x136x1x1xf32>) outs(%315 : tensor<1x816x2x2xf32>) -> tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %398 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%397 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x2x2xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %398 : tensor<1x816x2x2xf32>, tensor<1x816x2x2xf32>) outs(%314 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x2x2xf32>
    %padded_211 = tensor.pad %400 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x816x2x2xf32> to tensor<1x816x6x6xf32>
    %collapsed_212 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<816x1x5x5xf32> into tensor<816x5x5xf32>
    %401 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_211, %collapsed_212 : tensor<1x816x6x6xf32>, tensor<816x5x5xf32>) outs(%325 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x816x1x1xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%401 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x816x1x1xf32>
    %403 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x1x1xf32>
    %404 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %402 : tensor<1x816x1x1xf32>, tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x1x1xf32>
    %405 = tensor.empty() : tensor<1x1xf32>
    %406 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%404, %405 : tensor<1x816x1x1xf32>, tensor<1x1xf32>) outs(%325 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %407 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %cst_50 : tensor<1x816x1x1xf32>, tensor<34x816x1x1xf32>) outs(%329 : tensor<1x34x1x1xf32>) -> tensor<1x34x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x34x1x1xf32>
    %409 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %407 : tensor<1x34x1x1xf32>, tensor<1x34x1x1xf32>) outs(%328 : tensor<1x34x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x34x1x1xf32>
    %410 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%409, %cst_49 : tensor<1x34x1x1xf32>, tensor<816x34x1x1xf32>) outs(%333 : tensor<1x816x1x1xf32>) -> tensor<1x816x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x816x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %404 : tensor<1x816x1x1xf32>, tensor<1x816x1x1xf32>) outs(%324 : tensor<1x816x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x816x1x1xf32>
    %413 = tensor.empty() : tensor<1x232x1x1xf32>
    %414 = linalg.fill ins(%cst_169 : f32) outs(%413 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    %415 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %cst_48 : tensor<1x816x1x1xf32>, tensor<232x816x1x1xf32>) outs(%414 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %416 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x232x1x1xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>) outs(%415 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x232x1x1xf32>
    %417 = tensor.empty() : tensor<1x1392x1x1xf32>
    %418 = linalg.fill ins(%cst_169 : f32) outs(%417 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %419 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%416, %cst_45 : tensor<1x232x1x1xf32>, tensor<1392x232x1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %420 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%419 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %422 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %420 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %padded_213 = tensor.pad %422 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x1392x1x1xf32> to tensor<1x1392x5x5xf32>
    %collapsed_214 = tensor.collapse_shape %cst_42 [[0, 1], [2], [3]] : tensor<1392x1x5x5xf32> into tensor<1392x5x5xf32>
    %423 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_213, %collapsed_214 : tensor<1x1392x5x5xf32>, tensor<1392x5x5xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %424 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%423 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %425 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %426 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %424 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %427 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%426, %405 : tensor<1x1392x1x1xf32>, tensor<1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %428 = tensor.empty() : tensor<1x58x1x1xf32>
    %429 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_41 : tensor<58xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x58x1x1xf32>
    %430 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%427, %cst_40 : tensor<1x1392x1x1xf32>, tensor<58x1392x1x1xf32>) outs(%429 : tensor<1x58x1x1xf32>) -> tensor<1x58x1x1xf32>
    %431 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x58x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431, %430 : tensor<1x58x1x1xf32>, tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x58x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_43 : tensor<1392xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1392x1x1xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%432, %cst_39 : tensor<1x58x1x1xf32>, tensor<1392x58x1x1xf32>) outs(%433 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %435 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %426 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_38 : tensor<1x1392x1x1xf32>, tensor<232x1392x1x1xf32>) outs(%414 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %438 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x232x1x1xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>) outs(%437 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x232x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %416 : tensor<1x232x1x1xf32>, tensor<1x232x1x1xf32>) outs(%413 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x232x1x1xf32>
    %440 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%439, %cst_37 : tensor<1x232x1x1xf32>, tensor<1392x232x1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %441 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%440 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %442 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %441 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %padded_215 = tensor.pad %443 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x1392x1x1xf32> to tensor<1x1392x5x5xf32>
    %collapsed_216 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<1392x1x5x5xf32> into tensor<1392x5x5xf32>
    %444 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_215, %collapsed_216 : tensor<1x1392x5x5xf32>, tensor<1392x5x5xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %445 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%444 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %446 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %445 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %448 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %405 : tensor<1x1392x1x1xf32>, tensor<1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %449 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%448, %cst_35 : tensor<1x1392x1x1xf32>, tensor<58x1392x1x1xf32>) outs(%429 : tensor<1x58x1x1xf32>) -> tensor<1x58x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x58x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %449 : tensor<1x58x1x1xf32>, tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x58x1x1xf32>
    %452 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%451, %cst_34 : tensor<1x58x1x1xf32>, tensor<1392x58x1x1xf32>) outs(%433 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %453 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %454 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %447 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %455 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %cst_33 : tensor<1x1392x1x1xf32>, tensor<232x1392x1x1xf32>) outs(%414 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %456 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x232x1x1xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>) outs(%455 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x232x1x1xf32>
    %457 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %439 : tensor<1x232x1x1xf32>, tensor<1x232x1x1xf32>) outs(%413 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x232x1x1xf32>
    %458 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%457, %cst_32 : tensor<1x232x1x1xf32>, tensor<1392x232x1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %459 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%458 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %459 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %padded_217 = tensor.pad %461 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x1392x1x1xf32> to tensor<1x1392x5x5xf32>
    %collapsed_218 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<1392x1x5x5xf32> into tensor<1392x5x5xf32>
    %462 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_217, %collapsed_218 : tensor<1x1392x5x5xf32>, tensor<1392x5x5xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %463 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%462 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %465 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %463 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %466 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%465, %405 : tensor<1x1392x1x1xf32>, tensor<1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %467 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%466, %cst_30 : tensor<1x1392x1x1xf32>, tensor<58x1392x1x1xf32>) outs(%429 : tensor<1x58x1x1xf32>) -> tensor<1x58x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x58x1x1xf32>
    %469 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %467 : tensor<1x58x1x1xf32>, tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x58x1x1xf32>
    %470 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%469, %cst_29 : tensor<1x58x1x1xf32>, tensor<1392x58x1x1xf32>) outs(%433 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %472 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %465 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %473 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%472, %cst_28 : tensor<1x1392x1x1xf32>, tensor<232x1392x1x1xf32>) outs(%414 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %474 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x232x1x1xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>) outs(%473 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x232x1x1xf32>
    %475 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %457 : tensor<1x232x1x1xf32>, tensor<1x232x1x1xf32>) outs(%413 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x232x1x1xf32>
    %476 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%475, %cst_27 : tensor<1x232x1x1xf32>, tensor<1392x232x1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %477 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%476 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %478 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %479 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %477 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %padded_219 = tensor.pad %479 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x1392x1x1xf32> to tensor<1x1392x5x5xf32>
    %collapsed_220 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<1392x1x5x5xf32> into tensor<1392x5x5xf32>
    %480 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_219, %collapsed_220 : tensor<1x1392x5x5xf32>, tensor<1392x5x5xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %481 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%480 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %483 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %481 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %484 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%483, %405 : tensor<1x1392x1x1xf32>, tensor<1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %485 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%484, %cst_25 : tensor<1x1392x1x1xf32>, tensor<58x1392x1x1xf32>) outs(%429 : tensor<1x58x1x1xf32>) -> tensor<1x58x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485 : tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x58x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %485 : tensor<1x58x1x1xf32>, tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x58x1x1xf32>
    %488 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%487, %cst_24 : tensor<1x58x1x1xf32>, tensor<1392x58x1x1xf32>) outs(%433 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %490 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %483 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %491 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%490, %cst_23 : tensor<1x1392x1x1xf32>, tensor<232x1392x1x1xf32>) outs(%414 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %492 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x232x1x1xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>) outs(%491 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x232x1x1xf32>
    %493 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %475 : tensor<1x232x1x1xf32>, tensor<1x232x1x1xf32>) outs(%413 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x232x1x1xf32>
    %494 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%493, %cst_22 : tensor<1x232x1x1xf32>, tensor<1392x232x1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %495 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%494 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %496 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %497 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %495 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %padded_221 = tensor.pad %497 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x1392x1x1xf32> to tensor<1x1392x5x5xf32>
    %collapsed_222 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<1392x1x5x5xf32> into tensor<1392x5x5xf32>
    %498 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_221, %collapsed_222 : tensor<1x1392x5x5xf32>, tensor<1392x5x5xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %499 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%498 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %500 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500, %499 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %502 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%501, %405 : tensor<1x1392x1x1xf32>, tensor<1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%502, %cst_20 : tensor<1x1392x1x1xf32>, tensor<58x1392x1x1xf32>) outs(%429 : tensor<1x58x1x1xf32>) -> tensor<1x58x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x58x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %503 : tensor<1x58x1x1xf32>, tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x58x1x1xf32>
    %506 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %cst_19 : tensor<1x58x1x1xf32>, tensor<1392x58x1x1xf32>) outs(%433 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %507 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %508 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507, %501 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %509 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%508, %cst_18 : tensor<1x1392x1x1xf32>, tensor<232x1392x1x1xf32>) outs(%414 : tensor<1x232x1x1xf32>) -> tensor<1x232x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %510 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %cst_47, %cst_46, %cst_46, %cst_47 : tensor<1x232x1x1xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>, tensor<232xf32>) outs(%509 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x232x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %493 : tensor<1x232x1x1xf32>, tensor<1x232x1x1xf32>) outs(%413 : tensor<1x232x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x232x1x1xf32>
    %512 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%511, %cst_17 : tensor<1x232x1x1xf32>, tensor<1392x232x1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %513 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%512 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %514 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %515 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %513 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %padded_223 = tensor.pad %515 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x1392x1x1xf32> to tensor<1x1392x3x3xf32>
    %collapsed_224 = tensor.collapse_shape %cst_16 [[0, 1], [2], [3]] : tensor<1392x1x3x3xf32> into tensor<1392x3x3xf32>
    %516 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_223, %collapsed_224 : tensor<1x1392x3x3xf32>, tensor<1392x3x3xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %517 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %cst_44, %cst_43, %cst_43, %cst_44 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%516 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1392x1x1xf32>
    %518 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %519 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %517 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %520 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%519, %405 : tensor<1x1392x1x1xf32>, tensor<1x1xf32>) outs(%418 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %521 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%520, %cst_15 : tensor<1x1392x1x1xf32>, tensor<58x1392x1x1xf32>) outs(%429 : tensor<1x58x1x1xf32>) -> tensor<1x58x1x1xf32>
    %522 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x58x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %521 : tensor<1x58x1x1xf32>, tensor<1x58x1x1xf32>) outs(%428 : tensor<1x58x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x58x1x1xf32>
    %524 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%523, %cst_14 : tensor<1x58x1x1xf32>, tensor<1392x58x1x1xf32>) outs(%433 : tensor<1x1392x1x1xf32>) -> tensor<1x1392x1x1xf32>
    %525 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1392x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %519 : tensor<1x1392x1x1xf32>, tensor<1x1392x1x1xf32>) outs(%417 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1392x1x1xf32>
    %527 = tensor.empty() : tensor<1x384x1x1xf32>
    %528 = linalg.fill ins(%cst_169 : f32) outs(%527 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %529 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%526, %cst_13 : tensor<1x1392x1x1xf32>, tensor<384x1392x1x1xf32>) outs(%528 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %530 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %cst_12, %cst_11, %cst_11, %cst_12 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%529 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x384x1x1xf32>
    %531 = tensor.empty() : tensor<1x2304x1x1xf32>
    %532 = linalg.fill ins(%cst_169 : f32) outs(%531 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %533 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%530, %cst_10 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%532 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %534 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%533 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x2304x1x1xf32>
    %535 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534 : tensor<1x2304x1x1xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x2304x1x1xf32>
    %536 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %534 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_225 = tensor.pad %536 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_226 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %537 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_225, %collapsed_226 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%532 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %538 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%537 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x2304x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538 : tensor<1x2304x1x1xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x2304x1x1xf32>
    %540 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %538 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x2304x1x1xf32>
    %541 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%540, %405 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%532 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %542 = tensor.empty() : tensor<1x96x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_105 : tensor<96xf32>) outs(%542 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %544 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%541, %cst_6 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%543 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x96x1x1xf32>) outs(%542 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x96x1x1xf32>
    %546 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545, %544 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%542 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x96x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<2304xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %548 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%546, %cst_5 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%547 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x2304x1x1xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x2304x1x1xf32>
    %550 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %540 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%531 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x2304x1x1xf32>
    %551 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%550, %cst_4 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%528 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %552 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_12, %cst_11, %cst_11, %cst_12 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%551 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x384x1x1xf32>
    %553 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %530 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%527 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x384x1x1xf32>
    %554 = tensor.empty() : tensor<1x1536x1x1xf32>
    %555 = linalg.fill ins(%cst_169 : f32) outs(%554 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %556 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%553, %cst_3 : tensor<1x384x1x1xf32>, tensor<1536x384x1x1xf32>) outs(%555 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %557 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%556 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %in_229: f32, %in_230: f32, %in_231: f32, %out: f32):
      %567 = arith.truncf %cst_170 : f64 to f32
      %568 = arith.addf %in_231, %567 : f32
      %569 = math.rsqrt %568 : f32
      %570 = arith.subf %in, %in_230 : f32
      %571 = arith.mulf %570, %569 : f32
      %572 = arith.mulf %571, %in_228 : f32
      %573 = arith.addf %572, %in_229 : f32
      linalg.yield %573 : f32
    } -> tensor<1x1536x1x1xf32>
    %558 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x1536x1x1xf32>) outs(%554 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %567 = arith.negf %in : f32
      %568 = math.exp %567 : f32
      %569 = arith.addf %568, %cst_175 : f32
      %570 = arith.divf %cst_175, %569 : f32
      linalg.yield %570 : f32
    } -> tensor<1x1536x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %557 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%554 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.mulf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1536x1x1xf32>
    %560 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%555 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %collapsed_227 = tensor.collapse_shape %560 [[0], [1, 2, 3]] : tensor<1x1536x1x1xf32> into tensor<1x1536xf32>
    %561 = tensor.empty() : tensor<1536x1000xf32>
    %562 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1536xf32>) outs(%561 : tensor<1536x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x1000xf32>
    %563 = tensor.empty() : tensor<1x1000xf32>
    %564 = linalg.fill ins(%cst_169 : f32) outs(%563 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %565 = linalg.matmul ins(%collapsed_227, %562 : tensor<1x1536xf32>, tensor<1536x1000xf32>) outs(%564 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %566 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%565, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%563 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_228: f32, %out: f32):
      %567 = arith.addf %in, %in_228 : f32
      linalg.yield %567 : f32
    } -> tensor<1x1000xf32>
    return %566 : tensor<1x1000xf32>
  }
}
