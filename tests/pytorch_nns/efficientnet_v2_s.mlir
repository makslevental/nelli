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
    %cst = arith.constant dense<0.011383e+00> : tensor<1000x1280xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_3 = arith.constant dense<-0.018746e+00> : tensor<1280x256x1x1xf32>
    %cst_4 = arith.constant dense<-0.005190e+00> : tensor<256x1536x1x1xf32>
    %cst_5 = arith.constant dense<-0.003791e+00> : tensor<1536x64x1x1xf32>
    %cst_6 = arith.constant dense<0.011036e+00> : tensor<64x1536x1x1xf32>
    %cst_7 = arith.constant dense<0.003563e+00> : tensor<1536x1x3x3xf32>
    %cst_8 = arith.constant dense<-0.001145e+00> : tensor<1536x256x1x1xf32>
    %cst_9 = arith.constant dense<-0.005512e+00> : tensor<256x1536x1x1xf32>
    %cst_10 = arith.constant dense<0.016028e+00> : tensor<1536x64x1x1xf32>
    %cst_11 = arith.constant dense<0.007304e+00> : tensor<64x1536x1x1xf32>
    %cst_12 = arith.constant dense<-0.008852e+00> : tensor<1536x1x3x3xf32>
    %cst_13 = arith.constant dense<-0.019386e+00> : tensor<1536x256x1x1xf32>
    %cst_14 = arith.constant dense<-0.007981e+00> : tensor<256x1536x1x1xf32>
    %cst_15 = arith.constant dense<-0.005178e+00> : tensor<1536x64x1x1xf32>
    %cst_16 = arith.constant dense<0.001523e+00> : tensor<64x1536x1x1xf32>
    %cst_17 = arith.constant dense<-0.010931e+00> : tensor<1536x1x3x3xf32>
    %cst_18 = arith.constant dense<0.013373e+00> : tensor<1536x256x1x1xf32>
    %cst_19 = arith.constant dense<0.001513e+00> : tensor<256x1536x1x1xf32>
    %cst_20 = arith.constant dense<-0.018122e+00> : tensor<1536x64x1x1xf32>
    %cst_21 = arith.constant dense<-0.014056e+00> : tensor<64x1536x1x1xf32>
    %cst_22 = arith.constant dense<0.005724e+00> : tensor<1536x1x3x3xf32>
    %cst_23 = arith.constant dense<0.002324e+00> : tensor<1536x256x1x1xf32>
    %cst_24 = arith.constant dense<-0.008436e+00> : tensor<256x1536x1x1xf32>
    %cst_25 = arith.constant dense<-0.002923e+00> : tensor<1536x64x1x1xf32>
    %cst_26 = arith.constant dense<-0.020523e+00> : tensor<64x1536x1x1xf32>
    %cst_27 = arith.constant dense<0.005054e+00> : tensor<1536x1x3x3xf32>
    %cst_28 = arith.constant dense<-0.000306e+00> : tensor<1536x256x1x1xf32>
    %cst_29 = arith.constant dense<0.008660e+00> : tensor<256x1536x1x1xf32>
    %cst_30 = arith.constant dense<0.005057e+00> : tensor<1536x64x1x1xf32>
    %cst_31 = arith.constant dense<-0.010012e+00> : tensor<64x1536x1x1xf32>
    %cst_32 = arith.constant dense<-0.015701e+00> : tensor<1536x1x3x3xf32>
    %cst_33 = arith.constant dense<0.021753e+00> : tensor<1536x256x1x1xf32>
    %cst_34 = arith.constant dense<0.010168e+00> : tensor<256x1536x1x1xf32>
    %cst_35 = arith.constant dense<-0.008450e+00> : tensor<1536x64x1x1xf32>
    %cst_36 = arith.constant dense<-0.003698e+00> : tensor<64x1536x1x1xf32>
    %cst_37 = arith.constant dense<0.016464e+00> : tensor<1536x1x3x3xf32>
    %cst_38 = arith.constant dense<-0.012026e+00> : tensor<1536x256x1x1xf32>
    %cst_39 = arith.constant dense<0.002355e+00> : tensor<256x1536x1x1xf32>
    %cst_40 = arith.constant dense<-0.004472e+00> : tensor<1536x64x1x1xf32>
    %cst_41 = arith.constant dense<0.005548e+00> : tensor<64x1536x1x1xf32>
    %cst_42 = arith.constant dense<0.011643e+00> : tensor<1536x1x3x3xf32>
    %cst_43 = arith.constant dense<0.010008e+00> : tensor<1536x256x1x1xf32>
    %cst_44 = arith.constant dense<-0.012991e+00> : tensor<256x1536x1x1xf32>
    %cst_45 = arith.constant dense<-0.004502e+00> : tensor<1536x64x1x1xf32>
    %cst_46 = arith.constant dense<0.006531e+00> : tensor<64x1536x1x1xf32>
    %cst_47 = arith.constant dense<-0.004840e+00> : tensor<1536x1x3x3xf32>
    %cst_48 = arith.constant dense<-0.000748e+00> : tensor<1536x256x1x1xf32>
    %cst_49 = arith.constant dense<0.008614e+00> : tensor<256x1536x1x1xf32>
    %cst_50 = arith.constant dense<0.005892e+00> : tensor<1536x64x1x1xf32>
    %cst_51 = arith.constant dense<-0.018622e+00> : tensor<64x1536x1x1xf32>
    %cst_52 = arith.constant dense<0.009060e+00> : tensor<1536x1x3x3xf32>
    %cst_53 = arith.constant dense<0.005928e+00> : tensor<1536x256x1x1xf32>
    %cst_54 = arith.constant dense<0.003283e+00> : tensor<256x1536x1x1xf32>
    %cst_55 = arith.constant dense<-0.009114e+00> : tensor<1536x64x1x1xf32>
    %cst_56 = arith.constant dense<0.002992e+00> : tensor<64x1536x1x1xf32>
    %cst_57 = arith.constant dense<-0.001104e+00> : tensor<1536x1x3x3xf32>
    %cst_58 = arith.constant dense<0.009208e+00> : tensor<1536x256x1x1xf32>
    %cst_59 = arith.constant dense<0.011941e+00> : tensor<256x1536x1x1xf32>
    %cst_60 = arith.constant dense<0.012160e+00> : tensor<1536x64x1x1xf32>
    %cst_61 = arith.constant dense<0.013939e+00> : tensor<64x1536x1x1xf32>
    %cst_62 = arith.constant dense<-0.003886e+00> : tensor<1536x1x3x3xf32>
    %cst_63 = arith.constant dense<-0.011457e+00> : tensor<1536x256x1x1xf32>
    %cst_64 = arith.constant dense<0.021462e+00> : tensor<256x1536x1x1xf32>
    %cst_65 = arith.constant dense<-0.014651e+00> : tensor<1536x64x1x1xf32>
    %cst_66 = arith.constant dense<-0.015861e+00> : tensor<64x1536x1x1xf32>
    %cst_67 = arith.constant dense<-0.013623e+00> : tensor<1536x1x3x3xf32>
    %cst_68 = arith.constant dense<0.010825e+00> : tensor<1536x256x1x1xf32>
    %cst_69 = arith.constant dense<-0.005085e+00> : tensor<256x1536x1x1xf32>
    %cst_70 = arith.constant dense<0.000205e+00> : tensor<1536x64x1x1xf32>
    %cst_71 = arith.constant dense<0.002482e+00> : tensor<64x1536x1x1xf32>
    %cst_72 = arith.constant dense<-0.008788e+00> : tensor<1536x1x3x3xf32>
    %cst_73 = arith.constant dense<0.000000e+00> : tensor<1536xf32>
    %cst_74 = arith.constant dense<1.000000e+00> : tensor<1536xf32>
    %cst_75 = arith.constant dense<0.011830e+00> : tensor<1536x256x1x1xf32>
    %cst_76 = arith.constant dense<0.012854e+00> : tensor<256x960x1x1xf32>
    %cst_77 = arith.constant dense<-0.000619e+00> : tensor<960x40x1x1xf32>
    %cst_78 = arith.constant dense<0.007449e+00> : tensor<40x960x1x1xf32>
    %cst_79 = arith.constant dense<0.004733e+00> : tensor<960x1x3x3xf32>
    %cst_80 = arith.constant dense<0.010457e+00> : tensor<960x160x1x1xf32>
    %cst_81 = arith.constant dense<0.004110e+00> : tensor<160x960x1x1xf32>
    %cst_82 = arith.constant dense<0.018190e+00> : tensor<960x40x1x1xf32>
    %cst_83 = arith.constant dense<0.008602e+00> : tensor<40x960x1x1xf32>
    %cst_84 = arith.constant dense<0.006089e+00> : tensor<960x1x3x3xf32>
    %cst_85 = arith.constant dense<-0.002822e+00> : tensor<960x160x1x1xf32>
    %cst_86 = arith.constant dense<0.003167e+00> : tensor<160x960x1x1xf32>
    %cst_87 = arith.constant dense<-0.003319e+00> : tensor<960x40x1x1xf32>
    %cst_88 = arith.constant dense<0.001623e+00> : tensor<40x960x1x1xf32>
    %cst_89 = arith.constant dense<0.002969e+00> : tensor<960x1x3x3xf32>
    %cst_90 = arith.constant dense<0.002912e+00> : tensor<960x160x1x1xf32>
    %cst_91 = arith.constant dense<-0.004503e+00> : tensor<160x960x1x1xf32>
    %cst_92 = arith.constant dense<0.019466e+00> : tensor<960x40x1x1xf32>
    %cst_93 = arith.constant dense<0.018954e+00> : tensor<40x960x1x1xf32>
    %cst_94 = arith.constant dense<-0.002374e+00> : tensor<960x1x3x3xf32>
    %cst_95 = arith.constant dense<-0.006359e+00> : tensor<960x160x1x1xf32>
    %cst_96 = arith.constant dense<0.015905e+00> : tensor<160x960x1x1xf32>
    %cst_97 = arith.constant dense<0.007095e+00> : tensor<960x40x1x1xf32>
    %cst_98 = arith.constant dense<0.002557e+00> : tensor<40x960x1x1xf32>
    %cst_99 = arith.constant dense<-0.000372e+00> : tensor<960x1x3x3xf32>
    %cst_100 = arith.constant dense<0.016676e+00> : tensor<960x160x1x1xf32>
    %cst_101 = arith.constant dense<-0.004163e+00> : tensor<160x960x1x1xf32>
    %cst_102 = arith.constant dense<-0.018368e+00> : tensor<960x40x1x1xf32>
    %cst_103 = arith.constant dense<-0.002610e+00> : tensor<40x960x1x1xf32>
    %cst_104 = arith.constant dense<0.004186e+00> : tensor<960x1x3x3xf32>
    %cst_105 = arith.constant dense<-0.018254e+00> : tensor<960x160x1x1xf32>
    %cst_106 = arith.constant dense<-0.001997e+00> : tensor<160x960x1x1xf32>
    %cst_107 = arith.constant dense<-0.008703e+00> : tensor<960x40x1x1xf32>
    %cst_108 = arith.constant dense<-0.002608e+00> : tensor<40x960x1x1xf32>
    %cst_109 = arith.constant dense<0.003287e+00> : tensor<960x1x3x3xf32>
    %cst_110 = arith.constant dense<-0.006159e+00> : tensor<960x160x1x1xf32>
    %cst_111 = arith.constant dense<0.002876e+00> : tensor<160x960x1x1xf32>
    %cst_112 = arith.constant dense<-0.014047e+00> : tensor<960x40x1x1xf32>
    %cst_113 = arith.constant dense<0.006175e+00> : tensor<40x960x1x1xf32>
    %cst_114 = arith.constant dense<0.003872e+00> : tensor<960x1x3x3xf32>
    %cst_115 = arith.constant dense<0.009171e+00> : tensor<960x160x1x1xf32>
    %cst_116 = arith.constant dense<0.004709e+00> : tensor<160x960x1x1xf32>
    %cst_117 = arith.constant dense<-0.003849e+00> : tensor<960x40x1x1xf32>
    %cst_118 = arith.constant dense<-0.000360e+00> : tensor<40x960x1x1xf32>
    %cst_119 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_120 = arith.constant dense<0.004098e+00> : tensor<960x1x3x3xf32>
    %cst_121 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_122 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_123 = arith.constant dense<-0.005037e+00> : tensor<960x160x1x1xf32>
    %cst_124 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_125 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_126 = arith.constant dense<-0.004655e+00> : tensor<160x768x1x1xf32>
    %cst_127 = arith.constant dense<-0.005918e+00> : tensor<768x32x1x1xf32>
    %cst_128 = arith.constant dense<-0.003405e+00> : tensor<32x768x1x1xf32>
    %cst_129 = arith.constant dense<0.014388e+00> : tensor<768x1x3x3xf32>
    %cst_130 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_131 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_132 = arith.constant dense<-0.001167e+00> : tensor<768x128x1x1xf32>
    %cst_133 = arith.constant dense<-0.002918e+00> : tensor<128x512x1x1xf32>
    %cst_134 = arith.constant dense<-0.007636e+00> : tensor<512x32x1x1xf32>
    %cst_135 = arith.constant dense<-0.000632e+00> : tensor<32x512x1x1xf32>
    %cst_136 = arith.constant dense<-0.009615e+00> : tensor<512x1x3x3xf32>
    %cst_137 = arith.constant dense<0.008174e+00> : tensor<512x128x1x1xf32>
    %cst_138 = arith.constant dense<-0.003297e+00> : tensor<128x512x1x1xf32>
    %cst_139 = arith.constant dense<0.007884e+00> : tensor<512x32x1x1xf32>
    %cst_140 = arith.constant dense<0.010434e+00> : tensor<32x512x1x1xf32>
    %cst_141 = arith.constant dense<0.011208e+00> : tensor<512x1x3x3xf32>
    %cst_142 = arith.constant dense<-0.000221e+00> : tensor<512x128x1x1xf32>
    %cst_143 = arith.constant dense<0.009451e+00> : tensor<128x512x1x1xf32>
    %cst_144 = arith.constant dense<-0.001948e+00> : tensor<512x32x1x1xf32>
    %cst_145 = arith.constant dense<-0.006701e+00> : tensor<32x512x1x1xf32>
    %cst_146 = arith.constant dense<-0.002516e+00> : tensor<512x1x3x3xf32>
    %cst_147 = arith.constant dense<-0.014024e+00> : tensor<512x128x1x1xf32>
    %cst_148 = arith.constant dense<0.006172e+00> : tensor<128x512x1x1xf32>
    %cst_149 = arith.constant dense<-0.000103e+00> : tensor<512x32x1x1xf32>
    %cst_150 = arith.constant dense<0.004191e+00> : tensor<32x512x1x1xf32>
    %cst_151 = arith.constant dense<-0.014051e+00> : tensor<512x1x3x3xf32>
    %cst_152 = arith.constant dense<-0.004038e+00> : tensor<512x128x1x1xf32>
    %cst_153 = arith.constant dense<0.007677e+00> : tensor<128x512x1x1xf32>
    %cst_154 = arith.constant dense<-0.007297e+00> : tensor<512x32x1x1xf32>
    %cst_155 = arith.constant dense<0.009555e+00> : tensor<32x512x1x1xf32>
    %cst_156 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_157 = arith.constant dense<0.001219e+00> : tensor<512x1x3x3xf32>
    %cst_158 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_159 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_160 = arith.constant dense<0.010261e+00> : tensor<512x128x1x1xf32>
    %cst_161 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_162 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_163 = arith.constant dense<0.000748e+00> : tensor<128x256x1x1xf32>
    %cst_164 = arith.constant dense<-0.006256e+00> : tensor<256x16x1x1xf32>
    %cst_165 = arith.constant dense<-0.014814e+00> : tensor<16x256x1x1xf32>
    %cst_166 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_167 = arith.constant dense<-0.007616e+00> : tensor<256x1x3x3xf32>
    %cst_168 = arith.constant dense<0.009613e+00> : tensor<256x64x1x1xf32>
    %cst_169 = arith.constant dense<-0.003870e+00> : tensor<64x256x1x1xf32>
    %cst_170 = arith.constant dense<0.009441e+00> : tensor<256x64x3x3xf32>
    %cst_171 = arith.constant dense<-0.014864e+00> : tensor<64x256x1x1xf32>
    %cst_172 = arith.constant dense<0.010551e+00> : tensor<256x64x3x3xf32>
    %cst_173 = arith.constant dense<-0.009714e+00> : tensor<64x256x1x1xf32>
    %cst_174 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_175 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_176 = arith.constant dense<0.012063e+00> : tensor<256x64x3x3xf32>
    %cst_177 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_178 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_179 = arith.constant dense<0.019561e+00> : tensor<64x192x1x1xf32>
    %cst_180 = arith.constant dense<-0.000566e+00> : tensor<192x48x3x3xf32>
    %cst_181 = arith.constant dense<-0.004867e+00> : tensor<48x192x1x1xf32>
    %cst_182 = arith.constant dense<-0.001421e+00> : tensor<192x48x3x3xf32>
    %cst_183 = arith.constant dense<0.025335e+00> : tensor<48x192x1x1xf32>
    %cst_184 = arith.constant dense<0.008224e+00> : tensor<192x48x3x3xf32>
    %cst_185 = arith.constant dense<0.000082e+00> : tensor<48x192x1x1xf32>
    %cst_186 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_187 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_188 = arith.constant dense<0.018886e+00> : tensor<192x48x3x3xf32>
    %cst_189 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_190 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_191 = arith.constant dense<0.002520e+00> : tensor<48x96x1x1xf32>
    %cst_192 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_193 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_194 = arith.constant dense<-0.009921e+00> : tensor<96x24x3x3xf32>
    %cst_195 = arith.constant dense<-0.003603e+00> : tensor<24x24x3x3xf32>
    %cst_196 = arith.constant dense<0.009651e+00> : tensor<24x24x3x3xf32>
    %cst_197 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_198 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_199 = arith.constant dense<0.008535e+00> : tensor<24x3x3x3xf32>
    %cst_200 = arith.constant 0.000000e+00 : f32
    %cst_201 = arith.constant 1.000000e-03 : f64
    %cst_202 = arith.constant 4.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_203 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x24x16x16xf32>
    %1 = linalg.fill ins(%cst_200 : f32) outs(%0 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_199 : tensor<1x3x34x34xf32>, tensor<24x3x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%2 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x24x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x24x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_204 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_204, %cst_196 : tensor<1x24x18x18xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%7 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x24x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x24x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x24x16x16xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %6 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_205 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %cst_195 : tensor<1x24x18x18xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%12 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x24x16x16xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x24x16x16xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %13 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x24x16x16xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %11 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_206 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %17 = tensor.empty() : tensor<1x96x8x8xf32>
    %18 = linalg.fill ins(%cst_200 : f32) outs(%17 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_206, %cst_194 : tensor<1x24x18x18xf32>, tensor<96x24x3x3xf32>) outs(%18 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_193, %cst_192, %cst_192, %cst_193 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%19 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x96x8x8xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<1x96x8x8xf32>) outs(%17 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x96x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %20 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%17 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x96x8x8xf32>
    %23 = tensor.empty() : tensor<1x48x8x8xf32>
    %24 = linalg.fill ins(%cst_200 : f32) outs(%23 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %cst_191 : tensor<1x96x8x8xf32>, tensor<48x96x1x1xf32>) outs(%24 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_190, %cst_189, %cst_189, %cst_190 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%25 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_207 = tensor.pad %26 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %27 = tensor.empty() : tensor<1x192x8x8xf32>
    %28 = linalg.fill ins(%cst_200 : f32) outs(%27 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_207, %cst_188 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%28 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_187, %cst_186, %cst_186, %cst_187 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%29 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x192x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x192x8x8xf32>) outs(%27 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x192x8x8xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%27 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x192x8x8xf32>
    %33 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_185 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%24 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %34 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %cst_190, %cst_189, %cst_189, %cst_190 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%33 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x48x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %26 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%23 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_208 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_208, %cst_184 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%28 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_187, %cst_186, %cst_186, %cst_187 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%36 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x192x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x192x8x8xf32>) outs(%27 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x192x8x8xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %37 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%27 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x192x8x8xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%39, %cst_183 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%24 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_190, %cst_189, %cst_189, %cst_190 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%40 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x48x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %35 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%23 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_209 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_209, %cst_182 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%28 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_187, %cst_186, %cst_186, %cst_187 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%43 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x192x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x192x8x8xf32>) outs(%27 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x192x8x8xf32>
    %46 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %44 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%27 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x192x8x8xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%46, %cst_181 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%24 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_190, %cst_189, %cst_189, %cst_190 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%47 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x48x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %42 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%23 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_210 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %50 = tensor.empty() : tensor<1x192x4x4xf32>
    %51 = linalg.fill ins(%cst_200 : f32) outs(%50 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_210, %cst_180 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%51 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_187, %cst_186, %cst_186, %cst_187 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%52 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x192x4x4xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x192x4x4xf32>) outs(%50 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x192x4x4xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %53 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%50 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x192x4x4xf32>
    %56 = tensor.empty() : tensor<1x64x4x4xf32>
    %57 = linalg.fill ins(%cst_200 : f32) outs(%56 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%55, %cst_179 : tensor<1x192x4x4xf32>, tensor<64x192x1x1xf32>) outs(%57 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %59 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%58 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x64x4x4xf32>
    %padded_211 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x64x4x4xf32> to tensor<1x64x6x6xf32>
    %60 = tensor.empty() : tensor<1x256x4x4xf32>
    %61 = linalg.fill ins(%cst_200 : f32) outs(%60 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_211, %cst_176 : tensor<1x64x6x6xf32>, tensor<256x64x3x3xf32>) outs(%61 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%62 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x256x4x4xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %63 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x4x4xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_173 : tensor<1x256x4x4xf32>, tensor<64x256x1x1xf32>) outs(%57 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%66 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x64x4x4xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %59 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%56 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x4x4xf32>
    %padded_212 = tensor.pad %68 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x64x4x4xf32> to tensor<1x64x6x6xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_212, %cst_172 : tensor<1x64x6x6xf32>, tensor<256x64x3x3xf32>) outs(%61 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%69 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x256x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %70 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x4x4xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_171 : tensor<1x256x4x4xf32>, tensor<64x256x1x1xf32>) outs(%57 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%73 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x64x4x4xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %68 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%56 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x4x4xf32>
    %padded_213 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x64x4x4xf32> to tensor<1x64x6x6xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_213, %cst_170 : tensor<1x64x6x6xf32>, tensor<256x64x3x3xf32>) outs(%61 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%76 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x4x4xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x256x4x4xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %77 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x4x4xf32>
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%79, %cst_169 : tensor<1x256x4x4xf32>, tensor<64x256x1x1xf32>) outs(%57 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %81 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %cst_178, %cst_177, %cst_177, %cst_178 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%80 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x64x4x4xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %75 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%56 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x4x4xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_168 : tensor<1x64x4x4xf32>, tensor<256x64x1x1xf32>) outs(%61 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%83 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x4x4xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x256x4x4xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%60 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_214 = tensor.pad %86 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %87 = tensor.empty() : tensor<1x256x2x2xf32>
    %88 = linalg.fill ins(%cst_200 : f32) outs(%87 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %collapsed = tensor.collapse_shape %cst_167 [[0, 1], [2], [3]] : tensor<256x1x3x3xf32> into tensor<256x3x3xf32>
    %89 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_214, %collapsed : tensor<1x256x6x6xf32>, tensor<256x3x3xf32>) outs(%88 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%89 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x2x2xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x256x2x2xf32>) outs(%87 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x256x2x2xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %90 : tensor<1x256x2x2xf32>, tensor<1x256x2x2xf32>) outs(%87 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x2x2xf32>
    %93 = tensor.empty() : tensor<1x256x1x1xf32>
    %94 = linalg.fill ins(%cst_200 : f32) outs(%93 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %95 = tensor.empty() : tensor<2x2xf32>
    %96 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %95 : tensor<1x256x2x2xf32>, tensor<2x2xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %98 = tensor.empty() : tensor<1x16x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_166 : tensor<16xf32>) outs(%98 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%97, %cst_165 : tensor<1x256x1x1xf32>, tensor<16x256x1x1xf32>) outs(%99 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %101 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x16x1x1xf32>) outs(%98 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x16x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %100 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%98 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x16x1x1xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_174 : tensor<256xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x1x1xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_164 : tensor<1x16x1x1xf32>, tensor<256x16x1x1xf32>) outs(%103 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %105 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x256x1x1xf32>
    %106 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %92 : tensor<1x256x1x1xf32>, tensor<1x256x2x2xf32>) outs(%87 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x2x2xf32>
    %107 = tensor.empty() : tensor<1x128x2x2xf32>
    %108 = linalg.fill ins(%cst_200 : f32) outs(%107 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%106, %cst_163 : tensor<1x256x2x2xf32>, tensor<128x256x1x1xf32>) outs(%108 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_162, %cst_161, %cst_161, %cst_162 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%109 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x128x2x2xf32>
    %111 = tensor.empty() : tensor<1x512x2x2xf32>
    %112 = linalg.fill ins(%cst_200 : f32) outs(%111 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_160 : tensor<1x128x2x2xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%113 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %114 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_215 = tensor.pad %116 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %collapsed_216 = tensor.collapse_shape %cst_157 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %117 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_215, %collapsed_216 : tensor<1x512x4x4xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%117 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %118 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %121 = tensor.empty() : tensor<1x512x1x1xf32>
    %122 = linalg.fill ins(%cst_200 : f32) outs(%121 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %123 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %95 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x1x1xf32>
    %125 = tensor.empty() : tensor<1x32x1x1xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_156 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%124, %cst_155 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x32x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %127 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x32x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_158 : tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x1x1xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_154 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%130 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %120 : tensor<1x512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_153 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_162, %cst_161, %cst_161, %cst_162 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%134 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x128x2x2xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %110 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%107 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x128x2x2xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_152 : tensor<1x128x2x2xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%137 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %138 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_217 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %collapsed_218 = tensor.collapse_shape %cst_151 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_217, %collapsed_218 : tensor<1x512x4x4xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%141 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %145 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %95 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x1x1xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_150 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x32x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %147 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x32x1x1xf32>
    %150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%149, %cst_149 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%130 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %144 : tensor<1x512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%152, %cst_148 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_162, %cst_161, %cst_161, %cst_162 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%153 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x128x2x2xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %136 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%107 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x128x2x2xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_147 : tensor<1x128x2x2xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%156 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %157 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_219 = tensor.pad %159 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %collapsed_220 = tensor.collapse_shape %cst_146 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %160 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_219, %collapsed_220 : tensor<1x512x4x4xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%160 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %161 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %164 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %95 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x1x1xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_145 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x32x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %166 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x32x1x1xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %cst_144 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%130 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %163 : tensor<1x512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_143 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_162, %cst_161, %cst_161, %cst_162 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%172 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x128x2x2xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %155 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%107 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x128x2x2xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%174, %cst_142 : tensor<1x128x2x2xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%175 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_221 = tensor.pad %178 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %collapsed_222 = tensor.collapse_shape %cst_141 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %179 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_221, %collapsed_222 : tensor<1x512x4x4xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%179 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %180 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %183 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%182, %95 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x1x1xf32>
    %185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_140 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x32x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %185 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x32x1x1xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %cst_139 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%130 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %182 : tensor<1x512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_138 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_162, %cst_161, %cst_161, %cst_162 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%191 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x128x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %174 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%107 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x128x2x2xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_137 : tensor<1x128x2x2xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%194 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %195 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_223 = tensor.pad %197 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %collapsed_224 = tensor.collapse_shape %cst_136 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %198 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_223, %collapsed_224 : tensor<1x512x4x4xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%198 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x512x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x2x2xf32>
    %201 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %199 : tensor<1x512x2x2xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %202 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %95 : tensor<1x512x2x2xf32>, tensor<2x2xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x1x1xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%203, %cst_135 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x32x1x1xf32>
    %206 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %204 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x32x1x1xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_134 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%130 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x512x1x1xf32>
    %209 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %201 : tensor<1x512x1x1xf32>, tensor<1x512x2x2xf32>) outs(%111 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x512x2x2xf32>
    %210 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %cst_133 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %211 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %cst_162, %cst_161, %cst_161, %cst_162 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%210 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x128x2x2xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %193 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%107 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x128x2x2xf32>
    %213 = tensor.empty() : tensor<1x768x2x2xf32>
    %214 = linalg.fill ins(%cst_200 : f32) outs(%213 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_132 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%214 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_131, %cst_130, %cst_130, %cst_131 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%215 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x768x2x2xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x768x2x2xf32>) outs(%213 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x768x2x2xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %216 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%213 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_225 = tensor.pad %218 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_226 = tensor.collapse_shape %cst_129 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %219 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_225, %collapsed_226 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%214 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_131, %cst_130, %cst_130, %cst_131 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%219 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x768x2x2xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x768x2x2xf32>) outs(%213 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x768x2x2xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %220 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%213 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x768x2x2xf32>
    %223 = tensor.empty() : tensor<1x768x1x1xf32>
    %224 = linalg.fill ins(%cst_200 : f32) outs(%223 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %225 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%222, %95 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%224 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x768x1x1xf32>) outs(%223 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x768x1x1xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_128 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x32x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %227 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x32x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_130 : tensor<768xf32>) outs(%223 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%229, %cst_127 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%230 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x768x1x1xf32>) outs(%223 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x768x1x1xf32>
    %233 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %222 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%213 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x768x2x2xf32>
    %234 = tensor.empty() : tensor<1x160x2x2xf32>
    %235 = linalg.fill ins(%cst_200 : f32) outs(%234 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_126 : tensor<1x768x2x2xf32>, tensor<160x768x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %237 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%236 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %238 = tensor.empty() : tensor<1x960x2x2xf32>
    %239 = linalg.fill ins(%cst_200 : f32) outs(%238 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%237, %cst_123 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%240 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %241 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_227 = tensor.pad %243 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_228 = tensor.collapse_shape %cst_120 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %244 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_227, %collapsed_228 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%244 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %245 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %248 = tensor.empty() : tensor<1x960x1x1xf32>
    %249 = linalg.fill ins(%cst_200 : f32) outs(%248 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %250 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%247, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %251 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %252 = tensor.empty() : tensor<1x40x1x1xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_119 : tensor<40xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %cst_118 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %254 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_121 : tensor<960xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %cst_117 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %247 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_116 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%261 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %237 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_115 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%264 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %265 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_229 = tensor.pad %267 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_230 = tensor.collapse_shape %cst_114 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %268 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_229, %collapsed_230 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %269 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%268 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %271 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %269 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %272 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%273, %cst_113 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %275 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %274 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_112 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %278 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %279 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %271 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %280 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%279, %cst_111 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %281 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%280 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %282 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %263 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %283 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %cst_110 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %284 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%283 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %285 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %284 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_231 = tensor.pad %286 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_232 = tensor.collapse_shape %cst_109 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %287 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_231, %collapsed_232 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %288 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%287 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %289 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %288 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %291 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%292, %cst_108 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %294 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %293 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_107 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %297 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %290 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%298, %cst_106 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %300 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%299 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %282 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %302 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %cst_105 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %303 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%302 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %304 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %303 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_233 = tensor.pad %305 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_234 = tensor.collapse_shape %cst_104 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %306 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_233, %collapsed_234 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %307 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%306 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %307 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %310 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_103 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %313 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %312 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_102 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %309 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %318 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %cst_101 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %319 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%318 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %301 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%320, %cst_100 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%321 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %324 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %322 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_235 = tensor.pad %324 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_236 = tensor.collapse_shape %cst_99 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %325 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_235, %collapsed_236 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %326 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%325 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %328 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %326 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %329 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_98 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %331 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%333, %cst_97 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %328 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_96 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%337 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %320 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%339, %cst_95 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%340 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_237 = tensor.pad %343 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_238 = tensor.collapse_shape %cst_94 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %344 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_237, %collapsed_238 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%344 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %345 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %348 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%347, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_93 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %350 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%352, %cst_92 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %347 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %356 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%355, %cst_91 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %357 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%356 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %358 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %339 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_90 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%359 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %362 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %360 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_239 = tensor.pad %362 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_240 = tensor.collapse_shape %cst_89 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %363 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_239, %collapsed_240 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%363 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %364 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %367 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %cst_88 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %369 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%371, %cst_87 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %366 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %375 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%374, %cst_86 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%375 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %377 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %358 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_85 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%378 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %379 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_241 = tensor.pad %381 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_242 = tensor.collapse_shape %cst_84 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %382 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_241, %collapsed_242 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %383 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%382 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %384 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %385 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %383 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %386 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%385, %95 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.divf %in, %cst_202 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %388 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%387, %cst_83 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %389 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %388 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %391 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %cst_82 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %392 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %393 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %385 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%393, %cst_81 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%235 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_125, %cst_124, %cst_124, %cst_125 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%394 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x160x2x2xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395, %377 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%234 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x160x2x2xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_80 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%239 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %398 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%397 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x2x2xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %398 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%238 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_243 = tensor.pad %400 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_244 = tensor.collapse_shape %cst_79 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %401 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_243, %collapsed_244 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%401 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x960x1x1xf32>
    %403 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %404 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %402 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %405 = tensor.empty() : tensor<1x1xf32>
    %406 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%404, %405 : tensor<1x960x1x1xf32>, tensor<1x1xf32>) outs(%249 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %407 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %cst_78 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%253 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x40x1x1xf32>
    %409 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %407 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%252 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x40x1x1xf32>
    %410 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%409, %cst_77 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x960x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %404 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%248 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x960x1x1xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %cst_76 : tensor<1x960x1x1xf32>, tensor<256x960x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %414 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%413 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %415 = tensor.empty() : tensor<1x1536x1x1xf32>
    %416 = linalg.fill ins(%cst_200 : f32) outs(%415 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %417 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%414, %cst_75 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %418 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%417 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %419 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %420 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419, %418 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_245 = tensor.pad %420 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_246 = tensor.collapse_shape %cst_72 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %421 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_245, %collapsed_246 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %422 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%421 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %423 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %424 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %422 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %425 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%424, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %426 = tensor.empty() : tensor<1x64x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_177 : tensor<64xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %428 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%425, %cst_71 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %429 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %430 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %428 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %431 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_73 : tensor<1536xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %432 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%430, %cst_70 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %434 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %424 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %435 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%434, %cst_69 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %436 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%435 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %437 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %414 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %438 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %cst_68 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %439 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%438 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %441 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440, %439 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_247 = tensor.pad %441 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_248 = tensor.collapse_shape %cst_67 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %442 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_247, %collapsed_248 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %443 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%442 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %444 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %445 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %443 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %446 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%445, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%446, %cst_66 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %448 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %449 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %447 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %450 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%449, %cst_65 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %452 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %445 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %453 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%452, %cst_64 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %454 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%453 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %455 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %437 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %456 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%455, %cst_63 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %457 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%456 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %458 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %459 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %457 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_249 = tensor.pad %459 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_250 = tensor.collapse_shape %cst_62 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %460 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_249, %collapsed_250 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %461 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%460 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %461 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %464 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%464, %cst_61 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %466 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %465 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %468 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%467, %cst_60 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %469 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %470 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %463 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_59 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%471 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %473 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %455 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %474 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%473, %cst_58 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %475 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%474 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %476 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %477 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %475 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_251 = tensor.pad %477 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_252 = tensor.collapse_shape %cst_57 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %478 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_251, %collapsed_252 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %479 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%478 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %479 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %482 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%481, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %483 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%482, %cst_56 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %484 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %483 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %486 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%485, %cst_55 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %488 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %481 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %489 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%488, %cst_54 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %490 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%489 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %491 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %473 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %492 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%491, %cst_53 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %493 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%492 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %494 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %495 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %493 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_253 = tensor.pad %495 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_254 = tensor.collapse_shape %cst_52 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %496 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_253, %collapsed_254 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %497 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%496 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %498 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %497 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %500 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %501 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%500, %cst_51 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %503 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502, %501 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %504 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%503, %cst_50 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505, %499 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %507 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%506, %cst_49 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %508 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%507 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %509 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %491 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %510 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%509, %cst_48 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %511 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%510 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %512 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %513 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %511 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_255 = tensor.pad %513 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_256 = tensor.collapse_shape %cst_47 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %514 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_255, %collapsed_256 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %515 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%514 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %516 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %515 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %518 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%517, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %519 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%518, %cst_46 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %519 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %522 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%521, %cst_45 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %517 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_44 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%525 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %509 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%527, %cst_43 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %529 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%528 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %530 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %529 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_257 = tensor.pad %531 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_258 = tensor.collapse_shape %cst_42 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %532 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_257, %collapsed_258 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%532 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %534 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %535 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %533 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %536 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%535, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %537 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%536, %cst_41 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %538 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %537 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %540 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%539, %cst_40 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %541 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %542 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %535 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %543 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%542, %cst_39 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %544 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%543 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %527 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %546 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%545, %cst_38 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %547 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%546 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548, %547 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_259 = tensor.pad %549 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_260 = tensor.collapse_shape %cst_37 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %550 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_259, %collapsed_260 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %551 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%550 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %552 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %553 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %551 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %554 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%553, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %555 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%554, %cst_36 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %557 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %555 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %558 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%557, %cst_35 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %560 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %553 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %561 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%560, %cst_34 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %562 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%561 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %563 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562, %545 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %564 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%563, %cst_33 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %565 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%564 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %567 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %565 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_261 = tensor.pad %567 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_262 = tensor.collapse_shape %cst_32 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %568 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_261, %collapsed_262 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %569 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%568 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %570 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %571 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %569 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %572 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%571, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %573 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%572, %cst_31 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %574 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %573 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %576 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%575, %cst_30 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %577 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %578 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %571 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %579 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%578, %cst_29 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %580 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%579 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %581 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %563 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %582 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%581, %cst_28 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %583 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%582 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %584 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %583 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_263 = tensor.pad %585 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_264 = tensor.collapse_shape %cst_27 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %586 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_263, %collapsed_264 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %587 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%586 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %588 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %589 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %587 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %590 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%589, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%590, %cst_26 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %592 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %591 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %594 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%593, %cst_25 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %595 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %596 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %589 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %597 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%596, %cst_24 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %598 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%597 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %599 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598, %581 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %600 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%599, %cst_23 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %601 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%600 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %602 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %603 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %601 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_265 = tensor.pad %603 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_266 = tensor.collapse_shape %cst_22 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %604 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_265, %collapsed_266 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %605 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%604 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %606 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %607 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %605 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %608 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%607, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %609 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%608, %cst_21 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %609 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %612 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%611, %cst_20 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %613 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %607 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %615 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%614, %cst_19 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %616 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%615 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %617 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %599 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %618 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%617, %cst_18 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %619 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%618 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %620 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %621 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %619 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_267 = tensor.pad %621 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_268 = tensor.collapse_shape %cst_17 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %622 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_267, %collapsed_268 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %623 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%622 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %624 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %625 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %623 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %626 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%625, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %627 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%626, %cst_16 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %628 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %627 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %630 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%629, %cst_15 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631, %625 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %633 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%632, %cst_14 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %634 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%633 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %617 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %636 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_13 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %637 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%636 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %638 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %639 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %637 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_269 = tensor.pad %639 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_270 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %640 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_269, %collapsed_270 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %641 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%640 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %642 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %643 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %641 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %644 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%643, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %645 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%644, %cst_11 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %646 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %647 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %645 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %648 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%647, %cst_10 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %650 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %643 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %651 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%650, %cst_9 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %652 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%651 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %635 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %654 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%653, %cst_8 : tensor<1x256x1x1xf32>, tensor<1536x256x1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %655 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%654 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %657 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656, %655 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %padded_271 = tensor.pad %657 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1536x1x1xf32> to tensor<1x1536x3x3xf32>
    %collapsed_272 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %658 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_271, %collapsed_272 : tensor<1x1536x3x3xf32>, tensor<1536x3x3xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %659 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%658 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1536x1x1xf32>
    %660 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %661 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %659 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %662 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%661, %405 : tensor<1x1536x1x1xf32>, tensor<1x1xf32>) outs(%416 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %663 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%662, %cst_6 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%427 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %664 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663 : tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x64x1x1xf32>
    %665 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664, %663 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%426 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x64x1x1xf32>
    %666 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%665, %cst_5 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%431 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %667 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666 : tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1536x1x1xf32>
    %668 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667, %661 : tensor<1x1536x1x1xf32>, tensor<1x1536x1x1xf32>) outs(%415 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1536x1x1xf32>
    %669 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%668, %cst_4 : tensor<1x1536x1x1xf32>, tensor<256x1536x1x1xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %670 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x256x1x1xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%669 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x256x1x1xf32>
    %671 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670, %653 : tensor<1x256x1x1xf32>, tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x256x1x1xf32>
    %672 = tensor.empty() : tensor<1x1280x1x1xf32>
    %673 = linalg.fill ins(%cst_200 : f32) outs(%672 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %674 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%671, %cst_3 : tensor<1x256x1x1xf32>, tensor<1280x256x1x1xf32>) outs(%673 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %675 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%674 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %in_275: f32, %in_276: f32, %in_277: f32, %out: f32):
      %685 = arith.truncf %cst_201 : f64 to f32
      %686 = arith.addf %in_277, %685 : f32
      %687 = math.rsqrt %686 : f32
      %688 = arith.subf %in, %in_276 : f32
      %689 = arith.mulf %688, %687 : f32
      %690 = arith.mulf %689, %in_274 : f32
      %691 = arith.addf %690, %in_275 : f32
      linalg.yield %691 : f32
    } -> tensor<1x1280x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x1280x1x1xf32>) outs(%672 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %685 = arith.negf %in : f32
      %686 = math.exp %685 : f32
      %687 = arith.addf %686, %cst_203 : f32
      %688 = arith.divf %cst_203, %687 : f32
      linalg.yield %688 : f32
    } -> tensor<1x1280x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %675 : tensor<1x1280x1x1xf32>, tensor<1x1280x1x1xf32>) outs(%672 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.mulf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1280x1x1xf32>
    %678 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%677, %405 : tensor<1x1280x1x1xf32>, tensor<1x1xf32>) outs(%673 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %collapsed_273 = tensor.collapse_shape %678 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %679 = tensor.empty() : tensor<1280x1000xf32>
    %680 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1280xf32>) outs(%679 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %681 = tensor.empty() : tensor<1x1000xf32>
    %682 = linalg.fill ins(%cst_200 : f32) outs(%681 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %683 = linalg.matmul ins(%collapsed_273, %680 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%682 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %684 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%683, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%681 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_274: f32, %out: f32):
      %685 = arith.addf %in, %in_274 : f32
      linalg.yield %685 : f32
    } -> tensor<1x1000xf32>
    return %684 : tensor<1x1000xf32>
  }
}
