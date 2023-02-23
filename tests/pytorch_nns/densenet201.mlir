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
    %cst = arith.constant dense<-0.001352e+00> : tensor<1000x1920xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1920xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1920xf32>
    %cst_3 = arith.constant dense<-0.005746e+00> : tensor<32x128x3x3xf32>
    %cst_4 = arith.constant dense<0.003520e+00> : tensor<128x1888x1x1xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<1888xf32>
    %cst_6 = arith.constant dense<1.000000e+00> : tensor<1888xf32>
    %cst_7 = arith.constant dense<-0.001537e+00> : tensor<32x128x3x3xf32>
    %cst_8 = arith.constant dense<-0.002288e+00> : tensor<128x1856x1x1xf32>
    %cst_9 = arith.constant dense<0.000000e+00> : tensor<1856xf32>
    %cst_10 = arith.constant dense<1.000000e+00> : tensor<1856xf32>
    %cst_11 = arith.constant dense<0.017111e+00> : tensor<32x128x3x3xf32>
    %cst_12 = arith.constant dense<-0.004662e+00> : tensor<128x1824x1x1xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<1824xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<1824xf32>
    %cst_15 = arith.constant dense<0.019887e+00> : tensor<32x128x3x3xf32>
    %cst_16 = arith.constant dense<0.014793e+00> : tensor<128x1792x1x1xf32>
    %cst_17 = arith.constant dense<-0.011599e+00> : tensor<32x128x3x3xf32>
    %cst_18 = arith.constant dense<-0.018433e+00> : tensor<128x1760x1x1xf32>
    %cst_19 = arith.constant dense<-0.015062e+00> : tensor<32x128x3x3xf32>
    %cst_20 = arith.constant dense<0.001013e+00> : tensor<128x1728x1x1xf32>
    %cst_21 = arith.constant dense<-0.005738e+00> : tensor<32x128x3x3xf32>
    %cst_22 = arith.constant dense<0.011828e+00> : tensor<128x1696x1x1xf32>
    %cst_23 = arith.constant dense<-0.016148e+00> : tensor<32x128x3x3xf32>
    %cst_24 = arith.constant dense<-0.009576e+00> : tensor<128x1664x1x1xf32>
    %cst_25 = arith.constant dense<0.005919e+00> : tensor<32x128x3x3xf32>
    %cst_26 = arith.constant dense<0.005513e+00> : tensor<128x1632x1x1xf32>
    %cst_27 = arith.constant dense<0.010414e+00> : tensor<32x128x3x3xf32>
    %cst_28 = arith.constant dense<0.006510e+00> : tensor<128x1600x1x1xf32>
    %cst_29 = arith.constant dense<0.008699e+00> : tensor<32x128x3x3xf32>
    %cst_30 = arith.constant dense<0.000893e+00> : tensor<128x1568x1x1xf32>
    %cst_31 = arith.constant dense<0.000829e+00> : tensor<32x128x3x3xf32>
    %cst_32 = arith.constant dense<0.001145e+00> : tensor<128x1536x1x1xf32>
    %cst_33 = arith.constant dense<-0.015798e+00> : tensor<32x128x3x3xf32>
    %cst_34 = arith.constant dense<-0.006498e+00> : tensor<128x1504x1x1xf32>
    %cst_35 = arith.constant dense<-0.009245e+00> : tensor<32x128x3x3xf32>
    %cst_36 = arith.constant dense<0.011266e+00> : tensor<128x1472x1x1xf32>
    %cst_37 = arith.constant dense<0.011583e+00> : tensor<32x128x3x3xf32>
    %cst_38 = arith.constant dense<0.011874e+00> : tensor<128x1440x1x1xf32>
    %cst_39 = arith.constant dense<0.003802e+00> : tensor<32x128x3x3xf32>
    %cst_40 = arith.constant dense<0.010600e+00> : tensor<128x1408x1x1xf32>
    %cst_41 = arith.constant dense<0.000615e+00> : tensor<32x128x3x3xf32>
    %cst_42 = arith.constant dense<0.002635e+00> : tensor<128x1376x1x1xf32>
    %cst_43 = arith.constant dense<0.001246e+00> : tensor<32x128x3x3xf32>
    %cst_44 = arith.constant dense<0.004880e+00> : tensor<128x1344x1x1xf32>
    %cst_45 = arith.constant dense<0.010045e+00> : tensor<32x128x3x3xf32>
    %cst_46 = arith.constant dense<-0.001789e+00> : tensor<128x1312x1x1xf32>
    %cst_47 = arith.constant dense<-0.011324e+00> : tensor<32x128x3x3xf32>
    %cst_48 = arith.constant dense<0.001577e+00> : tensor<128x1280x1x1xf32>
    %cst_49 = arith.constant dense<-0.009990e+00> : tensor<32x128x3x3xf32>
    %cst_50 = arith.constant dense<-0.000957e+00> : tensor<128x1248x1x1xf32>
    %cst_51 = arith.constant dense<-0.000167e+00> : tensor<32x128x3x3xf32>
    %cst_52 = arith.constant dense<0.015098e+00> : tensor<128x1216x1x1xf32>
    %cst_53 = arith.constant dense<0.009191e+00> : tensor<32x128x3x3xf32>
    %cst_54 = arith.constant dense<-0.006738e+00> : tensor<128x1184x1x1xf32>
    %cst_55 = arith.constant dense<-0.010614e+00> : tensor<32x128x3x3xf32>
    %cst_56 = arith.constant dense<0.001933e+00> : tensor<128x1152x1x1xf32>
    %cst_57 = arith.constant dense<-0.003320e+00> : tensor<32x128x3x3xf32>
    %cst_58 = arith.constant dense<-0.006460e+00> : tensor<128x1120x1x1xf32>
    %cst_59 = arith.constant dense<0.007181e+00> : tensor<32x128x3x3xf32>
    %cst_60 = arith.constant dense<0.010564e+00> : tensor<128x1088x1x1xf32>
    %cst_61 = arith.constant dense<0.023104e+00> : tensor<32x128x3x3xf32>
    %cst_62 = arith.constant dense<-0.009757e+00> : tensor<128x1056x1x1xf32>
    %cst_63 = arith.constant dense<-0.010489e+00> : tensor<32x128x3x3xf32>
    %cst_64 = arith.constant dense<-0.006685e+00> : tensor<128x1024x1x1xf32>
    %cst_65 = arith.constant dense<-0.013021e+00> : tensor<32x128x3x3xf32>
    %cst_66 = arith.constant dense<-0.003428e+00> : tensor<128x992x1x1xf32>
    %cst_67 = arith.constant dense<-0.004993e+00> : tensor<32x128x3x3xf32>
    %cst_68 = arith.constant dense<0.004685e+00> : tensor<128x960x1x1xf32>
    %cst_69 = arith.constant dense<0.001664e+00> : tensor<32x128x3x3xf32>
    %cst_70 = arith.constant dense<-0.014830e+00> : tensor<128x928x1x1xf32>
    %cst_71 = arith.constant dense<-0.010073e+00> : tensor<32x128x3x3xf32>
    %cst_72 = arith.constant dense<0.003645e+00> : tensor<128x896x1x1xf32>
    %cst_73 = arith.constant dense<0.012776e+00> : tensor<896x1792x1x1xf32>
    %cst_74 = arith.constant dense<0.000000e+00> : tensor<1792xf32>
    %cst_75 = arith.constant dense<1.000000e+00> : tensor<1792xf32>
    %cst_76 = arith.constant dense<-0.003922e+00> : tensor<32x128x3x3xf32>
    %cst_77 = arith.constant dense<0.002140e+00> : tensor<128x1760x1x1xf32>
    %cst_78 = arith.constant dense<0.000000e+00> : tensor<1760xf32>
    %cst_79 = arith.constant dense<1.000000e+00> : tensor<1760xf32>
    %cst_80 = arith.constant dense<-0.005361e+00> : tensor<32x128x3x3xf32>
    %cst_81 = arith.constant dense<-0.006932e+00> : tensor<128x1728x1x1xf32>
    %cst_82 = arith.constant dense<0.000000e+00> : tensor<1728xf32>
    %cst_83 = arith.constant dense<1.000000e+00> : tensor<1728xf32>
    %cst_84 = arith.constant dense<0.009371e+00> : tensor<32x128x3x3xf32>
    %cst_85 = arith.constant dense<0.011582e+00> : tensor<128x1696x1x1xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<1696xf32>
    %cst_87 = arith.constant dense<1.000000e+00> : tensor<1696xf32>
    %cst_88 = arith.constant dense<-0.024039e+00> : tensor<32x128x3x3xf32>
    %cst_89 = arith.constant dense<0.003730e+00> : tensor<128x1664x1x1xf32>
    %cst_90 = arith.constant dense<0.000000e+00> : tensor<1664xf32>
    %cst_91 = arith.constant dense<1.000000e+00> : tensor<1664xf32>
    %cst_92 = arith.constant dense<0.012986e+00> : tensor<32x128x3x3xf32>
    %cst_93 = arith.constant dense<-0.002489e+00> : tensor<128x1632x1x1xf32>
    %cst_94 = arith.constant dense<0.000000e+00> : tensor<1632xf32>
    %cst_95 = arith.constant dense<1.000000e+00> : tensor<1632xf32>
    %cst_96 = arith.constant dense<-0.002629e+00> : tensor<32x128x3x3xf32>
    %cst_97 = arith.constant dense<0.003263e+00> : tensor<128x1600x1x1xf32>
    %cst_98 = arith.constant dense<0.000000e+00> : tensor<1600xf32>
    %cst_99 = arith.constant dense<1.000000e+00> : tensor<1600xf32>
    %cst_100 = arith.constant dense<-0.001848e+00> : tensor<32x128x3x3xf32>
    %cst_101 = arith.constant dense<-0.006515e+00> : tensor<128x1568x1x1xf32>
    %cst_102 = arith.constant dense<0.000000e+00> : tensor<1568xf32>
    %cst_103 = arith.constant dense<1.000000e+00> : tensor<1568xf32>
    %cst_104 = arith.constant dense<0.005072e+00> : tensor<32x128x3x3xf32>
    %cst_105 = arith.constant dense<-0.013467e+00> : tensor<128x1536x1x1xf32>
    %cst_106 = arith.constant dense<0.000000e+00> : tensor<1536xf32>
    %cst_107 = arith.constant dense<1.000000e+00> : tensor<1536xf32>
    %cst_108 = arith.constant dense<-0.019471e+00> : tensor<32x128x3x3xf32>
    %cst_109 = arith.constant dense<-0.014372e+00> : tensor<128x1504x1x1xf32>
    %cst_110 = arith.constant dense<0.000000e+00> : tensor<1504xf32>
    %cst_111 = arith.constant dense<1.000000e+00> : tensor<1504xf32>
    %cst_112 = arith.constant dense<0.001875e+00> : tensor<32x128x3x3xf32>
    %cst_113 = arith.constant dense<-0.009511e+00> : tensor<128x1472x1x1xf32>
    %cst_114 = arith.constant dense<0.000000e+00> : tensor<1472xf32>
    %cst_115 = arith.constant dense<1.000000e+00> : tensor<1472xf32>
    %cst_116 = arith.constant dense<-0.004007e+00> : tensor<32x128x3x3xf32>
    %cst_117 = arith.constant dense<-0.014599e+00> : tensor<128x1440x1x1xf32>
    %cst_118 = arith.constant dense<0.000000e+00> : tensor<1440xf32>
    %cst_119 = arith.constant dense<1.000000e+00> : tensor<1440xf32>
    %cst_120 = arith.constant dense<-0.010692e+00> : tensor<32x128x3x3xf32>
    %cst_121 = arith.constant dense<-0.003991e+00> : tensor<128x1408x1x1xf32>
    %cst_122 = arith.constant dense<0.000000e+00> : tensor<1408xf32>
    %cst_123 = arith.constant dense<1.000000e+00> : tensor<1408xf32>
    %cst_124 = arith.constant dense<0.001285e+00> : tensor<32x128x3x3xf32>
    %cst_125 = arith.constant dense<-0.007934e+00> : tensor<128x1376x1x1xf32>
    %cst_126 = arith.constant dense<0.000000e+00> : tensor<1376xf32>
    %cst_127 = arith.constant dense<1.000000e+00> : tensor<1376xf32>
    %cst_128 = arith.constant dense<-0.002269e+00> : tensor<32x128x3x3xf32>
    %cst_129 = arith.constant dense<-0.005486e+00> : tensor<128x1344x1x1xf32>
    %cst_130 = arith.constant dense<0.000000e+00> : tensor<1344xf32>
    %cst_131 = arith.constant dense<1.000000e+00> : tensor<1344xf32>
    %cst_132 = arith.constant dense<-0.002929e+00> : tensor<32x128x3x3xf32>
    %cst_133 = arith.constant dense<0.001066e+00> : tensor<128x1312x1x1xf32>
    %cst_134 = arith.constant dense<0.000000e+00> : tensor<1312xf32>
    %cst_135 = arith.constant dense<1.000000e+00> : tensor<1312xf32>
    %cst_136 = arith.constant dense<-0.014822e+00> : tensor<32x128x3x3xf32>
    %cst_137 = arith.constant dense<-0.011124e+00> : tensor<128x1280x1x1xf32>
    %cst_138 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_139 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_140 = arith.constant dense<0.006314e+00> : tensor<32x128x3x3xf32>
    %cst_141 = arith.constant dense<-0.004984e+00> : tensor<128x1248x1x1xf32>
    %cst_142 = arith.constant dense<0.000000e+00> : tensor<1248xf32>
    %cst_143 = arith.constant dense<1.000000e+00> : tensor<1248xf32>
    %cst_144 = arith.constant dense<-0.006223e+00> : tensor<32x128x3x3xf32>
    %cst_145 = arith.constant dense<-0.005536e+00> : tensor<128x1216x1x1xf32>
    %cst_146 = arith.constant dense<0.000000e+00> : tensor<1216xf32>
    %cst_147 = arith.constant dense<1.000000e+00> : tensor<1216xf32>
    %cst_148 = arith.constant dense<-0.005150e+00> : tensor<32x128x3x3xf32>
    %cst_149 = arith.constant dense<-0.000446e+00> : tensor<128x1184x1x1xf32>
    %cst_150 = arith.constant dense<0.000000e+00> : tensor<1184xf32>
    %cst_151 = arith.constant dense<1.000000e+00> : tensor<1184xf32>
    %cst_152 = arith.constant dense<0.018151e+00> : tensor<32x128x3x3xf32>
    %cst_153 = arith.constant dense<0.003718e+00> : tensor<128x1152x1x1xf32>
    %cst_154 = arith.constant dense<0.000000e+00> : tensor<1152xf32>
    %cst_155 = arith.constant dense<1.000000e+00> : tensor<1152xf32>
    %cst_156 = arith.constant dense<0.003346e+00> : tensor<32x128x3x3xf32>
    %cst_157 = arith.constant dense<-0.002046e+00> : tensor<128x1120x1x1xf32>
    %cst_158 = arith.constant dense<0.000000e+00> : tensor<1120xf32>
    %cst_159 = arith.constant dense<1.000000e+00> : tensor<1120xf32>
    %cst_160 = arith.constant dense<0.010932e+00> : tensor<32x128x3x3xf32>
    %cst_161 = arith.constant dense<0.003936e+00> : tensor<128x1088x1x1xf32>
    %cst_162 = arith.constant dense<0.000000e+00> : tensor<1088xf32>
    %cst_163 = arith.constant dense<1.000000e+00> : tensor<1088xf32>
    %cst_164 = arith.constant dense<-0.002093e+00> : tensor<32x128x3x3xf32>
    %cst_165 = arith.constant dense<-0.017993e+00> : tensor<128x1056x1x1xf32>
    %cst_166 = arith.constant dense<0.000000e+00> : tensor<1056xf32>
    %cst_167 = arith.constant dense<1.000000e+00> : tensor<1056xf32>
    %cst_168 = arith.constant dense<0.010951e+00> : tensor<32x128x3x3xf32>
    %cst_169 = arith.constant dense<0.005144e+00> : tensor<128x1024x1x1xf32>
    %cst_170 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_171 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_172 = arith.constant dense<-0.016706e+00> : tensor<32x128x3x3xf32>
    %cst_173 = arith.constant dense<-0.017182e+00> : tensor<128x992x1x1xf32>
    %cst_174 = arith.constant dense<0.000000e+00> : tensor<992xf32>
    %cst_175 = arith.constant dense<1.000000e+00> : tensor<992xf32>
    %cst_176 = arith.constant dense<-0.005092e+00> : tensor<32x128x3x3xf32>
    %cst_177 = arith.constant dense<0.002776e+00> : tensor<128x960x1x1xf32>
    %cst_178 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_179 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_180 = arith.constant dense<-0.005176e+00> : tensor<32x128x3x3xf32>
    %cst_181 = arith.constant dense<-0.001958e+00> : tensor<128x928x1x1xf32>
    %cst_182 = arith.constant dense<0.000000e+00> : tensor<928xf32>
    %cst_183 = arith.constant dense<1.000000e+00> : tensor<928xf32>
    %cst_184 = arith.constant dense<-0.007307e+00> : tensor<32x128x3x3xf32>
    %cst_185 = arith.constant dense<0.002038e+00> : tensor<128x896x1x1xf32>
    %cst_186 = arith.constant dense<0.000000e+00> : tensor<896xf32>
    %cst_187 = arith.constant dense<1.000000e+00> : tensor<896xf32>
    %cst_188 = arith.constant dense<-0.005863e+00> : tensor<32x128x3x3xf32>
    %cst_189 = arith.constant dense<0.004988e+00> : tensor<128x864x1x1xf32>
    %cst_190 = arith.constant dense<0.000000e+00> : tensor<864xf32>
    %cst_191 = arith.constant dense<1.000000e+00> : tensor<864xf32>
    %cst_192 = arith.constant dense<0.003174e+00> : tensor<32x128x3x3xf32>
    %cst_193 = arith.constant dense<0.018775e+00> : tensor<128x832x1x1xf32>
    %cst_194 = arith.constant dense<0.000000e+00> : tensor<832xf32>
    %cst_195 = arith.constant dense<1.000000e+00> : tensor<832xf32>
    %cst_196 = arith.constant dense<0.013482e+00> : tensor<32x128x3x3xf32>
    %cst_197 = arith.constant dense<-0.004668e+00> : tensor<128x800x1x1xf32>
    %cst_198 = arith.constant dense<0.000000e+00> : tensor<800xf32>
    %cst_199 = arith.constant dense<1.000000e+00> : tensor<800xf32>
    %cst_200 = arith.constant dense<0.015295e+00> : tensor<32x128x3x3xf32>
    %cst_201 = arith.constant dense<-0.016863e+00> : tensor<128x768x1x1xf32>
    %cst_202 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_203 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_204 = arith.constant dense<-0.008257e+00> : tensor<32x128x3x3xf32>
    %cst_205 = arith.constant dense<-0.004070e+00> : tensor<128x736x1x1xf32>
    %cst_206 = arith.constant dense<0.000000e+00> : tensor<736xf32>
    %cst_207 = arith.constant dense<1.000000e+00> : tensor<736xf32>
    %cst_208 = arith.constant dense<0.014229e+00> : tensor<32x128x3x3xf32>
    %cst_209 = arith.constant dense<-0.023709e+00> : tensor<128x704x1x1xf32>
    %cst_210 = arith.constant dense<0.000000e+00> : tensor<704xf32>
    %cst_211 = arith.constant dense<1.000000e+00> : tensor<704xf32>
    %cst_212 = arith.constant dense<-0.013601e+00> : tensor<32x128x3x3xf32>
    %cst_213 = arith.constant dense<0.014580e+00> : tensor<128x672x1x1xf32>
    %cst_214 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_215 = arith.constant dense<1.000000e+00> : tensor<672xf32>
    %cst_216 = arith.constant dense<0.008648e+00> : tensor<32x128x3x3xf32>
    %cst_217 = arith.constant dense<-0.003717e+00> : tensor<128x640x1x1xf32>
    %cst_218 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_219 = arith.constant dense<1.000000e+00> : tensor<640xf32>
    %cst_220 = arith.constant dense<-0.005462e+00> : tensor<32x128x3x3xf32>
    %cst_221 = arith.constant dense<-0.009980e+00> : tensor<128x608x1x1xf32>
    %cst_222 = arith.constant dense<0.000000e+00> : tensor<608xf32>
    %cst_223 = arith.constant dense<1.000000e+00> : tensor<608xf32>
    %cst_224 = arith.constant dense<0.003529e+00> : tensor<32x128x3x3xf32>
    %cst_225 = arith.constant dense<0.011006e+00> : tensor<128x576x1x1xf32>
    %cst_226 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_227 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_228 = arith.constant dense<-0.019809e+00> : tensor<32x128x3x3xf32>
    %cst_229 = arith.constant dense<0.006981e+00> : tensor<128x544x1x1xf32>
    %cst_230 = arith.constant dense<0.000000e+00> : tensor<544xf32>
    %cst_231 = arith.constant dense<1.000000e+00> : tensor<544xf32>
    %cst_232 = arith.constant dense<-0.009128e+00> : tensor<32x128x3x3xf32>
    %cst_233 = arith.constant dense<0.014955e+00> : tensor<128x512x1x1xf32>
    %cst_234 = arith.constant dense<0.011743e+00> : tensor<32x128x3x3xf32>
    %cst_235 = arith.constant dense<0.008082e+00> : tensor<128x480x1x1xf32>
    %cst_236 = arith.constant dense<-0.001049e+00> : tensor<32x128x3x3xf32>
    %cst_237 = arith.constant dense<-0.006841e+00> : tensor<128x448x1x1xf32>
    %cst_238 = arith.constant dense<-0.019757e+00> : tensor<32x128x3x3xf32>
    %cst_239 = arith.constant dense<0.006534e+00> : tensor<128x416x1x1xf32>
    %cst_240 = arith.constant dense<0.005876e+00> : tensor<32x128x3x3xf32>
    %cst_241 = arith.constant dense<0.008288e+00> : tensor<128x384x1x1xf32>
    %cst_242 = arith.constant dense<-0.001201e+00> : tensor<32x128x3x3xf32>
    %cst_243 = arith.constant dense<0.003727e+00> : tensor<128x352x1x1xf32>
    %cst_244 = arith.constant dense<-0.011941e+00> : tensor<32x128x3x3xf32>
    %cst_245 = arith.constant dense<-0.014202e+00> : tensor<128x320x1x1xf32>
    %cst_246 = arith.constant dense<-0.009959e+00> : tensor<32x128x3x3xf32>
    %cst_247 = arith.constant dense<0.008941e+00> : tensor<128x288x1x1xf32>
    %cst_248 = arith.constant dense<-0.003312e+00> : tensor<32x128x3x3xf32>
    %cst_249 = arith.constant dense<0.006191e+00> : tensor<128x256x1x1xf32>
    %cst_250 = arith.constant dense<0.001433e+00> : tensor<256x512x1x1xf32>
    %cst_251 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_252 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_253 = arith.constant dense<0.008854e+00> : tensor<32x128x3x3xf32>
    %cst_254 = arith.constant dense<-0.010788e+00> : tensor<128x480x1x1xf32>
    %cst_255 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_256 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_257 = arith.constant dense<-0.012646e+00> : tensor<32x128x3x3xf32>
    %cst_258 = arith.constant dense<-0.008757e+00> : tensor<128x448x1x1xf32>
    %cst_259 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_260 = arith.constant dense<1.000000e+00> : tensor<448xf32>
    %cst_261 = arith.constant dense<-0.008724e+00> : tensor<32x128x3x3xf32>
    %cst_262 = arith.constant dense<-0.013996e+00> : tensor<128x416x1x1xf32>
    %cst_263 = arith.constant dense<0.000000e+00> : tensor<416xf32>
    %cst_264 = arith.constant dense<1.000000e+00> : tensor<416xf32>
    %cst_265 = arith.constant dense<0.002737e+00> : tensor<32x128x3x3xf32>
    %cst_266 = arith.constant dense<0.006178e+00> : tensor<128x384x1x1xf32>
    %cst_267 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_268 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_269 = arith.constant dense<-0.001172e+00> : tensor<32x128x3x3xf32>
    %cst_270 = arith.constant dense<-0.007943e+00> : tensor<128x352x1x1xf32>
    %cst_271 = arith.constant dense<0.000000e+00> : tensor<352xf32>
    %cst_272 = arith.constant dense<1.000000e+00> : tensor<352xf32>
    %cst_273 = arith.constant dense<0.009123e+00> : tensor<32x128x3x3xf32>
    %cst_274 = arith.constant dense<-0.000044e+00> : tensor<128x320x1x1xf32>
    %cst_275 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_276 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_277 = arith.constant dense<0.010071e+00> : tensor<32x128x3x3xf32>
    %cst_278 = arith.constant dense<0.015403e+00> : tensor<128x288x1x1xf32>
    %cst_279 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_280 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_281 = arith.constant dense<-0.010726e+00> : tensor<32x128x3x3xf32>
    %cst_282 = arith.constant dense<0.013791e+00> : tensor<128x256x1x1xf32>
    %cst_283 = arith.constant dense<0.014451e+00> : tensor<32x128x3x3xf32>
    %cst_284 = arith.constant dense<0.002563e+00> : tensor<128x224x1x1xf32>
    %cst_285 = arith.constant dense<-0.001817e+00> : tensor<32x128x3x3xf32>
    %cst_286 = arith.constant dense<0.014533e+00> : tensor<128x192x1x1xf32>
    %cst_287 = arith.constant dense<-0.005570e+00> : tensor<32x128x3x3xf32>
    %cst_288 = arith.constant dense<0.007562e+00> : tensor<128x160x1x1xf32>
    %cst_289 = arith.constant dense<0.017173e+00> : tensor<32x128x3x3xf32>
    %cst_290 = arith.constant dense<0.003475e+00> : tensor<128x128x1x1xf32>
    %cst_291 = arith.constant dense<0.002333e+00> : tensor<128x256x1x1xf32>
    %cst_292 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_293 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_294 = arith.constant dense<0.009433e+00> : tensor<32x128x3x3xf32>
    %cst_295 = arith.constant dense<-0.000449e+00> : tensor<128x224x1x1xf32>
    %cst_296 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_297 = arith.constant dense<1.000000e+00> : tensor<224xf32>
    %cst_298 = arith.constant dense<0.012569e+00> : tensor<32x128x3x3xf32>
    %cst_299 = arith.constant dense<-0.001212e+00> : tensor<128x192x1x1xf32>
    %cst_300 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_301 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_302 = arith.constant dense<-0.008668e+00> : tensor<32x128x3x3xf32>
    %cst_303 = arith.constant dense<-0.000105e+00> : tensor<128x160x1x1xf32>
    %cst_304 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_305 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_306 = arith.constant dense<0.003831e+00> : tensor<32x128x3x3xf32>
    %cst_307 = arith.constant dense<0.002275e+00> : tensor<128x128x1x1xf32>
    %cst_308 = arith.constant dense<0.016772e+00> : tensor<32x128x3x3xf32>
    %cst_309 = arith.constant dense<0.003430e+00> : tensor<128x96x1x1xf32>
    %cst_310 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_311 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_312 = arith.constant dense<0.014123e+00> : tensor<32x128x3x3xf32>
    %cst_313 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_314 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_315 = arith.constant dense<-0.005955e+00> : tensor<128x64x1x1xf32>
    %cst_316 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_317 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_318 = arith.constant dense<-0.011624e+00> : tensor<64x3x7x7xf32>
    %cst_319 = arith.constant 0.000000e+00 : f32
    %cst_320 = arith.constant -3.40282347E+38 : f32
    %cst_321 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %cst_322 = arith.constant 4.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_319 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_318 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_317, %cst_316, %cst_316, %cst_317 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_323 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_320 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_320 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_323, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %10 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %cst_317, %cst_316, %cst_316, %cst_317 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%9 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x64x8x8xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x64x8x8xf32>
    %12 = tensor.empty() : tensor<1x128x8x8xf32>
    %13 = linalg.fill ins(%cst_319 : f32) outs(%12 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%11, %cst_315 : tensor<1x64x8x8xf32>, tensor<128x64x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%14 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_324 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %17 = tensor.empty() : tensor<1x32x8x8xf32>
    %18 = linalg.fill ins(%cst_319 : f32) outs(%17 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_324, %cst_312 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %20 = tensor.empty() : tensor<1x96x8x8xf32>
    %inserted_slice = tensor.insert_slice %9 into %20[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x96x8x8xf32>
    %inserted_slice_325 = tensor.insert_slice %19 into %inserted_slice[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_325, %cst_311, %cst_310, %cst_310, %cst_311 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%inserted_slice_325 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x96x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x96x8x8xf32>) outs(%20 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x96x8x8xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %cst_309 : tensor<1x96x8x8xf32>, tensor<128x96x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %24 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%23 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_326 = tensor.pad %25 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_326, %cst_308 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %inserted_slice_327 = tensor.insert_slice %9 into %12[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x128x8x8xf32>
    %inserted_slice_328 = tensor.insert_slice %19 into %inserted_slice_327[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x128x8x8xf32>
    %inserted_slice_329 = tensor.insert_slice %26 into %inserted_slice_328[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_329, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%inserted_slice_329 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %cst_307 : tensor<1x128x8x8xf32>, tensor<128x128x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_330 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_330, %cst_306 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %33 = tensor.empty() : tensor<1x160x8x8xf32>
    %inserted_slice_331 = tensor.insert_slice %9 into %33[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x160x8x8xf32>
    %inserted_slice_332 = tensor.insert_slice %19 into %inserted_slice_331[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x160x8x8xf32>
    %inserted_slice_333 = tensor.insert_slice %26 into %inserted_slice_332[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x160x8x8xf32>
    %inserted_slice_334 = tensor.insert_slice %32 into %inserted_slice_333[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x160x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %34 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_334, %cst_305, %cst_304, %cst_304, %cst_305 : tensor<1x160x8x8xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%inserted_slice_334 : tensor<1x160x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x160x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x160x8x8xf32>) outs(%33 : tensor<1x160x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x160x8x8xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%35, %cst_303 : tensor<1x160x8x8xf32>, tensor<128x160x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_335 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_335, %cst_302 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %40 = tensor.empty() : tensor<1x192x8x8xf32>
    %inserted_slice_336 = tensor.insert_slice %9 into %40[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_337 = tensor.insert_slice %19 into %inserted_slice_336[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_338 = tensor.insert_slice %26 into %inserted_slice_337[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_339 = tensor.insert_slice %32 into %inserted_slice_338[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_340 = tensor.insert_slice %39 into %inserted_slice_339[0, 160, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_340, %cst_301, %cst_300, %cst_300, %cst_301 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%inserted_slice_340 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x192x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x192x8x8xf32>) outs(%40 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x192x8x8xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%42, %cst_299 : tensor<1x192x8x8xf32>, tensor<128x192x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%43 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_341 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_341, %cst_298 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %47 = tensor.empty() : tensor<1x224x8x8xf32>
    %inserted_slice_342 = tensor.insert_slice %9 into %47[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_343 = tensor.insert_slice %19 into %inserted_slice_342[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_344 = tensor.insert_slice %26 into %inserted_slice_343[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_345 = tensor.insert_slice %32 into %inserted_slice_344[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_346 = tensor.insert_slice %39 into %inserted_slice_345[0, 160, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    %inserted_slice_347 = tensor.insert_slice %46 into %inserted_slice_346[0, 192, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x224x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_347, %cst_297, %cst_296, %cst_296, %cst_297 : tensor<1x224x8x8xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%inserted_slice_347 : tensor<1x224x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x224x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x224x8x8xf32>) outs(%47 : tensor<1x224x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x224x8x8xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_295 : tensor<1x224x8x8xf32>, tensor<128x224x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%50 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x8x8xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x128x8x8xf32>) outs(%12 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_348 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_348, %cst_294 : tensor<1x128x10x10xf32>, tensor<32x128x3x3xf32>) outs(%18 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %54 = tensor.empty() : tensor<1x256x8x8xf32>
    %inserted_slice_349 = tensor.insert_slice %9 into %54[0, 0, 0, 0] [1, 64, 8, 8] [1, 1, 1, 1] : tensor<1x64x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_350 = tensor.insert_slice %19 into %inserted_slice_349[0, 64, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_351 = tensor.insert_slice %26 into %inserted_slice_350[0, 96, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_352 = tensor.insert_slice %32 into %inserted_slice_351[0, 128, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_353 = tensor.insert_slice %39 into %inserted_slice_352[0, 160, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_354 = tensor.insert_slice %46 into %inserted_slice_353[0, 192, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    %inserted_slice_355 = tensor.insert_slice %53 into %inserted_slice_354[0, 224, 0, 0] [1, 32, 8, 8] [1, 1, 1, 1] : tensor<1x32x8x8xf32> into tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_355, %cst_293, %cst_292, %cst_292, %cst_293 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%inserted_slice_355 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x256x8x8xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x256x8x8xf32>) outs(%54 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x256x8x8xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%56, %cst_291 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%13 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %58 = tensor.empty() : tensor<1x128x4x4xf32>
    %59 = linalg.fill ins(%cst_319 : f32) outs(%58 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %60 = tensor.empty() : tensor<2x2xf32>
    %61 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%57, %60 : tensor<1x128x8x8xf32>, tensor<2x2xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.divf %in, %cst_322 : f32
      linalg.yield %744 : f32
    } -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%62 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%64, %cst_290 : tensor<1x128x4x4xf32>, tensor<128x128x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%65 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_356 = tensor.pad %67 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %68 = tensor.empty() : tensor<1x32x4x4xf32>
    %69 = linalg.fill ins(%cst_319 : f32) outs(%68 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_356, %cst_289 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %71 = tensor.empty() : tensor<1x160x4x4xf32>
    %inserted_slice_357 = tensor.insert_slice %62 into %71[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x160x4x4xf32>
    %inserted_slice_358 = tensor.insert_slice %70 into %inserted_slice_357[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x160x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_358, %cst_305, %cst_304, %cst_304, %cst_305 : tensor<1x160x4x4xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%inserted_slice_358 : tensor<1x160x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x160x4x4xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x160x4x4xf32>) outs(%71 : tensor<1x160x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x160x4x4xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%73, %cst_288 : tensor<1x160x4x4xf32>, tensor<128x160x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%74 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_359 = tensor.pad %76 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_359, %cst_287 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %78 = tensor.empty() : tensor<1x192x4x4xf32>
    %inserted_slice_360 = tensor.insert_slice %62 into %78[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x192x4x4xf32>
    %inserted_slice_361 = tensor.insert_slice %70 into %inserted_slice_360[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x192x4x4xf32>
    %inserted_slice_362 = tensor.insert_slice %77 into %inserted_slice_361[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_362, %cst_301, %cst_300, %cst_300, %cst_301 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%inserted_slice_362 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x192x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x192x4x4xf32>) outs(%78 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x192x4x4xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%80, %cst_286 : tensor<1x192x4x4xf32>, tensor<128x192x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%81 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_363 = tensor.pad %83 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_363, %cst_285 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %85 = tensor.empty() : tensor<1x224x4x4xf32>
    %inserted_slice_364 = tensor.insert_slice %62 into %85[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x224x4x4xf32>
    %inserted_slice_365 = tensor.insert_slice %70 into %inserted_slice_364[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x224x4x4xf32>
    %inserted_slice_366 = tensor.insert_slice %77 into %inserted_slice_365[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x224x4x4xf32>
    %inserted_slice_367 = tensor.insert_slice %84 into %inserted_slice_366[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x224x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_367, %cst_297, %cst_296, %cst_296, %cst_297 : tensor<1x224x4x4xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%inserted_slice_367 : tensor<1x224x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x224x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x224x4x4xf32>) outs(%85 : tensor<1x224x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x224x4x4xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_284 : tensor<1x224x4x4xf32>, tensor<128x224x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%88 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_368 = tensor.pad %90 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_368, %cst_283 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %92 = tensor.empty() : tensor<1x256x4x4xf32>
    %inserted_slice_369 = tensor.insert_slice %62 into %92[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_370 = tensor.insert_slice %70 into %inserted_slice_369[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_371 = tensor.insert_slice %77 into %inserted_slice_370[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_372 = tensor.insert_slice %84 into %inserted_slice_371[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    %inserted_slice_373 = tensor.insert_slice %91 into %inserted_slice_372[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_373, %cst_293, %cst_292, %cst_292, %cst_293 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%inserted_slice_373 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x256x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x256x4x4xf32>) outs(%92 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x256x4x4xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%94, %cst_282 : tensor<1x256x4x4xf32>, tensor<128x256x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%95 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_374 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %98 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_374, %cst_281 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %99 = tensor.empty() : tensor<1x288x4x4xf32>
    %inserted_slice_375 = tensor.insert_slice %62 into %99[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_376 = tensor.insert_slice %70 into %inserted_slice_375[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_377 = tensor.insert_slice %77 into %inserted_slice_376[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_378 = tensor.insert_slice %84 into %inserted_slice_377[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_379 = tensor.insert_slice %91 into %inserted_slice_378[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_380 = tensor.insert_slice %98 into %inserted_slice_379[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_380, %cst_280, %cst_279, %cst_279, %cst_280 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%inserted_slice_380 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x288x4x4xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x288x4x4xf32>) outs(%99 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x288x4x4xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %cst_278 : tensor<1x288x4x4xf32>, tensor<128x288x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%102 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %104 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_381 = tensor.pad %104 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_381, %cst_277 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %106 = tensor.empty() : tensor<1x320x4x4xf32>
    %inserted_slice_382 = tensor.insert_slice %62 into %106[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_383 = tensor.insert_slice %70 into %inserted_slice_382[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_384 = tensor.insert_slice %77 into %inserted_slice_383[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_385 = tensor.insert_slice %84 into %inserted_slice_384[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_386 = tensor.insert_slice %91 into %inserted_slice_385[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_387 = tensor.insert_slice %98 into %inserted_slice_386[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    %inserted_slice_388 = tensor.insert_slice %105 into %inserted_slice_387[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_388, %cst_276, %cst_275, %cst_275, %cst_276 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%inserted_slice_388 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x320x4x4xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x320x4x4xf32>) outs(%106 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x320x4x4xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %cst_274 : tensor<1x320x4x4xf32>, tensor<128x320x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%109 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_389 = tensor.pad %111 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_389, %cst_273 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %113 = tensor.empty() : tensor<1x352x4x4xf32>
    %inserted_slice_390 = tensor.insert_slice %62 into %113[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_391 = tensor.insert_slice %70 into %inserted_slice_390[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_392 = tensor.insert_slice %77 into %inserted_slice_391[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_393 = tensor.insert_slice %84 into %inserted_slice_392[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_394 = tensor.insert_slice %91 into %inserted_slice_393[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_395 = tensor.insert_slice %98 into %inserted_slice_394[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_396 = tensor.insert_slice %105 into %inserted_slice_395[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    %inserted_slice_397 = tensor.insert_slice %112 into %inserted_slice_396[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x352x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_397, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x352x4x4xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>) outs(%inserted_slice_397 : tensor<1x352x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x352x4x4xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x352x4x4xf32>) outs(%113 : tensor<1x352x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x352x4x4xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_270 : tensor<1x352x4x4xf32>, tensor<128x352x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%116 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_398 = tensor.pad %118 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_398, %cst_269 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %120 = tensor.empty() : tensor<1x384x4x4xf32>
    %inserted_slice_399 = tensor.insert_slice %62 into %120[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_400 = tensor.insert_slice %70 into %inserted_slice_399[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_401 = tensor.insert_slice %77 into %inserted_slice_400[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_402 = tensor.insert_slice %84 into %inserted_slice_401[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_403 = tensor.insert_slice %91 into %inserted_slice_402[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_404 = tensor.insert_slice %98 into %inserted_slice_403[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_405 = tensor.insert_slice %105 into %inserted_slice_404[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_406 = tensor.insert_slice %112 into %inserted_slice_405[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_407 = tensor.insert_slice %119 into %inserted_slice_406[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %121 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_407, %cst_268, %cst_267, %cst_267, %cst_268 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%inserted_slice_407 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x384x4x4xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x384x4x4xf32>) outs(%120 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x384x4x4xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_266 : tensor<1x384x4x4xf32>, tensor<128x384x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%123 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_408 = tensor.pad %125 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_408, %cst_265 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %127 = tensor.empty() : tensor<1x416x4x4xf32>
    %inserted_slice_409 = tensor.insert_slice %62 into %127[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_410 = tensor.insert_slice %70 into %inserted_slice_409[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_411 = tensor.insert_slice %77 into %inserted_slice_410[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_412 = tensor.insert_slice %84 into %inserted_slice_411[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_413 = tensor.insert_slice %91 into %inserted_slice_412[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_414 = tensor.insert_slice %98 into %inserted_slice_413[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_415 = tensor.insert_slice %105 into %inserted_slice_414[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_416 = tensor.insert_slice %112 into %inserted_slice_415[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_417 = tensor.insert_slice %119 into %inserted_slice_416[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    %inserted_slice_418 = tensor.insert_slice %126 into %inserted_slice_417[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x416x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_418, %cst_264, %cst_263, %cst_263, %cst_264 : tensor<1x416x4x4xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>) outs(%inserted_slice_418 : tensor<1x416x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x416x4x4xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x416x4x4xf32>) outs(%127 : tensor<1x416x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x416x4x4xf32>
    %130 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_262 : tensor<1x416x4x4xf32>, tensor<128x416x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %131 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%130 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_419 = tensor.pad %132 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %133 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_419, %cst_261 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %134 = tensor.empty() : tensor<1x448x4x4xf32>
    %inserted_slice_420 = tensor.insert_slice %62 into %134[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_421 = tensor.insert_slice %70 into %inserted_slice_420[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_422 = tensor.insert_slice %77 into %inserted_slice_421[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_423 = tensor.insert_slice %84 into %inserted_slice_422[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_424 = tensor.insert_slice %91 into %inserted_slice_423[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_425 = tensor.insert_slice %98 into %inserted_slice_424[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_426 = tensor.insert_slice %105 into %inserted_slice_425[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_427 = tensor.insert_slice %112 into %inserted_slice_426[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_428 = tensor.insert_slice %119 into %inserted_slice_427[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_429 = tensor.insert_slice %126 into %inserted_slice_428[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    %inserted_slice_430 = tensor.insert_slice %133 into %inserted_slice_429[0, 416, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x448x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_430, %cst_260, %cst_259, %cst_259, %cst_260 : tensor<1x448x4x4xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%inserted_slice_430 : tensor<1x448x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x448x4x4xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x448x4x4xf32>) outs(%134 : tensor<1x448x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x448x4x4xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_258 : tensor<1x448x4x4xf32>, tensor<128x448x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%137 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_431 = tensor.pad %139 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_431, %cst_257 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %141 = tensor.empty() : tensor<1x480x4x4xf32>
    %inserted_slice_432 = tensor.insert_slice %62 into %141[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_433 = tensor.insert_slice %70 into %inserted_slice_432[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_434 = tensor.insert_slice %77 into %inserted_slice_433[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_435 = tensor.insert_slice %84 into %inserted_slice_434[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_436 = tensor.insert_slice %91 into %inserted_slice_435[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_437 = tensor.insert_slice %98 into %inserted_slice_436[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_438 = tensor.insert_slice %105 into %inserted_slice_437[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_439 = tensor.insert_slice %112 into %inserted_slice_438[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_440 = tensor.insert_slice %119 into %inserted_slice_439[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_441 = tensor.insert_slice %126 into %inserted_slice_440[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_442 = tensor.insert_slice %133 into %inserted_slice_441[0, 416, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_443 = tensor.insert_slice %140 into %inserted_slice_442[0, 448, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_443, %cst_256, %cst_255, %cst_255, %cst_256 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%inserted_slice_443 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x480x4x4xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x480x4x4xf32>) outs(%141 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x480x4x4xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_254 : tensor<1x480x4x4xf32>, tensor<128x480x1x1xf32>) outs(%59 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%144 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x4x4xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x128x4x4xf32>) outs(%58 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_444 = tensor.pad %146 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_444, %cst_253 : tensor<1x128x6x6xf32>, tensor<32x128x3x3xf32>) outs(%69 : tensor<1x32x4x4xf32>) -> tensor<1x32x4x4xf32>
    %148 = tensor.empty() : tensor<1x512x4x4xf32>
    %inserted_slice_445 = tensor.insert_slice %62 into %148[0, 0, 0, 0] [1, 128, 4, 4] [1, 1, 1, 1] : tensor<1x128x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_446 = tensor.insert_slice %70 into %inserted_slice_445[0, 128, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_447 = tensor.insert_slice %77 into %inserted_slice_446[0, 160, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_448 = tensor.insert_slice %84 into %inserted_slice_447[0, 192, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_449 = tensor.insert_slice %91 into %inserted_slice_448[0, 224, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_450 = tensor.insert_slice %98 into %inserted_slice_449[0, 256, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_451 = tensor.insert_slice %105 into %inserted_slice_450[0, 288, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_452 = tensor.insert_slice %112 into %inserted_slice_451[0, 320, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_453 = tensor.insert_slice %119 into %inserted_slice_452[0, 352, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_454 = tensor.insert_slice %126 into %inserted_slice_453[0, 384, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_455 = tensor.insert_slice %133 into %inserted_slice_454[0, 416, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_456 = tensor.insert_slice %140 into %inserted_slice_455[0, 448, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    %inserted_slice_457 = tensor.insert_slice %147 into %inserted_slice_456[0, 480, 0, 0] [1, 32, 4, 4] [1, 1, 1, 1] : tensor<1x32x4x4xf32> into tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_457, %cst_252, %cst_251, %cst_251, %cst_252 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%inserted_slice_457 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x512x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x512x4x4xf32>) outs(%148 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x512x4x4xf32>
    %151 = linalg.fill ins(%cst_319 : f32) outs(%92 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_250 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%151 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %153 = tensor.empty() : tensor<1x256x2x2xf32>
    %154 = linalg.fill ins(%cst_319 : f32) outs(%153 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %155 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%152, %60 : tensor<1x256x4x4xf32>, tensor<2x2xf32>) outs(%154 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x2x2xf32>) outs(%153 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.divf %in, %cst_322 : f32
      linalg.yield %744 : f32
    } -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_293, %cst_292, %cst_292, %cst_293 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%156 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x256x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x256x2x2xf32>) outs(%153 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x256x2x2xf32>
    %159 = tensor.empty() : tensor<1x128x2x2xf32>
    %160 = linalg.fill ins(%cst_319 : f32) outs(%159 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_249 : tensor<1x256x2x2xf32>, tensor<128x256x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%161 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_458 = tensor.pad %163 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %164 = tensor.empty() : tensor<1x32x2x2xf32>
    %165 = linalg.fill ins(%cst_319 : f32) outs(%164 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_458, %cst_248 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %167 = tensor.empty() : tensor<1x288x2x2xf32>
    %inserted_slice_459 = tensor.insert_slice %156 into %167[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x288x2x2xf32>
    %inserted_slice_460 = tensor.insert_slice %166 into %inserted_slice_459[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x288x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_460, %cst_280, %cst_279, %cst_279, %cst_280 : tensor<1x288x2x2xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%inserted_slice_460 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x288x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x288x2x2xf32>) outs(%167 : tensor<1x288x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x288x2x2xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%169, %cst_247 : tensor<1x288x2x2xf32>, tensor<128x288x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%170 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_461 = tensor.pad %172 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_461, %cst_246 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %174 = tensor.empty() : tensor<1x320x2x2xf32>
    %inserted_slice_462 = tensor.insert_slice %156 into %174[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x320x2x2xf32>
    %inserted_slice_463 = tensor.insert_slice %166 into %inserted_slice_462[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x320x2x2xf32>
    %inserted_slice_464 = tensor.insert_slice %173 into %inserted_slice_463[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x320x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_464, %cst_276, %cst_275, %cst_275, %cst_276 : tensor<1x320x2x2xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%inserted_slice_464 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x320x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x320x2x2xf32>) outs(%174 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x320x2x2xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_245 : tensor<1x320x2x2xf32>, tensor<128x320x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%177 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_465 = tensor.pad %179 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_465, %cst_244 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %181 = tensor.empty() : tensor<1x352x2x2xf32>
    %inserted_slice_466 = tensor.insert_slice %156 into %181[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x352x2x2xf32>
    %inserted_slice_467 = tensor.insert_slice %166 into %inserted_slice_466[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x352x2x2xf32>
    %inserted_slice_468 = tensor.insert_slice %173 into %inserted_slice_467[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x352x2x2xf32>
    %inserted_slice_469 = tensor.insert_slice %180 into %inserted_slice_468[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x352x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_469, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x352x2x2xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>, tensor<352xf32>) outs(%inserted_slice_469 : tensor<1x352x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x352x2x2xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x352x2x2xf32>) outs(%181 : tensor<1x352x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x352x2x2xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_243 : tensor<1x352x2x2xf32>, tensor<128x352x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%184 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_470 = tensor.pad %186 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_470, %cst_242 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %188 = tensor.empty() : tensor<1x384x2x2xf32>
    %inserted_slice_471 = tensor.insert_slice %156 into %188[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_472 = tensor.insert_slice %166 into %inserted_slice_471[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_473 = tensor.insert_slice %173 into %inserted_slice_472[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_474 = tensor.insert_slice %180 into %inserted_slice_473[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    %inserted_slice_475 = tensor.insert_slice %187 into %inserted_slice_474[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %189 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_475, %cst_268, %cst_267, %cst_267, %cst_268 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%inserted_slice_475 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x384x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x384x2x2xf32>) outs(%188 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x384x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_241 : tensor<1x384x2x2xf32>, tensor<128x384x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%191 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_476 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_476, %cst_240 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %195 = tensor.empty() : tensor<1x416x2x2xf32>
    %inserted_slice_477 = tensor.insert_slice %156 into %195[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_478 = tensor.insert_slice %166 into %inserted_slice_477[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_479 = tensor.insert_slice %173 into %inserted_slice_478[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_480 = tensor.insert_slice %180 into %inserted_slice_479[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_481 = tensor.insert_slice %187 into %inserted_slice_480[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    %inserted_slice_482 = tensor.insert_slice %194 into %inserted_slice_481[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x416x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_482, %cst_264, %cst_263, %cst_263, %cst_264 : tensor<1x416x2x2xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>, tensor<416xf32>) outs(%inserted_slice_482 : tensor<1x416x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x416x2x2xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x416x2x2xf32>) outs(%195 : tensor<1x416x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x416x2x2xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_239 : tensor<1x416x2x2xf32>, tensor<128x416x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%198 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_483 = tensor.pad %200 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_483, %cst_238 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %202 = tensor.empty() : tensor<1x448x2x2xf32>
    %inserted_slice_484 = tensor.insert_slice %156 into %202[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_485 = tensor.insert_slice %166 into %inserted_slice_484[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_486 = tensor.insert_slice %173 into %inserted_slice_485[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_487 = tensor.insert_slice %180 into %inserted_slice_486[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_488 = tensor.insert_slice %187 into %inserted_slice_487[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_489 = tensor.insert_slice %194 into %inserted_slice_488[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    %inserted_slice_490 = tensor.insert_slice %201 into %inserted_slice_489[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x448x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_490, %cst_260, %cst_259, %cst_259, %cst_260 : tensor<1x448x2x2xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%inserted_slice_490 : tensor<1x448x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x448x2x2xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x448x2x2xf32>) outs(%202 : tensor<1x448x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x448x2x2xf32>
    %205 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%204, %cst_237 : tensor<1x448x2x2xf32>, tensor<128x448x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %206 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%205 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_491 = tensor.pad %207 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_491, %cst_236 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %209 = tensor.empty() : tensor<1x480x2x2xf32>
    %inserted_slice_492 = tensor.insert_slice %156 into %209[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_493 = tensor.insert_slice %166 into %inserted_slice_492[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_494 = tensor.insert_slice %173 into %inserted_slice_493[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_495 = tensor.insert_slice %180 into %inserted_slice_494[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_496 = tensor.insert_slice %187 into %inserted_slice_495[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_497 = tensor.insert_slice %194 into %inserted_slice_496[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_498 = tensor.insert_slice %201 into %inserted_slice_497[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_499 = tensor.insert_slice %208 into %inserted_slice_498[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_499, %cst_256, %cst_255, %cst_255, %cst_256 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%inserted_slice_499 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x480x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x480x2x2xf32>) outs(%209 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x480x2x2xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %cst_235 : tensor<1x480x2x2xf32>, tensor<128x480x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%212 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_500 = tensor.pad %214 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_500, %cst_234 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %216 = tensor.empty() : tensor<1x512x2x2xf32>
    %inserted_slice_501 = tensor.insert_slice %156 into %216[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_502 = tensor.insert_slice %166 into %inserted_slice_501[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_503 = tensor.insert_slice %173 into %inserted_slice_502[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_504 = tensor.insert_slice %180 into %inserted_slice_503[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_505 = tensor.insert_slice %187 into %inserted_slice_504[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_506 = tensor.insert_slice %194 into %inserted_slice_505[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_507 = tensor.insert_slice %201 into %inserted_slice_506[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_508 = tensor.insert_slice %208 into %inserted_slice_507[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    %inserted_slice_509 = tensor.insert_slice %215 into %inserted_slice_508[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %217 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_509, %cst_252, %cst_251, %cst_251, %cst_252 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%inserted_slice_509 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x512x2x2xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x512x2x2xf32>) outs(%216 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x512x2x2xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_233 : tensor<1x512x2x2xf32>, tensor<128x512x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%219 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_510 = tensor.pad %221 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_510, %cst_232 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %223 = tensor.empty() : tensor<1x544x2x2xf32>
    %inserted_slice_511 = tensor.insert_slice %156 into %223[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_512 = tensor.insert_slice %166 into %inserted_slice_511[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_513 = tensor.insert_slice %173 into %inserted_slice_512[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_514 = tensor.insert_slice %180 into %inserted_slice_513[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_515 = tensor.insert_slice %187 into %inserted_slice_514[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_516 = tensor.insert_slice %194 into %inserted_slice_515[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_517 = tensor.insert_slice %201 into %inserted_slice_516[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_518 = tensor.insert_slice %208 into %inserted_slice_517[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_519 = tensor.insert_slice %215 into %inserted_slice_518[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    %inserted_slice_520 = tensor.insert_slice %222 into %inserted_slice_519[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x544x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %224 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_520, %cst_231, %cst_230, %cst_230, %cst_231 : tensor<1x544x2x2xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>, tensor<544xf32>) outs(%inserted_slice_520 : tensor<1x544x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x544x2x2xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x544x2x2xf32>) outs(%223 : tensor<1x544x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x544x2x2xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%225, %cst_229 : tensor<1x544x2x2xf32>, tensor<128x544x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %227 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%226 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_521 = tensor.pad %228 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %229 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_521, %cst_228 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %230 = tensor.empty() : tensor<1x576x2x2xf32>
    %inserted_slice_522 = tensor.insert_slice %156 into %230[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_523 = tensor.insert_slice %166 into %inserted_slice_522[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_524 = tensor.insert_slice %173 into %inserted_slice_523[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_525 = tensor.insert_slice %180 into %inserted_slice_524[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_526 = tensor.insert_slice %187 into %inserted_slice_525[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_527 = tensor.insert_slice %194 into %inserted_slice_526[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_528 = tensor.insert_slice %201 into %inserted_slice_527[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_529 = tensor.insert_slice %208 into %inserted_slice_528[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_530 = tensor.insert_slice %215 into %inserted_slice_529[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_531 = tensor.insert_slice %222 into %inserted_slice_530[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_532 = tensor.insert_slice %229 into %inserted_slice_531[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %231 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_532, %cst_227, %cst_226, %cst_226, %cst_227 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%inserted_slice_532 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x576x2x2xf32>
    %232 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x576x2x2xf32>) outs(%230 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x576x2x2xf32>
    %233 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%232, %cst_225 : tensor<1x576x2x2xf32>, tensor<128x576x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %234 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%233 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_533 = tensor.pad %235 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_533, %cst_224 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %237 = tensor.empty() : tensor<1x608x2x2xf32>
    %inserted_slice_534 = tensor.insert_slice %156 into %237[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_535 = tensor.insert_slice %166 into %inserted_slice_534[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_536 = tensor.insert_slice %173 into %inserted_slice_535[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_537 = tensor.insert_slice %180 into %inserted_slice_536[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_538 = tensor.insert_slice %187 into %inserted_slice_537[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_539 = tensor.insert_slice %194 into %inserted_slice_538[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_540 = tensor.insert_slice %201 into %inserted_slice_539[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_541 = tensor.insert_slice %208 into %inserted_slice_540[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_542 = tensor.insert_slice %215 into %inserted_slice_541[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_543 = tensor.insert_slice %222 into %inserted_slice_542[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_544 = tensor.insert_slice %229 into %inserted_slice_543[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    %inserted_slice_545 = tensor.insert_slice %236 into %inserted_slice_544[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x608x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_545, %cst_223, %cst_222, %cst_222, %cst_223 : tensor<1x608x2x2xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>, tensor<608xf32>) outs(%inserted_slice_545 : tensor<1x608x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x608x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x608x2x2xf32>) outs(%237 : tensor<1x608x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x608x2x2xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_221 : tensor<1x608x2x2xf32>, tensor<128x608x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%240 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_546 = tensor.pad %242 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_546, %cst_220 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %244 = tensor.empty() : tensor<1x640x2x2xf32>
    %inserted_slice_547 = tensor.insert_slice %156 into %244[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_548 = tensor.insert_slice %166 into %inserted_slice_547[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_549 = tensor.insert_slice %173 into %inserted_slice_548[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_550 = tensor.insert_slice %180 into %inserted_slice_549[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_551 = tensor.insert_slice %187 into %inserted_slice_550[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_552 = tensor.insert_slice %194 into %inserted_slice_551[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_553 = tensor.insert_slice %201 into %inserted_slice_552[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_554 = tensor.insert_slice %208 into %inserted_slice_553[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_555 = tensor.insert_slice %215 into %inserted_slice_554[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_556 = tensor.insert_slice %222 into %inserted_slice_555[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_557 = tensor.insert_slice %229 into %inserted_slice_556[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_558 = tensor.insert_slice %236 into %inserted_slice_557[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    %inserted_slice_559 = tensor.insert_slice %243 into %inserted_slice_558[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_559, %cst_219, %cst_218, %cst_218, %cst_219 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%inserted_slice_559 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x640x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x640x2x2xf32>) outs(%244 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x640x2x2xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_217 : tensor<1x640x2x2xf32>, tensor<128x640x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%247 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_560 = tensor.pad %249 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %250 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_560, %cst_216 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %251 = tensor.empty() : tensor<1x672x2x2xf32>
    %inserted_slice_561 = tensor.insert_slice %156 into %251[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_562 = tensor.insert_slice %166 into %inserted_slice_561[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_563 = tensor.insert_slice %173 into %inserted_slice_562[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_564 = tensor.insert_slice %180 into %inserted_slice_563[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_565 = tensor.insert_slice %187 into %inserted_slice_564[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_566 = tensor.insert_slice %194 into %inserted_slice_565[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_567 = tensor.insert_slice %201 into %inserted_slice_566[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_568 = tensor.insert_slice %208 into %inserted_slice_567[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_569 = tensor.insert_slice %215 into %inserted_slice_568[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_570 = tensor.insert_slice %222 into %inserted_slice_569[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_571 = tensor.insert_slice %229 into %inserted_slice_570[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_572 = tensor.insert_slice %236 into %inserted_slice_571[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_573 = tensor.insert_slice %243 into %inserted_slice_572[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_574 = tensor.insert_slice %250 into %inserted_slice_573[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_574, %cst_215, %cst_214, %cst_214, %cst_215 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%inserted_slice_574 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x672x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x672x2x2xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %cst_213 : tensor<1x672x2x2xf32>, tensor<128x672x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%254 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_575 = tensor.pad %256 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_575, %cst_212 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %258 = tensor.empty() : tensor<1x704x2x2xf32>
    %inserted_slice_576 = tensor.insert_slice %156 into %258[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_577 = tensor.insert_slice %166 into %inserted_slice_576[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_578 = tensor.insert_slice %173 into %inserted_slice_577[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_579 = tensor.insert_slice %180 into %inserted_slice_578[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_580 = tensor.insert_slice %187 into %inserted_slice_579[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_581 = tensor.insert_slice %194 into %inserted_slice_580[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_582 = tensor.insert_slice %201 into %inserted_slice_581[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_583 = tensor.insert_slice %208 into %inserted_slice_582[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_584 = tensor.insert_slice %215 into %inserted_slice_583[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_585 = tensor.insert_slice %222 into %inserted_slice_584[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_586 = tensor.insert_slice %229 into %inserted_slice_585[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_587 = tensor.insert_slice %236 into %inserted_slice_586[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_588 = tensor.insert_slice %243 into %inserted_slice_587[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_589 = tensor.insert_slice %250 into %inserted_slice_588[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    %inserted_slice_590 = tensor.insert_slice %257 into %inserted_slice_589[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x704x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_590, %cst_211, %cst_210, %cst_210, %cst_211 : tensor<1x704x2x2xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>, tensor<704xf32>) outs(%inserted_slice_590 : tensor<1x704x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x704x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x704x2x2xf32>) outs(%258 : tensor<1x704x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x704x2x2xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_209 : tensor<1x704x2x2xf32>, tensor<128x704x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%261 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_591 = tensor.pad %263 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_591, %cst_208 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %265 = tensor.empty() : tensor<1x736x2x2xf32>
    %inserted_slice_592 = tensor.insert_slice %156 into %265[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_593 = tensor.insert_slice %166 into %inserted_slice_592[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_594 = tensor.insert_slice %173 into %inserted_slice_593[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_595 = tensor.insert_slice %180 into %inserted_slice_594[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_596 = tensor.insert_slice %187 into %inserted_slice_595[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_597 = tensor.insert_slice %194 into %inserted_slice_596[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_598 = tensor.insert_slice %201 into %inserted_slice_597[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_599 = tensor.insert_slice %208 into %inserted_slice_598[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_600 = tensor.insert_slice %215 into %inserted_slice_599[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_601 = tensor.insert_slice %222 into %inserted_slice_600[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_602 = tensor.insert_slice %229 into %inserted_slice_601[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_603 = tensor.insert_slice %236 into %inserted_slice_602[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_604 = tensor.insert_slice %243 into %inserted_slice_603[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_605 = tensor.insert_slice %250 into %inserted_slice_604[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_606 = tensor.insert_slice %257 into %inserted_slice_605[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    %inserted_slice_607 = tensor.insert_slice %264 into %inserted_slice_606[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x736x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %266 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_607, %cst_207, %cst_206, %cst_206, %cst_207 : tensor<1x736x2x2xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>, tensor<736xf32>) outs(%inserted_slice_607 : tensor<1x736x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x736x2x2xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x736x2x2xf32>) outs(%265 : tensor<1x736x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x736x2x2xf32>
    %268 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_205 : tensor<1x736x2x2xf32>, tensor<128x736x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %269 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%268 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_608 = tensor.pad %270 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_608, %cst_204 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %272 = tensor.empty() : tensor<1x768x2x2xf32>
    %inserted_slice_609 = tensor.insert_slice %156 into %272[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_610 = tensor.insert_slice %166 into %inserted_slice_609[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_611 = tensor.insert_slice %173 into %inserted_slice_610[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_612 = tensor.insert_slice %180 into %inserted_slice_611[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_613 = tensor.insert_slice %187 into %inserted_slice_612[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_614 = tensor.insert_slice %194 into %inserted_slice_613[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_615 = tensor.insert_slice %201 into %inserted_slice_614[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_616 = tensor.insert_slice %208 into %inserted_slice_615[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_617 = tensor.insert_slice %215 into %inserted_slice_616[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_618 = tensor.insert_slice %222 into %inserted_slice_617[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_619 = tensor.insert_slice %229 into %inserted_slice_618[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_620 = tensor.insert_slice %236 into %inserted_slice_619[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_621 = tensor.insert_slice %243 into %inserted_slice_620[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_622 = tensor.insert_slice %250 into %inserted_slice_621[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_623 = tensor.insert_slice %257 into %inserted_slice_622[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_624 = tensor.insert_slice %264 into %inserted_slice_623[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_625 = tensor.insert_slice %271 into %inserted_slice_624[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %273 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_625, %cst_203, %cst_202, %cst_202, %cst_203 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%inserted_slice_625 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x768x2x2xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x768x2x2xf32>) outs(%272 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x768x2x2xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_201 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %276 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%275 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_626 = tensor.pad %277 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_626, %cst_200 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %279 = tensor.empty() : tensor<1x800x2x2xf32>
    %inserted_slice_627 = tensor.insert_slice %156 into %279[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_628 = tensor.insert_slice %166 into %inserted_slice_627[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_629 = tensor.insert_slice %173 into %inserted_slice_628[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_630 = tensor.insert_slice %180 into %inserted_slice_629[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_631 = tensor.insert_slice %187 into %inserted_slice_630[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_632 = tensor.insert_slice %194 into %inserted_slice_631[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_633 = tensor.insert_slice %201 into %inserted_slice_632[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_634 = tensor.insert_slice %208 into %inserted_slice_633[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_635 = tensor.insert_slice %215 into %inserted_slice_634[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_636 = tensor.insert_slice %222 into %inserted_slice_635[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_637 = tensor.insert_slice %229 into %inserted_slice_636[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_638 = tensor.insert_slice %236 into %inserted_slice_637[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_639 = tensor.insert_slice %243 into %inserted_slice_638[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_640 = tensor.insert_slice %250 into %inserted_slice_639[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_641 = tensor.insert_slice %257 into %inserted_slice_640[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_642 = tensor.insert_slice %264 into %inserted_slice_641[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_643 = tensor.insert_slice %271 into %inserted_slice_642[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    %inserted_slice_644 = tensor.insert_slice %278 into %inserted_slice_643[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x800x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_644, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x800x2x2xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>, tensor<800xf32>) outs(%inserted_slice_644 : tensor<1x800x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x800x2x2xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x800x2x2xf32>) outs(%279 : tensor<1x800x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x800x2x2xf32>
    %282 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%281, %cst_197 : tensor<1x800x2x2xf32>, tensor<128x800x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %283 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%282 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_645 = tensor.pad %284 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_645, %cst_196 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %286 = tensor.empty() : tensor<1x832x2x2xf32>
    %inserted_slice_646 = tensor.insert_slice %156 into %286[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_647 = tensor.insert_slice %166 into %inserted_slice_646[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_648 = tensor.insert_slice %173 into %inserted_slice_647[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_649 = tensor.insert_slice %180 into %inserted_slice_648[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_650 = tensor.insert_slice %187 into %inserted_slice_649[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_651 = tensor.insert_slice %194 into %inserted_slice_650[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_652 = tensor.insert_slice %201 into %inserted_slice_651[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_653 = tensor.insert_slice %208 into %inserted_slice_652[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_654 = tensor.insert_slice %215 into %inserted_slice_653[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_655 = tensor.insert_slice %222 into %inserted_slice_654[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_656 = tensor.insert_slice %229 into %inserted_slice_655[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_657 = tensor.insert_slice %236 into %inserted_slice_656[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_658 = tensor.insert_slice %243 into %inserted_slice_657[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_659 = tensor.insert_slice %250 into %inserted_slice_658[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_660 = tensor.insert_slice %257 into %inserted_slice_659[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_661 = tensor.insert_slice %264 into %inserted_slice_660[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_662 = tensor.insert_slice %271 into %inserted_slice_661[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_663 = tensor.insert_slice %278 into %inserted_slice_662[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    %inserted_slice_664 = tensor.insert_slice %285 into %inserted_slice_663[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x832x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %287 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_664, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x832x2x2xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>, tensor<832xf32>) outs(%inserted_slice_664 : tensor<1x832x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x832x2x2xf32>
    %288 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x832x2x2xf32>) outs(%286 : tensor<1x832x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x832x2x2xf32>
    %289 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%288, %cst_193 : tensor<1x832x2x2xf32>, tensor<128x832x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %290 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%289 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_665 = tensor.pad %291 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %292 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_665, %cst_192 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %293 = tensor.empty() : tensor<1x864x2x2xf32>
    %inserted_slice_666 = tensor.insert_slice %156 into %293[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_667 = tensor.insert_slice %166 into %inserted_slice_666[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_668 = tensor.insert_slice %173 into %inserted_slice_667[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_669 = tensor.insert_slice %180 into %inserted_slice_668[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_670 = tensor.insert_slice %187 into %inserted_slice_669[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_671 = tensor.insert_slice %194 into %inserted_slice_670[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_672 = tensor.insert_slice %201 into %inserted_slice_671[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_673 = tensor.insert_slice %208 into %inserted_slice_672[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_674 = tensor.insert_slice %215 into %inserted_slice_673[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_675 = tensor.insert_slice %222 into %inserted_slice_674[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_676 = tensor.insert_slice %229 into %inserted_slice_675[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_677 = tensor.insert_slice %236 into %inserted_slice_676[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_678 = tensor.insert_slice %243 into %inserted_slice_677[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_679 = tensor.insert_slice %250 into %inserted_slice_678[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_680 = tensor.insert_slice %257 into %inserted_slice_679[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_681 = tensor.insert_slice %264 into %inserted_slice_680[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_682 = tensor.insert_slice %271 into %inserted_slice_681[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_683 = tensor.insert_slice %278 into %inserted_slice_682[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_684 = tensor.insert_slice %285 into %inserted_slice_683[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_685 = tensor.insert_slice %292 into %inserted_slice_684[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_685, %cst_191, %cst_190, %cst_190, %cst_191 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%inserted_slice_685 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x864x2x2xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x864x2x2xf32>) outs(%293 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x864x2x2xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_189 : tensor<1x864x2x2xf32>, tensor<128x864x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%296 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_686 = tensor.pad %298 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_686, %cst_188 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %300 = tensor.empty() : tensor<1x896x2x2xf32>
    %inserted_slice_687 = tensor.insert_slice %156 into %300[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_688 = tensor.insert_slice %166 into %inserted_slice_687[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_689 = tensor.insert_slice %173 into %inserted_slice_688[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_690 = tensor.insert_slice %180 into %inserted_slice_689[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_691 = tensor.insert_slice %187 into %inserted_slice_690[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_692 = tensor.insert_slice %194 into %inserted_slice_691[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_693 = tensor.insert_slice %201 into %inserted_slice_692[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_694 = tensor.insert_slice %208 into %inserted_slice_693[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_695 = tensor.insert_slice %215 into %inserted_slice_694[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_696 = tensor.insert_slice %222 into %inserted_slice_695[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_697 = tensor.insert_slice %229 into %inserted_slice_696[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_698 = tensor.insert_slice %236 into %inserted_slice_697[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_699 = tensor.insert_slice %243 into %inserted_slice_698[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_700 = tensor.insert_slice %250 into %inserted_slice_699[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_701 = tensor.insert_slice %257 into %inserted_slice_700[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_702 = tensor.insert_slice %264 into %inserted_slice_701[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_703 = tensor.insert_slice %271 into %inserted_slice_702[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_704 = tensor.insert_slice %278 into %inserted_slice_703[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_705 = tensor.insert_slice %285 into %inserted_slice_704[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_706 = tensor.insert_slice %292 into %inserted_slice_705[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    %inserted_slice_707 = tensor.insert_slice %299 into %inserted_slice_706[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x896x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_707, %cst_187, %cst_186, %cst_186, %cst_187 : tensor<1x896x2x2xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>) outs(%inserted_slice_707 : tensor<1x896x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x896x2x2xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x896x2x2xf32>) outs(%300 : tensor<1x896x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x896x2x2xf32>
    %303 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%302, %cst_185 : tensor<1x896x2x2xf32>, tensor<128x896x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %304 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%303 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_708 = tensor.pad %305 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_708, %cst_184 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %307 = tensor.empty() : tensor<1x928x2x2xf32>
    %inserted_slice_709 = tensor.insert_slice %156 into %307[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_710 = tensor.insert_slice %166 into %inserted_slice_709[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_711 = tensor.insert_slice %173 into %inserted_slice_710[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_712 = tensor.insert_slice %180 into %inserted_slice_711[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_713 = tensor.insert_slice %187 into %inserted_slice_712[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_714 = tensor.insert_slice %194 into %inserted_slice_713[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_715 = tensor.insert_slice %201 into %inserted_slice_714[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_716 = tensor.insert_slice %208 into %inserted_slice_715[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_717 = tensor.insert_slice %215 into %inserted_slice_716[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_718 = tensor.insert_slice %222 into %inserted_slice_717[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_719 = tensor.insert_slice %229 into %inserted_slice_718[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_720 = tensor.insert_slice %236 into %inserted_slice_719[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_721 = tensor.insert_slice %243 into %inserted_slice_720[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_722 = tensor.insert_slice %250 into %inserted_slice_721[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_723 = tensor.insert_slice %257 into %inserted_slice_722[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_724 = tensor.insert_slice %264 into %inserted_slice_723[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_725 = tensor.insert_slice %271 into %inserted_slice_724[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_726 = tensor.insert_slice %278 into %inserted_slice_725[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_727 = tensor.insert_slice %285 into %inserted_slice_726[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_728 = tensor.insert_slice %292 into %inserted_slice_727[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_729 = tensor.insert_slice %299 into %inserted_slice_728[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    %inserted_slice_730 = tensor.insert_slice %306 into %inserted_slice_729[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x928x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_730, %cst_183, %cst_182, %cst_182, %cst_183 : tensor<1x928x2x2xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>) outs(%inserted_slice_730 : tensor<1x928x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x928x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x928x2x2xf32>) outs(%307 : tensor<1x928x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x928x2x2xf32>
    %310 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %cst_181 : tensor<1x928x2x2xf32>, tensor<128x928x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %311 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%310 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %312 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_731 = tensor.pad %312 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_731, %cst_180 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %314 = tensor.empty() : tensor<1x960x2x2xf32>
    %inserted_slice_732 = tensor.insert_slice %156 into %314[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_733 = tensor.insert_slice %166 into %inserted_slice_732[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_734 = tensor.insert_slice %173 into %inserted_slice_733[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_735 = tensor.insert_slice %180 into %inserted_slice_734[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_736 = tensor.insert_slice %187 into %inserted_slice_735[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_737 = tensor.insert_slice %194 into %inserted_slice_736[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_738 = tensor.insert_slice %201 into %inserted_slice_737[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_739 = tensor.insert_slice %208 into %inserted_slice_738[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_740 = tensor.insert_slice %215 into %inserted_slice_739[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_741 = tensor.insert_slice %222 into %inserted_slice_740[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_742 = tensor.insert_slice %229 into %inserted_slice_741[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_743 = tensor.insert_slice %236 into %inserted_slice_742[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_744 = tensor.insert_slice %243 into %inserted_slice_743[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_745 = tensor.insert_slice %250 into %inserted_slice_744[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_746 = tensor.insert_slice %257 into %inserted_slice_745[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_747 = tensor.insert_slice %264 into %inserted_slice_746[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_748 = tensor.insert_slice %271 into %inserted_slice_747[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_749 = tensor.insert_slice %278 into %inserted_slice_748[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_750 = tensor.insert_slice %285 into %inserted_slice_749[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_751 = tensor.insert_slice %292 into %inserted_slice_750[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_752 = tensor.insert_slice %299 into %inserted_slice_751[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_753 = tensor.insert_slice %306 into %inserted_slice_752[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_754 = tensor.insert_slice %313 into %inserted_slice_753[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_754, %cst_179, %cst_178, %cst_178, %cst_179 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%inserted_slice_754 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x960x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x960x2x2xf32>) outs(%314 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x960x2x2xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%316, %cst_177 : tensor<1x960x2x2xf32>, tensor<128x960x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%317 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_755 = tensor.pad %319 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_755, %cst_176 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %321 = tensor.empty() : tensor<1x992x2x2xf32>
    %inserted_slice_756 = tensor.insert_slice %156 into %321[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_757 = tensor.insert_slice %166 into %inserted_slice_756[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_758 = tensor.insert_slice %173 into %inserted_slice_757[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_759 = tensor.insert_slice %180 into %inserted_slice_758[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_760 = tensor.insert_slice %187 into %inserted_slice_759[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_761 = tensor.insert_slice %194 into %inserted_slice_760[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_762 = tensor.insert_slice %201 into %inserted_slice_761[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_763 = tensor.insert_slice %208 into %inserted_slice_762[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_764 = tensor.insert_slice %215 into %inserted_slice_763[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_765 = tensor.insert_slice %222 into %inserted_slice_764[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_766 = tensor.insert_slice %229 into %inserted_slice_765[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_767 = tensor.insert_slice %236 into %inserted_slice_766[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_768 = tensor.insert_slice %243 into %inserted_slice_767[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_769 = tensor.insert_slice %250 into %inserted_slice_768[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_770 = tensor.insert_slice %257 into %inserted_slice_769[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_771 = tensor.insert_slice %264 into %inserted_slice_770[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_772 = tensor.insert_slice %271 into %inserted_slice_771[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_773 = tensor.insert_slice %278 into %inserted_slice_772[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_774 = tensor.insert_slice %285 into %inserted_slice_773[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_775 = tensor.insert_slice %292 into %inserted_slice_774[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_776 = tensor.insert_slice %299 into %inserted_slice_775[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_777 = tensor.insert_slice %306 into %inserted_slice_776[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_778 = tensor.insert_slice %313 into %inserted_slice_777[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    %inserted_slice_779 = tensor.insert_slice %320 into %inserted_slice_778[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x992x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_779, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x992x2x2xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>) outs(%inserted_slice_779 : tensor<1x992x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x992x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x992x2x2xf32>) outs(%321 : tensor<1x992x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x992x2x2xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%323, %cst_173 : tensor<1x992x2x2xf32>, tensor<128x992x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%324 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_780 = tensor.pad %326 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_780, %cst_172 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %328 = tensor.empty() : tensor<1x1024x2x2xf32>
    %inserted_slice_781 = tensor.insert_slice %156 into %328[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_782 = tensor.insert_slice %166 into %inserted_slice_781[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_783 = tensor.insert_slice %173 into %inserted_slice_782[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_784 = tensor.insert_slice %180 into %inserted_slice_783[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_785 = tensor.insert_slice %187 into %inserted_slice_784[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_786 = tensor.insert_slice %194 into %inserted_slice_785[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_787 = tensor.insert_slice %201 into %inserted_slice_786[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_788 = tensor.insert_slice %208 into %inserted_slice_787[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_789 = tensor.insert_slice %215 into %inserted_slice_788[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_790 = tensor.insert_slice %222 into %inserted_slice_789[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_791 = tensor.insert_slice %229 into %inserted_slice_790[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_792 = tensor.insert_slice %236 into %inserted_slice_791[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_793 = tensor.insert_slice %243 into %inserted_slice_792[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_794 = tensor.insert_slice %250 into %inserted_slice_793[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_795 = tensor.insert_slice %257 into %inserted_slice_794[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_796 = tensor.insert_slice %264 into %inserted_slice_795[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_797 = tensor.insert_slice %271 into %inserted_slice_796[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_798 = tensor.insert_slice %278 into %inserted_slice_797[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_799 = tensor.insert_slice %285 into %inserted_slice_798[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_800 = tensor.insert_slice %292 into %inserted_slice_799[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_801 = tensor.insert_slice %299 into %inserted_slice_800[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_802 = tensor.insert_slice %306 into %inserted_slice_801[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_803 = tensor.insert_slice %313 into %inserted_slice_802[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_804 = tensor.insert_slice %320 into %inserted_slice_803[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    %inserted_slice_805 = tensor.insert_slice %327 into %inserted_slice_804[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_805, %cst_171, %cst_170, %cst_170, %cst_171 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%inserted_slice_805 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1024x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x2x2xf32>) outs(%328 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1024x2x2xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_169 : tensor<1x1024x2x2xf32>, tensor<128x1024x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%331 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_806 = tensor.pad %333 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_806, %cst_168 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %335 = tensor.empty() : tensor<1x1056x2x2xf32>
    %inserted_slice_807 = tensor.insert_slice %156 into %335[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_808 = tensor.insert_slice %166 into %inserted_slice_807[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_809 = tensor.insert_slice %173 into %inserted_slice_808[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_810 = tensor.insert_slice %180 into %inserted_slice_809[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_811 = tensor.insert_slice %187 into %inserted_slice_810[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_812 = tensor.insert_slice %194 into %inserted_slice_811[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_813 = tensor.insert_slice %201 into %inserted_slice_812[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_814 = tensor.insert_slice %208 into %inserted_slice_813[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_815 = tensor.insert_slice %215 into %inserted_slice_814[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_816 = tensor.insert_slice %222 into %inserted_slice_815[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_817 = tensor.insert_slice %229 into %inserted_slice_816[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_818 = tensor.insert_slice %236 into %inserted_slice_817[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_819 = tensor.insert_slice %243 into %inserted_slice_818[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_820 = tensor.insert_slice %250 into %inserted_slice_819[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_821 = tensor.insert_slice %257 into %inserted_slice_820[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_822 = tensor.insert_slice %264 into %inserted_slice_821[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_823 = tensor.insert_slice %271 into %inserted_slice_822[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_824 = tensor.insert_slice %278 into %inserted_slice_823[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_825 = tensor.insert_slice %285 into %inserted_slice_824[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_826 = tensor.insert_slice %292 into %inserted_slice_825[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_827 = tensor.insert_slice %299 into %inserted_slice_826[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_828 = tensor.insert_slice %306 into %inserted_slice_827[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_829 = tensor.insert_slice %313 into %inserted_slice_828[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_830 = tensor.insert_slice %320 into %inserted_slice_829[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_831 = tensor.insert_slice %327 into %inserted_slice_830[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_832 = tensor.insert_slice %334 into %inserted_slice_831[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %336 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_832, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%inserted_slice_832 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1056x2x2xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x1056x2x2xf32>) outs(%335 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1056x2x2xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%337, %cst_165 : tensor<1x1056x2x2xf32>, tensor<128x1056x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%338 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_833 = tensor.pad %340 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %341 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_833, %cst_164 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %342 = tensor.empty() : tensor<1x1088x2x2xf32>
    %inserted_slice_834 = tensor.insert_slice %156 into %342[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_835 = tensor.insert_slice %166 into %inserted_slice_834[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_836 = tensor.insert_slice %173 into %inserted_slice_835[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_837 = tensor.insert_slice %180 into %inserted_slice_836[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_838 = tensor.insert_slice %187 into %inserted_slice_837[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_839 = tensor.insert_slice %194 into %inserted_slice_838[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_840 = tensor.insert_slice %201 into %inserted_slice_839[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_841 = tensor.insert_slice %208 into %inserted_slice_840[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_842 = tensor.insert_slice %215 into %inserted_slice_841[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_843 = tensor.insert_slice %222 into %inserted_slice_842[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_844 = tensor.insert_slice %229 into %inserted_slice_843[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_845 = tensor.insert_slice %236 into %inserted_slice_844[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_846 = tensor.insert_slice %243 into %inserted_slice_845[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_847 = tensor.insert_slice %250 into %inserted_slice_846[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_848 = tensor.insert_slice %257 into %inserted_slice_847[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_849 = tensor.insert_slice %264 into %inserted_slice_848[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_850 = tensor.insert_slice %271 into %inserted_slice_849[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_851 = tensor.insert_slice %278 into %inserted_slice_850[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_852 = tensor.insert_slice %285 into %inserted_slice_851[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_853 = tensor.insert_slice %292 into %inserted_slice_852[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_854 = tensor.insert_slice %299 into %inserted_slice_853[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_855 = tensor.insert_slice %306 into %inserted_slice_854[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_856 = tensor.insert_slice %313 into %inserted_slice_855[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_857 = tensor.insert_slice %320 into %inserted_slice_856[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_858 = tensor.insert_slice %327 into %inserted_slice_857[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_859 = tensor.insert_slice %334 into %inserted_slice_858[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    %inserted_slice_860 = tensor.insert_slice %341 into %inserted_slice_859[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1088x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %343 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_860, %cst_163, %cst_162, %cst_162, %cst_163 : tensor<1x1088x2x2xf32>, tensor<1088xf32>, tensor<1088xf32>, tensor<1088xf32>, tensor<1088xf32>) outs(%inserted_slice_860 : tensor<1x1088x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1088x2x2xf32>
    %344 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x1088x2x2xf32>) outs(%342 : tensor<1x1088x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1088x2x2xf32>
    %345 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%344, %cst_161 : tensor<1x1088x2x2xf32>, tensor<128x1088x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %346 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%345 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_861 = tensor.pad %347 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %348 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_861, %cst_160 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %349 = tensor.empty() : tensor<1x1120x2x2xf32>
    %inserted_slice_862 = tensor.insert_slice %156 into %349[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_863 = tensor.insert_slice %166 into %inserted_slice_862[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_864 = tensor.insert_slice %173 into %inserted_slice_863[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_865 = tensor.insert_slice %180 into %inserted_slice_864[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_866 = tensor.insert_slice %187 into %inserted_slice_865[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_867 = tensor.insert_slice %194 into %inserted_slice_866[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_868 = tensor.insert_slice %201 into %inserted_slice_867[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_869 = tensor.insert_slice %208 into %inserted_slice_868[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_870 = tensor.insert_slice %215 into %inserted_slice_869[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_871 = tensor.insert_slice %222 into %inserted_slice_870[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_872 = tensor.insert_slice %229 into %inserted_slice_871[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_873 = tensor.insert_slice %236 into %inserted_slice_872[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_874 = tensor.insert_slice %243 into %inserted_slice_873[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_875 = tensor.insert_slice %250 into %inserted_slice_874[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_876 = tensor.insert_slice %257 into %inserted_slice_875[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_877 = tensor.insert_slice %264 into %inserted_slice_876[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_878 = tensor.insert_slice %271 into %inserted_slice_877[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_879 = tensor.insert_slice %278 into %inserted_slice_878[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_880 = tensor.insert_slice %285 into %inserted_slice_879[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_881 = tensor.insert_slice %292 into %inserted_slice_880[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_882 = tensor.insert_slice %299 into %inserted_slice_881[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_883 = tensor.insert_slice %306 into %inserted_slice_882[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_884 = tensor.insert_slice %313 into %inserted_slice_883[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_885 = tensor.insert_slice %320 into %inserted_slice_884[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_886 = tensor.insert_slice %327 into %inserted_slice_885[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_887 = tensor.insert_slice %334 into %inserted_slice_886[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_888 = tensor.insert_slice %341 into %inserted_slice_887[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    %inserted_slice_889 = tensor.insert_slice %348 into %inserted_slice_888[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1120x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_889, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x1120x2x2xf32>, tensor<1120xf32>, tensor<1120xf32>, tensor<1120xf32>, tensor<1120xf32>) outs(%inserted_slice_889 : tensor<1x1120x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1120x2x2xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x1120x2x2xf32>) outs(%349 : tensor<1x1120x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1120x2x2xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %cst_157 : tensor<1x1120x2x2xf32>, tensor<128x1120x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%352 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %354 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_890 = tensor.pad %354 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_890, %cst_156 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %356 = tensor.empty() : tensor<1x1152x2x2xf32>
    %inserted_slice_891 = tensor.insert_slice %156 into %356[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_892 = tensor.insert_slice %166 into %inserted_slice_891[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_893 = tensor.insert_slice %173 into %inserted_slice_892[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_894 = tensor.insert_slice %180 into %inserted_slice_893[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_895 = tensor.insert_slice %187 into %inserted_slice_894[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_896 = tensor.insert_slice %194 into %inserted_slice_895[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_897 = tensor.insert_slice %201 into %inserted_slice_896[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_898 = tensor.insert_slice %208 into %inserted_slice_897[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_899 = tensor.insert_slice %215 into %inserted_slice_898[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_900 = tensor.insert_slice %222 into %inserted_slice_899[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_901 = tensor.insert_slice %229 into %inserted_slice_900[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_902 = tensor.insert_slice %236 into %inserted_slice_901[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_903 = tensor.insert_slice %243 into %inserted_slice_902[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_904 = tensor.insert_slice %250 into %inserted_slice_903[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_905 = tensor.insert_slice %257 into %inserted_slice_904[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_906 = tensor.insert_slice %264 into %inserted_slice_905[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_907 = tensor.insert_slice %271 into %inserted_slice_906[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_908 = tensor.insert_slice %278 into %inserted_slice_907[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_909 = tensor.insert_slice %285 into %inserted_slice_908[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_910 = tensor.insert_slice %292 into %inserted_slice_909[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_911 = tensor.insert_slice %299 into %inserted_slice_910[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_912 = tensor.insert_slice %306 into %inserted_slice_911[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_913 = tensor.insert_slice %313 into %inserted_slice_912[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_914 = tensor.insert_slice %320 into %inserted_slice_913[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_915 = tensor.insert_slice %327 into %inserted_slice_914[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_916 = tensor.insert_slice %334 into %inserted_slice_915[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_917 = tensor.insert_slice %341 into %inserted_slice_916[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_918 = tensor.insert_slice %348 into %inserted_slice_917[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_919 = tensor.insert_slice %355 into %inserted_slice_918[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1152x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %357 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_919, %cst_155, %cst_154, %cst_154, %cst_155 : tensor<1x1152x2x2xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%inserted_slice_919 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1152x2x2xf32>
    %358 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357 : tensor<1x1152x2x2xf32>) outs(%356 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1152x2x2xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_153 : tensor<1x1152x2x2xf32>, tensor<128x1152x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%359 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_920 = tensor.pad %361 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_920, %cst_152 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %363 = tensor.empty() : tensor<1x1184x2x2xf32>
    %inserted_slice_921 = tensor.insert_slice %156 into %363[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_922 = tensor.insert_slice %166 into %inserted_slice_921[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_923 = tensor.insert_slice %173 into %inserted_slice_922[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_924 = tensor.insert_slice %180 into %inserted_slice_923[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_925 = tensor.insert_slice %187 into %inserted_slice_924[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_926 = tensor.insert_slice %194 into %inserted_slice_925[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_927 = tensor.insert_slice %201 into %inserted_slice_926[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_928 = tensor.insert_slice %208 into %inserted_slice_927[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_929 = tensor.insert_slice %215 into %inserted_slice_928[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_930 = tensor.insert_slice %222 into %inserted_slice_929[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_931 = tensor.insert_slice %229 into %inserted_slice_930[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_932 = tensor.insert_slice %236 into %inserted_slice_931[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_933 = tensor.insert_slice %243 into %inserted_slice_932[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_934 = tensor.insert_slice %250 into %inserted_slice_933[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_935 = tensor.insert_slice %257 into %inserted_slice_934[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_936 = tensor.insert_slice %264 into %inserted_slice_935[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_937 = tensor.insert_slice %271 into %inserted_slice_936[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_938 = tensor.insert_slice %278 into %inserted_slice_937[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_939 = tensor.insert_slice %285 into %inserted_slice_938[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_940 = tensor.insert_slice %292 into %inserted_slice_939[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_941 = tensor.insert_slice %299 into %inserted_slice_940[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_942 = tensor.insert_slice %306 into %inserted_slice_941[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_943 = tensor.insert_slice %313 into %inserted_slice_942[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_944 = tensor.insert_slice %320 into %inserted_slice_943[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_945 = tensor.insert_slice %327 into %inserted_slice_944[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_946 = tensor.insert_slice %334 into %inserted_slice_945[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_947 = tensor.insert_slice %341 into %inserted_slice_946[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_948 = tensor.insert_slice %348 into %inserted_slice_947[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_949 = tensor.insert_slice %355 into %inserted_slice_948[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    %inserted_slice_950 = tensor.insert_slice %362 into %inserted_slice_949[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1184x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_950, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x1184x2x2xf32>, tensor<1184xf32>, tensor<1184xf32>, tensor<1184xf32>, tensor<1184xf32>) outs(%inserted_slice_950 : tensor<1x1184x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1184x2x2xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x1184x2x2xf32>) outs(%363 : tensor<1x1184x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1184x2x2xf32>
    %366 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%365, %cst_149 : tensor<1x1184x2x2xf32>, tensor<128x1184x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %367 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%366 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %368 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_951 = tensor.pad %368 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_951, %cst_148 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %370 = tensor.empty() : tensor<1x1216x2x2xf32>
    %inserted_slice_952 = tensor.insert_slice %156 into %370[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_953 = tensor.insert_slice %166 into %inserted_slice_952[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_954 = tensor.insert_slice %173 into %inserted_slice_953[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_955 = tensor.insert_slice %180 into %inserted_slice_954[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_956 = tensor.insert_slice %187 into %inserted_slice_955[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_957 = tensor.insert_slice %194 into %inserted_slice_956[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_958 = tensor.insert_slice %201 into %inserted_slice_957[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_959 = tensor.insert_slice %208 into %inserted_slice_958[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_960 = tensor.insert_slice %215 into %inserted_slice_959[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_961 = tensor.insert_slice %222 into %inserted_slice_960[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_962 = tensor.insert_slice %229 into %inserted_slice_961[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_963 = tensor.insert_slice %236 into %inserted_slice_962[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_964 = tensor.insert_slice %243 into %inserted_slice_963[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_965 = tensor.insert_slice %250 into %inserted_slice_964[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_966 = tensor.insert_slice %257 into %inserted_slice_965[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_967 = tensor.insert_slice %264 into %inserted_slice_966[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_968 = tensor.insert_slice %271 into %inserted_slice_967[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_969 = tensor.insert_slice %278 into %inserted_slice_968[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_970 = tensor.insert_slice %285 into %inserted_slice_969[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_971 = tensor.insert_slice %292 into %inserted_slice_970[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_972 = tensor.insert_slice %299 into %inserted_slice_971[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_973 = tensor.insert_slice %306 into %inserted_slice_972[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_974 = tensor.insert_slice %313 into %inserted_slice_973[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_975 = tensor.insert_slice %320 into %inserted_slice_974[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_976 = tensor.insert_slice %327 into %inserted_slice_975[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_977 = tensor.insert_slice %334 into %inserted_slice_976[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_978 = tensor.insert_slice %341 into %inserted_slice_977[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_979 = tensor.insert_slice %348 into %inserted_slice_978[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_980 = tensor.insert_slice %355 into %inserted_slice_979[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_981 = tensor.insert_slice %362 into %inserted_slice_980[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    %inserted_slice_982 = tensor.insert_slice %369 into %inserted_slice_981[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1216x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %371 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_982, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x1216x2x2xf32>, tensor<1216xf32>, tensor<1216xf32>, tensor<1216xf32>, tensor<1216xf32>) outs(%inserted_slice_982 : tensor<1x1216x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1216x2x2xf32>
    %372 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x1216x2x2xf32>) outs(%370 : tensor<1x1216x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1216x2x2xf32>
    %373 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%372, %cst_145 : tensor<1x1216x2x2xf32>, tensor<128x1216x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %374 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%373 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_983 = tensor.pad %375 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %376 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_983, %cst_144 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %377 = tensor.empty() : tensor<1x1248x2x2xf32>
    %inserted_slice_984 = tensor.insert_slice %156 into %377[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_985 = tensor.insert_slice %166 into %inserted_slice_984[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_986 = tensor.insert_slice %173 into %inserted_slice_985[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_987 = tensor.insert_slice %180 into %inserted_slice_986[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_988 = tensor.insert_slice %187 into %inserted_slice_987[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_989 = tensor.insert_slice %194 into %inserted_slice_988[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_990 = tensor.insert_slice %201 into %inserted_slice_989[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_991 = tensor.insert_slice %208 into %inserted_slice_990[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_992 = tensor.insert_slice %215 into %inserted_slice_991[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_993 = tensor.insert_slice %222 into %inserted_slice_992[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_994 = tensor.insert_slice %229 into %inserted_slice_993[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_995 = tensor.insert_slice %236 into %inserted_slice_994[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_996 = tensor.insert_slice %243 into %inserted_slice_995[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_997 = tensor.insert_slice %250 into %inserted_slice_996[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_998 = tensor.insert_slice %257 into %inserted_slice_997[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_999 = tensor.insert_slice %264 into %inserted_slice_998[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1000 = tensor.insert_slice %271 into %inserted_slice_999[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1001 = tensor.insert_slice %278 into %inserted_slice_1000[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1002 = tensor.insert_slice %285 into %inserted_slice_1001[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1003 = tensor.insert_slice %292 into %inserted_slice_1002[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1004 = tensor.insert_slice %299 into %inserted_slice_1003[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1005 = tensor.insert_slice %306 into %inserted_slice_1004[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1006 = tensor.insert_slice %313 into %inserted_slice_1005[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1007 = tensor.insert_slice %320 into %inserted_slice_1006[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1008 = tensor.insert_slice %327 into %inserted_slice_1007[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1009 = tensor.insert_slice %334 into %inserted_slice_1008[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1010 = tensor.insert_slice %341 into %inserted_slice_1009[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1011 = tensor.insert_slice %348 into %inserted_slice_1010[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1012 = tensor.insert_slice %355 into %inserted_slice_1011[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1013 = tensor.insert_slice %362 into %inserted_slice_1012[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1014 = tensor.insert_slice %369 into %inserted_slice_1013[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_1015 = tensor.insert_slice %376 into %inserted_slice_1014[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1248x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %378 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1015, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x1248x2x2xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%inserted_slice_1015 : tensor<1x1248x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1248x2x2xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x1248x2x2xf32>) outs(%377 : tensor<1x1248x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1248x2x2xf32>
    %380 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%379, %cst_141 : tensor<1x1248x2x2xf32>, tensor<128x1248x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %381 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%380 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %382 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1016 = tensor.pad %382 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %383 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1016, %cst_140 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %384 = tensor.empty() : tensor<1x1280x2x2xf32>
    %inserted_slice_1017 = tensor.insert_slice %156 into %384[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1018 = tensor.insert_slice %166 into %inserted_slice_1017[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1019 = tensor.insert_slice %173 into %inserted_slice_1018[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1020 = tensor.insert_slice %180 into %inserted_slice_1019[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1021 = tensor.insert_slice %187 into %inserted_slice_1020[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1022 = tensor.insert_slice %194 into %inserted_slice_1021[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1023 = tensor.insert_slice %201 into %inserted_slice_1022[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1024 = tensor.insert_slice %208 into %inserted_slice_1023[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1025 = tensor.insert_slice %215 into %inserted_slice_1024[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1026 = tensor.insert_slice %222 into %inserted_slice_1025[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1027 = tensor.insert_slice %229 into %inserted_slice_1026[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1028 = tensor.insert_slice %236 into %inserted_slice_1027[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1029 = tensor.insert_slice %243 into %inserted_slice_1028[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1030 = tensor.insert_slice %250 into %inserted_slice_1029[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1031 = tensor.insert_slice %257 into %inserted_slice_1030[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1032 = tensor.insert_slice %264 into %inserted_slice_1031[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1033 = tensor.insert_slice %271 into %inserted_slice_1032[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1034 = tensor.insert_slice %278 into %inserted_slice_1033[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1035 = tensor.insert_slice %285 into %inserted_slice_1034[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1036 = tensor.insert_slice %292 into %inserted_slice_1035[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1037 = tensor.insert_slice %299 into %inserted_slice_1036[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1038 = tensor.insert_slice %306 into %inserted_slice_1037[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1039 = tensor.insert_slice %313 into %inserted_slice_1038[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1040 = tensor.insert_slice %320 into %inserted_slice_1039[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1041 = tensor.insert_slice %327 into %inserted_slice_1040[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1042 = tensor.insert_slice %334 into %inserted_slice_1041[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1043 = tensor.insert_slice %341 into %inserted_slice_1042[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1044 = tensor.insert_slice %348 into %inserted_slice_1043[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1045 = tensor.insert_slice %355 into %inserted_slice_1044[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1046 = tensor.insert_slice %362 into %inserted_slice_1045[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1047 = tensor.insert_slice %369 into %inserted_slice_1046[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1048 = tensor.insert_slice %376 into %inserted_slice_1047[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    %inserted_slice_1049 = tensor.insert_slice %383 into %inserted_slice_1048[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1280x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %385 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1049, %cst_139, %cst_138, %cst_138, %cst_139 : tensor<1x1280x2x2xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%inserted_slice_1049 : tensor<1x1280x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1280x2x2xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x1280x2x2xf32>) outs(%384 : tensor<1x1280x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1280x2x2xf32>
    %387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_137 : tensor<1x1280x2x2xf32>, tensor<128x1280x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%387 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1050 = tensor.pad %389 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %390 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1050, %cst_136 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %391 = tensor.empty() : tensor<1x1312x2x2xf32>
    %inserted_slice_1051 = tensor.insert_slice %156 into %391[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1052 = tensor.insert_slice %166 into %inserted_slice_1051[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1053 = tensor.insert_slice %173 into %inserted_slice_1052[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1054 = tensor.insert_slice %180 into %inserted_slice_1053[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1055 = tensor.insert_slice %187 into %inserted_slice_1054[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1056 = tensor.insert_slice %194 into %inserted_slice_1055[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1057 = tensor.insert_slice %201 into %inserted_slice_1056[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1058 = tensor.insert_slice %208 into %inserted_slice_1057[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1059 = tensor.insert_slice %215 into %inserted_slice_1058[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1060 = tensor.insert_slice %222 into %inserted_slice_1059[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1061 = tensor.insert_slice %229 into %inserted_slice_1060[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1062 = tensor.insert_slice %236 into %inserted_slice_1061[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1063 = tensor.insert_slice %243 into %inserted_slice_1062[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1064 = tensor.insert_slice %250 into %inserted_slice_1063[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1065 = tensor.insert_slice %257 into %inserted_slice_1064[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1066 = tensor.insert_slice %264 into %inserted_slice_1065[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1067 = tensor.insert_slice %271 into %inserted_slice_1066[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1068 = tensor.insert_slice %278 into %inserted_slice_1067[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1069 = tensor.insert_slice %285 into %inserted_slice_1068[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1070 = tensor.insert_slice %292 into %inserted_slice_1069[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1071 = tensor.insert_slice %299 into %inserted_slice_1070[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1072 = tensor.insert_slice %306 into %inserted_slice_1071[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1073 = tensor.insert_slice %313 into %inserted_slice_1072[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1074 = tensor.insert_slice %320 into %inserted_slice_1073[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1075 = tensor.insert_slice %327 into %inserted_slice_1074[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1076 = tensor.insert_slice %334 into %inserted_slice_1075[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1077 = tensor.insert_slice %341 into %inserted_slice_1076[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1078 = tensor.insert_slice %348 into %inserted_slice_1077[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1079 = tensor.insert_slice %355 into %inserted_slice_1078[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1080 = tensor.insert_slice %362 into %inserted_slice_1079[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1081 = tensor.insert_slice %369 into %inserted_slice_1080[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1082 = tensor.insert_slice %376 into %inserted_slice_1081[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1083 = tensor.insert_slice %383 into %inserted_slice_1082[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    %inserted_slice_1084 = tensor.insert_slice %390 into %inserted_slice_1083[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1312x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %392 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1084, %cst_135, %cst_134, %cst_134, %cst_135 : tensor<1x1312x2x2xf32>, tensor<1312xf32>, tensor<1312xf32>, tensor<1312xf32>, tensor<1312xf32>) outs(%inserted_slice_1084 : tensor<1x1312x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1312x2x2xf32>
    %393 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x1312x2x2xf32>) outs(%391 : tensor<1x1312x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1312x2x2xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%393, %cst_133 : tensor<1x1312x2x2xf32>, tensor<128x1312x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%394 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1085 = tensor.pad %396 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1085, %cst_132 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %398 = tensor.empty() : tensor<1x1344x2x2xf32>
    %inserted_slice_1086 = tensor.insert_slice %156 into %398[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1087 = tensor.insert_slice %166 into %inserted_slice_1086[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1088 = tensor.insert_slice %173 into %inserted_slice_1087[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1089 = tensor.insert_slice %180 into %inserted_slice_1088[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1090 = tensor.insert_slice %187 into %inserted_slice_1089[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1091 = tensor.insert_slice %194 into %inserted_slice_1090[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1092 = tensor.insert_slice %201 into %inserted_slice_1091[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1093 = tensor.insert_slice %208 into %inserted_slice_1092[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1094 = tensor.insert_slice %215 into %inserted_slice_1093[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1095 = tensor.insert_slice %222 into %inserted_slice_1094[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1096 = tensor.insert_slice %229 into %inserted_slice_1095[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1097 = tensor.insert_slice %236 into %inserted_slice_1096[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1098 = tensor.insert_slice %243 into %inserted_slice_1097[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1099 = tensor.insert_slice %250 into %inserted_slice_1098[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1100 = tensor.insert_slice %257 into %inserted_slice_1099[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1101 = tensor.insert_slice %264 into %inserted_slice_1100[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1102 = tensor.insert_slice %271 into %inserted_slice_1101[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1103 = tensor.insert_slice %278 into %inserted_slice_1102[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1104 = tensor.insert_slice %285 into %inserted_slice_1103[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1105 = tensor.insert_slice %292 into %inserted_slice_1104[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1106 = tensor.insert_slice %299 into %inserted_slice_1105[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1107 = tensor.insert_slice %306 into %inserted_slice_1106[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1108 = tensor.insert_slice %313 into %inserted_slice_1107[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1109 = tensor.insert_slice %320 into %inserted_slice_1108[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1110 = tensor.insert_slice %327 into %inserted_slice_1109[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1111 = tensor.insert_slice %334 into %inserted_slice_1110[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1112 = tensor.insert_slice %341 into %inserted_slice_1111[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1113 = tensor.insert_slice %348 into %inserted_slice_1112[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1114 = tensor.insert_slice %355 into %inserted_slice_1113[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1115 = tensor.insert_slice %362 into %inserted_slice_1114[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1116 = tensor.insert_slice %369 into %inserted_slice_1115[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1117 = tensor.insert_slice %376 into %inserted_slice_1116[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1118 = tensor.insert_slice %383 into %inserted_slice_1117[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1119 = tensor.insert_slice %390 into %inserted_slice_1118[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_1120 = tensor.insert_slice %397 into %inserted_slice_1119[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %399 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1120, %cst_131, %cst_130, %cst_130, %cst_131 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%inserted_slice_1120 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1344x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x1344x2x2xf32>) outs(%398 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1344x2x2xf32>
    %401 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%400, %cst_129 : tensor<1x1344x2x2xf32>, tensor<128x1344x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%401 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1121 = tensor.pad %403 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %404 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1121, %cst_128 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %405 = tensor.empty() : tensor<1x1376x2x2xf32>
    %inserted_slice_1122 = tensor.insert_slice %156 into %405[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1123 = tensor.insert_slice %166 into %inserted_slice_1122[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1124 = tensor.insert_slice %173 into %inserted_slice_1123[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1125 = tensor.insert_slice %180 into %inserted_slice_1124[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1126 = tensor.insert_slice %187 into %inserted_slice_1125[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1127 = tensor.insert_slice %194 into %inserted_slice_1126[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1128 = tensor.insert_slice %201 into %inserted_slice_1127[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1129 = tensor.insert_slice %208 into %inserted_slice_1128[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1130 = tensor.insert_slice %215 into %inserted_slice_1129[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1131 = tensor.insert_slice %222 into %inserted_slice_1130[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1132 = tensor.insert_slice %229 into %inserted_slice_1131[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1133 = tensor.insert_slice %236 into %inserted_slice_1132[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1134 = tensor.insert_slice %243 into %inserted_slice_1133[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1135 = tensor.insert_slice %250 into %inserted_slice_1134[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1136 = tensor.insert_slice %257 into %inserted_slice_1135[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1137 = tensor.insert_slice %264 into %inserted_slice_1136[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1138 = tensor.insert_slice %271 into %inserted_slice_1137[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1139 = tensor.insert_slice %278 into %inserted_slice_1138[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1140 = tensor.insert_slice %285 into %inserted_slice_1139[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1141 = tensor.insert_slice %292 into %inserted_slice_1140[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1142 = tensor.insert_slice %299 into %inserted_slice_1141[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1143 = tensor.insert_slice %306 into %inserted_slice_1142[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1144 = tensor.insert_slice %313 into %inserted_slice_1143[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1145 = tensor.insert_slice %320 into %inserted_slice_1144[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1146 = tensor.insert_slice %327 into %inserted_slice_1145[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1147 = tensor.insert_slice %334 into %inserted_slice_1146[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1148 = tensor.insert_slice %341 into %inserted_slice_1147[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1149 = tensor.insert_slice %348 into %inserted_slice_1148[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1150 = tensor.insert_slice %355 into %inserted_slice_1149[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1151 = tensor.insert_slice %362 into %inserted_slice_1150[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1152 = tensor.insert_slice %369 into %inserted_slice_1151[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1153 = tensor.insert_slice %376 into %inserted_slice_1152[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1154 = tensor.insert_slice %383 into %inserted_slice_1153[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1155 = tensor.insert_slice %390 into %inserted_slice_1154[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1156 = tensor.insert_slice %397 into %inserted_slice_1155[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    %inserted_slice_1157 = tensor.insert_slice %404 into %inserted_slice_1156[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1376x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %406 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1157, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x1376x2x2xf32>, tensor<1376xf32>, tensor<1376xf32>, tensor<1376xf32>, tensor<1376xf32>) outs(%inserted_slice_1157 : tensor<1x1376x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1376x2x2xf32>
    %407 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406 : tensor<1x1376x2x2xf32>) outs(%405 : tensor<1x1376x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1376x2x2xf32>
    %408 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%407, %cst_125 : tensor<1x1376x2x2xf32>, tensor<128x1376x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %409 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%408 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %410 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1158 = tensor.pad %410 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1158, %cst_124 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %412 = tensor.empty() : tensor<1x1408x2x2xf32>
    %inserted_slice_1159 = tensor.insert_slice %156 into %412[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1160 = tensor.insert_slice %166 into %inserted_slice_1159[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1161 = tensor.insert_slice %173 into %inserted_slice_1160[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1162 = tensor.insert_slice %180 into %inserted_slice_1161[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1163 = tensor.insert_slice %187 into %inserted_slice_1162[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1164 = tensor.insert_slice %194 into %inserted_slice_1163[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1165 = tensor.insert_slice %201 into %inserted_slice_1164[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1166 = tensor.insert_slice %208 into %inserted_slice_1165[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1167 = tensor.insert_slice %215 into %inserted_slice_1166[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1168 = tensor.insert_slice %222 into %inserted_slice_1167[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1169 = tensor.insert_slice %229 into %inserted_slice_1168[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1170 = tensor.insert_slice %236 into %inserted_slice_1169[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1171 = tensor.insert_slice %243 into %inserted_slice_1170[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1172 = tensor.insert_slice %250 into %inserted_slice_1171[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1173 = tensor.insert_slice %257 into %inserted_slice_1172[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1174 = tensor.insert_slice %264 into %inserted_slice_1173[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1175 = tensor.insert_slice %271 into %inserted_slice_1174[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1176 = tensor.insert_slice %278 into %inserted_slice_1175[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1177 = tensor.insert_slice %285 into %inserted_slice_1176[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1178 = tensor.insert_slice %292 into %inserted_slice_1177[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1179 = tensor.insert_slice %299 into %inserted_slice_1178[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1180 = tensor.insert_slice %306 into %inserted_slice_1179[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1181 = tensor.insert_slice %313 into %inserted_slice_1180[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1182 = tensor.insert_slice %320 into %inserted_slice_1181[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1183 = tensor.insert_slice %327 into %inserted_slice_1182[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1184 = tensor.insert_slice %334 into %inserted_slice_1183[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1185 = tensor.insert_slice %341 into %inserted_slice_1184[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1186 = tensor.insert_slice %348 into %inserted_slice_1185[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1187 = tensor.insert_slice %355 into %inserted_slice_1186[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1188 = tensor.insert_slice %362 into %inserted_slice_1187[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1189 = tensor.insert_slice %369 into %inserted_slice_1188[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1190 = tensor.insert_slice %376 into %inserted_slice_1189[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1191 = tensor.insert_slice %383 into %inserted_slice_1190[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1192 = tensor.insert_slice %390 into %inserted_slice_1191[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1193 = tensor.insert_slice %397 into %inserted_slice_1192[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1194 = tensor.insert_slice %404 into %inserted_slice_1193[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    %inserted_slice_1195 = tensor.insert_slice %411 into %inserted_slice_1194[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1408x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %413 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1195, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x1408x2x2xf32>, tensor<1408xf32>, tensor<1408xf32>, tensor<1408xf32>, tensor<1408xf32>) outs(%inserted_slice_1195 : tensor<1x1408x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1408x2x2xf32>
    %414 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413 : tensor<1x1408x2x2xf32>) outs(%412 : tensor<1x1408x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1408x2x2xf32>
    %415 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%414, %cst_121 : tensor<1x1408x2x2xf32>, tensor<128x1408x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %416 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%415 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %417 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1196 = tensor.pad %417 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %418 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1196, %cst_120 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %419 = tensor.empty() : tensor<1x1440x2x2xf32>
    %inserted_slice_1197 = tensor.insert_slice %156 into %419[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1198 = tensor.insert_slice %166 into %inserted_slice_1197[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1199 = tensor.insert_slice %173 into %inserted_slice_1198[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1200 = tensor.insert_slice %180 into %inserted_slice_1199[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1201 = tensor.insert_slice %187 into %inserted_slice_1200[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1202 = tensor.insert_slice %194 into %inserted_slice_1201[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1203 = tensor.insert_slice %201 into %inserted_slice_1202[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1204 = tensor.insert_slice %208 into %inserted_slice_1203[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1205 = tensor.insert_slice %215 into %inserted_slice_1204[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1206 = tensor.insert_slice %222 into %inserted_slice_1205[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1207 = tensor.insert_slice %229 into %inserted_slice_1206[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1208 = tensor.insert_slice %236 into %inserted_slice_1207[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1209 = tensor.insert_slice %243 into %inserted_slice_1208[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1210 = tensor.insert_slice %250 into %inserted_slice_1209[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1211 = tensor.insert_slice %257 into %inserted_slice_1210[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1212 = tensor.insert_slice %264 into %inserted_slice_1211[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1213 = tensor.insert_slice %271 into %inserted_slice_1212[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1214 = tensor.insert_slice %278 into %inserted_slice_1213[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1215 = tensor.insert_slice %285 into %inserted_slice_1214[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1216 = tensor.insert_slice %292 into %inserted_slice_1215[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1217 = tensor.insert_slice %299 into %inserted_slice_1216[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1218 = tensor.insert_slice %306 into %inserted_slice_1217[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1219 = tensor.insert_slice %313 into %inserted_slice_1218[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1220 = tensor.insert_slice %320 into %inserted_slice_1219[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1221 = tensor.insert_slice %327 into %inserted_slice_1220[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1222 = tensor.insert_slice %334 into %inserted_slice_1221[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1223 = tensor.insert_slice %341 into %inserted_slice_1222[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1224 = tensor.insert_slice %348 into %inserted_slice_1223[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1225 = tensor.insert_slice %355 into %inserted_slice_1224[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1226 = tensor.insert_slice %362 into %inserted_slice_1225[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1227 = tensor.insert_slice %369 into %inserted_slice_1226[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1228 = tensor.insert_slice %376 into %inserted_slice_1227[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1229 = tensor.insert_slice %383 into %inserted_slice_1228[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1230 = tensor.insert_slice %390 into %inserted_slice_1229[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1231 = tensor.insert_slice %397 into %inserted_slice_1230[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1232 = tensor.insert_slice %404 into %inserted_slice_1231[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1233 = tensor.insert_slice %411 into %inserted_slice_1232[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_1234 = tensor.insert_slice %418 into %inserted_slice_1233[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1440x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %420 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1234, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1440x2x2xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>) outs(%inserted_slice_1234 : tensor<1x1440x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1440x2x2xf32>
    %421 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<1x1440x2x2xf32>) outs(%419 : tensor<1x1440x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1440x2x2xf32>
    %422 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%421, %cst_117 : tensor<1x1440x2x2xf32>, tensor<128x1440x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %423 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%422 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %424 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1235 = tensor.pad %424 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %425 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1235, %cst_116 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %426 = tensor.empty() : tensor<1x1472x2x2xf32>
    %inserted_slice_1236 = tensor.insert_slice %156 into %426[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1237 = tensor.insert_slice %166 into %inserted_slice_1236[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1238 = tensor.insert_slice %173 into %inserted_slice_1237[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1239 = tensor.insert_slice %180 into %inserted_slice_1238[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1240 = tensor.insert_slice %187 into %inserted_slice_1239[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1241 = tensor.insert_slice %194 into %inserted_slice_1240[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1242 = tensor.insert_slice %201 into %inserted_slice_1241[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1243 = tensor.insert_slice %208 into %inserted_slice_1242[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1244 = tensor.insert_slice %215 into %inserted_slice_1243[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1245 = tensor.insert_slice %222 into %inserted_slice_1244[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1246 = tensor.insert_slice %229 into %inserted_slice_1245[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1247 = tensor.insert_slice %236 into %inserted_slice_1246[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1248 = tensor.insert_slice %243 into %inserted_slice_1247[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1249 = tensor.insert_slice %250 into %inserted_slice_1248[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1250 = tensor.insert_slice %257 into %inserted_slice_1249[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1251 = tensor.insert_slice %264 into %inserted_slice_1250[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1252 = tensor.insert_slice %271 into %inserted_slice_1251[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1253 = tensor.insert_slice %278 into %inserted_slice_1252[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1254 = tensor.insert_slice %285 into %inserted_slice_1253[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1255 = tensor.insert_slice %292 into %inserted_slice_1254[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1256 = tensor.insert_slice %299 into %inserted_slice_1255[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1257 = tensor.insert_slice %306 into %inserted_slice_1256[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1258 = tensor.insert_slice %313 into %inserted_slice_1257[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1259 = tensor.insert_slice %320 into %inserted_slice_1258[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1260 = tensor.insert_slice %327 into %inserted_slice_1259[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1261 = tensor.insert_slice %334 into %inserted_slice_1260[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1262 = tensor.insert_slice %341 into %inserted_slice_1261[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1263 = tensor.insert_slice %348 into %inserted_slice_1262[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1264 = tensor.insert_slice %355 into %inserted_slice_1263[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1265 = tensor.insert_slice %362 into %inserted_slice_1264[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1266 = tensor.insert_slice %369 into %inserted_slice_1265[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1267 = tensor.insert_slice %376 into %inserted_slice_1266[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1268 = tensor.insert_slice %383 into %inserted_slice_1267[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1269 = tensor.insert_slice %390 into %inserted_slice_1268[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1270 = tensor.insert_slice %397 into %inserted_slice_1269[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1271 = tensor.insert_slice %404 into %inserted_slice_1270[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1272 = tensor.insert_slice %411 into %inserted_slice_1271[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1273 = tensor.insert_slice %418 into %inserted_slice_1272[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    %inserted_slice_1274 = tensor.insert_slice %425 into %inserted_slice_1273[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1472x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %427 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1274, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x1472x2x2xf32>, tensor<1472xf32>, tensor<1472xf32>, tensor<1472xf32>, tensor<1472xf32>) outs(%inserted_slice_1274 : tensor<1x1472x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1472x2x2xf32>
    %428 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x1472x2x2xf32>) outs(%426 : tensor<1x1472x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1472x2x2xf32>
    %429 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%428, %cst_113 : tensor<1x1472x2x2xf32>, tensor<128x1472x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %430 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%429 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %431 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1275 = tensor.pad %431 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %432 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1275, %cst_112 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %433 = tensor.empty() : tensor<1x1504x2x2xf32>
    %inserted_slice_1276 = tensor.insert_slice %156 into %433[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1277 = tensor.insert_slice %166 into %inserted_slice_1276[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1278 = tensor.insert_slice %173 into %inserted_slice_1277[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1279 = tensor.insert_slice %180 into %inserted_slice_1278[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1280 = tensor.insert_slice %187 into %inserted_slice_1279[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1281 = tensor.insert_slice %194 into %inserted_slice_1280[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1282 = tensor.insert_slice %201 into %inserted_slice_1281[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1283 = tensor.insert_slice %208 into %inserted_slice_1282[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1284 = tensor.insert_slice %215 into %inserted_slice_1283[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1285 = tensor.insert_slice %222 into %inserted_slice_1284[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1286 = tensor.insert_slice %229 into %inserted_slice_1285[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1287 = tensor.insert_slice %236 into %inserted_slice_1286[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1288 = tensor.insert_slice %243 into %inserted_slice_1287[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1289 = tensor.insert_slice %250 into %inserted_slice_1288[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1290 = tensor.insert_slice %257 into %inserted_slice_1289[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1291 = tensor.insert_slice %264 into %inserted_slice_1290[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1292 = tensor.insert_slice %271 into %inserted_slice_1291[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1293 = tensor.insert_slice %278 into %inserted_slice_1292[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1294 = tensor.insert_slice %285 into %inserted_slice_1293[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1295 = tensor.insert_slice %292 into %inserted_slice_1294[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1296 = tensor.insert_slice %299 into %inserted_slice_1295[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1297 = tensor.insert_slice %306 into %inserted_slice_1296[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1298 = tensor.insert_slice %313 into %inserted_slice_1297[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1299 = tensor.insert_slice %320 into %inserted_slice_1298[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1300 = tensor.insert_slice %327 into %inserted_slice_1299[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1301 = tensor.insert_slice %334 into %inserted_slice_1300[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1302 = tensor.insert_slice %341 into %inserted_slice_1301[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1303 = tensor.insert_slice %348 into %inserted_slice_1302[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1304 = tensor.insert_slice %355 into %inserted_slice_1303[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1305 = tensor.insert_slice %362 into %inserted_slice_1304[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1306 = tensor.insert_slice %369 into %inserted_slice_1305[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1307 = tensor.insert_slice %376 into %inserted_slice_1306[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1308 = tensor.insert_slice %383 into %inserted_slice_1307[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1309 = tensor.insert_slice %390 into %inserted_slice_1308[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1310 = tensor.insert_slice %397 into %inserted_slice_1309[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1311 = tensor.insert_slice %404 into %inserted_slice_1310[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1312 = tensor.insert_slice %411 into %inserted_slice_1311[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1313 = tensor.insert_slice %418 into %inserted_slice_1312[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1314 = tensor.insert_slice %425 into %inserted_slice_1313[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    %inserted_slice_1315 = tensor.insert_slice %432 into %inserted_slice_1314[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1504x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %434 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1315, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x1504x2x2xf32>, tensor<1504xf32>, tensor<1504xf32>, tensor<1504xf32>, tensor<1504xf32>) outs(%inserted_slice_1315 : tensor<1x1504x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1504x2x2xf32>
    %435 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x1504x2x2xf32>) outs(%433 : tensor<1x1504x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1504x2x2xf32>
    %436 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%435, %cst_109 : tensor<1x1504x2x2xf32>, tensor<128x1504x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %437 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%436 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %438 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1316 = tensor.pad %438 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %439 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1316, %cst_108 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %440 = tensor.empty() : tensor<1x1536x2x2xf32>
    %inserted_slice_1317 = tensor.insert_slice %156 into %440[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1318 = tensor.insert_slice %166 into %inserted_slice_1317[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1319 = tensor.insert_slice %173 into %inserted_slice_1318[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1320 = tensor.insert_slice %180 into %inserted_slice_1319[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1321 = tensor.insert_slice %187 into %inserted_slice_1320[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1322 = tensor.insert_slice %194 into %inserted_slice_1321[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1323 = tensor.insert_slice %201 into %inserted_slice_1322[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1324 = tensor.insert_slice %208 into %inserted_slice_1323[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1325 = tensor.insert_slice %215 into %inserted_slice_1324[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1326 = tensor.insert_slice %222 into %inserted_slice_1325[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1327 = tensor.insert_slice %229 into %inserted_slice_1326[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1328 = tensor.insert_slice %236 into %inserted_slice_1327[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1329 = tensor.insert_slice %243 into %inserted_slice_1328[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1330 = tensor.insert_slice %250 into %inserted_slice_1329[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1331 = tensor.insert_slice %257 into %inserted_slice_1330[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1332 = tensor.insert_slice %264 into %inserted_slice_1331[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1333 = tensor.insert_slice %271 into %inserted_slice_1332[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1334 = tensor.insert_slice %278 into %inserted_slice_1333[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1335 = tensor.insert_slice %285 into %inserted_slice_1334[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1336 = tensor.insert_slice %292 into %inserted_slice_1335[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1337 = tensor.insert_slice %299 into %inserted_slice_1336[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1338 = tensor.insert_slice %306 into %inserted_slice_1337[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1339 = tensor.insert_slice %313 into %inserted_slice_1338[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1340 = tensor.insert_slice %320 into %inserted_slice_1339[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1341 = tensor.insert_slice %327 into %inserted_slice_1340[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1342 = tensor.insert_slice %334 into %inserted_slice_1341[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1343 = tensor.insert_slice %341 into %inserted_slice_1342[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1344 = tensor.insert_slice %348 into %inserted_slice_1343[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1345 = tensor.insert_slice %355 into %inserted_slice_1344[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1346 = tensor.insert_slice %362 into %inserted_slice_1345[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1347 = tensor.insert_slice %369 into %inserted_slice_1346[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1348 = tensor.insert_slice %376 into %inserted_slice_1347[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1349 = tensor.insert_slice %383 into %inserted_slice_1348[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1350 = tensor.insert_slice %390 into %inserted_slice_1349[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1351 = tensor.insert_slice %397 into %inserted_slice_1350[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1352 = tensor.insert_slice %404 into %inserted_slice_1351[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1353 = tensor.insert_slice %411 into %inserted_slice_1352[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1354 = tensor.insert_slice %418 into %inserted_slice_1353[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1355 = tensor.insert_slice %425 into %inserted_slice_1354[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1356 = tensor.insert_slice %432 into %inserted_slice_1355[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_1357 = tensor.insert_slice %439 into %inserted_slice_1356[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1536x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %441 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1357, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x1536x2x2xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%inserted_slice_1357 : tensor<1x1536x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1536x2x2xf32>
    %442 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x1536x2x2xf32>) outs(%440 : tensor<1x1536x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1536x2x2xf32>
    %443 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%442, %cst_105 : tensor<1x1536x2x2xf32>, tensor<128x1536x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %444 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%443 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %445 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1358 = tensor.pad %445 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %446 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1358, %cst_104 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %447 = tensor.empty() : tensor<1x1568x2x2xf32>
    %inserted_slice_1359 = tensor.insert_slice %156 into %447[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1360 = tensor.insert_slice %166 into %inserted_slice_1359[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1361 = tensor.insert_slice %173 into %inserted_slice_1360[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1362 = tensor.insert_slice %180 into %inserted_slice_1361[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1363 = tensor.insert_slice %187 into %inserted_slice_1362[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1364 = tensor.insert_slice %194 into %inserted_slice_1363[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1365 = tensor.insert_slice %201 into %inserted_slice_1364[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1366 = tensor.insert_slice %208 into %inserted_slice_1365[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1367 = tensor.insert_slice %215 into %inserted_slice_1366[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1368 = tensor.insert_slice %222 into %inserted_slice_1367[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1369 = tensor.insert_slice %229 into %inserted_slice_1368[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1370 = tensor.insert_slice %236 into %inserted_slice_1369[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1371 = tensor.insert_slice %243 into %inserted_slice_1370[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1372 = tensor.insert_slice %250 into %inserted_slice_1371[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1373 = tensor.insert_slice %257 into %inserted_slice_1372[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1374 = tensor.insert_slice %264 into %inserted_slice_1373[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1375 = tensor.insert_slice %271 into %inserted_slice_1374[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1376 = tensor.insert_slice %278 into %inserted_slice_1375[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1377 = tensor.insert_slice %285 into %inserted_slice_1376[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1378 = tensor.insert_slice %292 into %inserted_slice_1377[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1379 = tensor.insert_slice %299 into %inserted_slice_1378[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1380 = tensor.insert_slice %306 into %inserted_slice_1379[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1381 = tensor.insert_slice %313 into %inserted_slice_1380[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1382 = tensor.insert_slice %320 into %inserted_slice_1381[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1383 = tensor.insert_slice %327 into %inserted_slice_1382[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1384 = tensor.insert_slice %334 into %inserted_slice_1383[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1385 = tensor.insert_slice %341 into %inserted_slice_1384[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1386 = tensor.insert_slice %348 into %inserted_slice_1385[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1387 = tensor.insert_slice %355 into %inserted_slice_1386[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1388 = tensor.insert_slice %362 into %inserted_slice_1387[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1389 = tensor.insert_slice %369 into %inserted_slice_1388[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1390 = tensor.insert_slice %376 into %inserted_slice_1389[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1391 = tensor.insert_slice %383 into %inserted_slice_1390[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1392 = tensor.insert_slice %390 into %inserted_slice_1391[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1393 = tensor.insert_slice %397 into %inserted_slice_1392[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1394 = tensor.insert_slice %404 into %inserted_slice_1393[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1395 = tensor.insert_slice %411 into %inserted_slice_1394[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1396 = tensor.insert_slice %418 into %inserted_slice_1395[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1397 = tensor.insert_slice %425 into %inserted_slice_1396[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1398 = tensor.insert_slice %432 into %inserted_slice_1397[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1399 = tensor.insert_slice %439 into %inserted_slice_1398[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    %inserted_slice_1400 = tensor.insert_slice %446 into %inserted_slice_1399[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1568x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %448 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1400, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x1568x2x2xf32>, tensor<1568xf32>, tensor<1568xf32>, tensor<1568xf32>, tensor<1568xf32>) outs(%inserted_slice_1400 : tensor<1x1568x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1568x2x2xf32>
    %449 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x1568x2x2xf32>) outs(%447 : tensor<1x1568x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1568x2x2xf32>
    %450 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%449, %cst_101 : tensor<1x1568x2x2xf32>, tensor<128x1568x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %451 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%450 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %452 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1401 = tensor.pad %452 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %453 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1401, %cst_100 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %454 = tensor.empty() : tensor<1x1600x2x2xf32>
    %inserted_slice_1402 = tensor.insert_slice %156 into %454[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1403 = tensor.insert_slice %166 into %inserted_slice_1402[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1404 = tensor.insert_slice %173 into %inserted_slice_1403[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1405 = tensor.insert_slice %180 into %inserted_slice_1404[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1406 = tensor.insert_slice %187 into %inserted_slice_1405[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1407 = tensor.insert_slice %194 into %inserted_slice_1406[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1408 = tensor.insert_slice %201 into %inserted_slice_1407[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1409 = tensor.insert_slice %208 into %inserted_slice_1408[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1410 = tensor.insert_slice %215 into %inserted_slice_1409[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1411 = tensor.insert_slice %222 into %inserted_slice_1410[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1412 = tensor.insert_slice %229 into %inserted_slice_1411[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1413 = tensor.insert_slice %236 into %inserted_slice_1412[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1414 = tensor.insert_slice %243 into %inserted_slice_1413[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1415 = tensor.insert_slice %250 into %inserted_slice_1414[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1416 = tensor.insert_slice %257 into %inserted_slice_1415[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1417 = tensor.insert_slice %264 into %inserted_slice_1416[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1418 = tensor.insert_slice %271 into %inserted_slice_1417[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1419 = tensor.insert_slice %278 into %inserted_slice_1418[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1420 = tensor.insert_slice %285 into %inserted_slice_1419[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1421 = tensor.insert_slice %292 into %inserted_slice_1420[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1422 = tensor.insert_slice %299 into %inserted_slice_1421[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1423 = tensor.insert_slice %306 into %inserted_slice_1422[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1424 = tensor.insert_slice %313 into %inserted_slice_1423[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1425 = tensor.insert_slice %320 into %inserted_slice_1424[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1426 = tensor.insert_slice %327 into %inserted_slice_1425[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1427 = tensor.insert_slice %334 into %inserted_slice_1426[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1428 = tensor.insert_slice %341 into %inserted_slice_1427[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1429 = tensor.insert_slice %348 into %inserted_slice_1428[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1430 = tensor.insert_slice %355 into %inserted_slice_1429[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1431 = tensor.insert_slice %362 into %inserted_slice_1430[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1432 = tensor.insert_slice %369 into %inserted_slice_1431[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1433 = tensor.insert_slice %376 into %inserted_slice_1432[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1434 = tensor.insert_slice %383 into %inserted_slice_1433[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1435 = tensor.insert_slice %390 into %inserted_slice_1434[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1436 = tensor.insert_slice %397 into %inserted_slice_1435[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1437 = tensor.insert_slice %404 into %inserted_slice_1436[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1438 = tensor.insert_slice %411 into %inserted_slice_1437[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1439 = tensor.insert_slice %418 into %inserted_slice_1438[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1440 = tensor.insert_slice %425 into %inserted_slice_1439[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1441 = tensor.insert_slice %432 into %inserted_slice_1440[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1442 = tensor.insert_slice %439 into %inserted_slice_1441[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1443 = tensor.insert_slice %446 into %inserted_slice_1442[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    %inserted_slice_1444 = tensor.insert_slice %453 into %inserted_slice_1443[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1600x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %455 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1444, %cst_99, %cst_98, %cst_98, %cst_99 : tensor<1x1600x2x2xf32>, tensor<1600xf32>, tensor<1600xf32>, tensor<1600xf32>, tensor<1600xf32>) outs(%inserted_slice_1444 : tensor<1x1600x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1600x2x2xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x1600x2x2xf32>) outs(%454 : tensor<1x1600x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1600x2x2xf32>
    %457 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%456, %cst_97 : tensor<1x1600x2x2xf32>, tensor<128x1600x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %458 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%457 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %459 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1445 = tensor.pad %459 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %460 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1445, %cst_96 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %461 = tensor.empty() : tensor<1x1632x2x2xf32>
    %inserted_slice_1446 = tensor.insert_slice %156 into %461[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1447 = tensor.insert_slice %166 into %inserted_slice_1446[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1448 = tensor.insert_slice %173 into %inserted_slice_1447[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1449 = tensor.insert_slice %180 into %inserted_slice_1448[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1450 = tensor.insert_slice %187 into %inserted_slice_1449[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1451 = tensor.insert_slice %194 into %inserted_slice_1450[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1452 = tensor.insert_slice %201 into %inserted_slice_1451[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1453 = tensor.insert_slice %208 into %inserted_slice_1452[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1454 = tensor.insert_slice %215 into %inserted_slice_1453[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1455 = tensor.insert_slice %222 into %inserted_slice_1454[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1456 = tensor.insert_slice %229 into %inserted_slice_1455[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1457 = tensor.insert_slice %236 into %inserted_slice_1456[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1458 = tensor.insert_slice %243 into %inserted_slice_1457[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1459 = tensor.insert_slice %250 into %inserted_slice_1458[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1460 = tensor.insert_slice %257 into %inserted_slice_1459[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1461 = tensor.insert_slice %264 into %inserted_slice_1460[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1462 = tensor.insert_slice %271 into %inserted_slice_1461[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1463 = tensor.insert_slice %278 into %inserted_slice_1462[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1464 = tensor.insert_slice %285 into %inserted_slice_1463[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1465 = tensor.insert_slice %292 into %inserted_slice_1464[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1466 = tensor.insert_slice %299 into %inserted_slice_1465[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1467 = tensor.insert_slice %306 into %inserted_slice_1466[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1468 = tensor.insert_slice %313 into %inserted_slice_1467[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1469 = tensor.insert_slice %320 into %inserted_slice_1468[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1470 = tensor.insert_slice %327 into %inserted_slice_1469[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1471 = tensor.insert_slice %334 into %inserted_slice_1470[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1472 = tensor.insert_slice %341 into %inserted_slice_1471[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1473 = tensor.insert_slice %348 into %inserted_slice_1472[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1474 = tensor.insert_slice %355 into %inserted_slice_1473[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1475 = tensor.insert_slice %362 into %inserted_slice_1474[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1476 = tensor.insert_slice %369 into %inserted_slice_1475[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1477 = tensor.insert_slice %376 into %inserted_slice_1476[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1478 = tensor.insert_slice %383 into %inserted_slice_1477[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1479 = tensor.insert_slice %390 into %inserted_slice_1478[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1480 = tensor.insert_slice %397 into %inserted_slice_1479[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1481 = tensor.insert_slice %404 into %inserted_slice_1480[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1482 = tensor.insert_slice %411 into %inserted_slice_1481[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1483 = tensor.insert_slice %418 into %inserted_slice_1482[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1484 = tensor.insert_slice %425 into %inserted_slice_1483[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1485 = tensor.insert_slice %432 into %inserted_slice_1484[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1486 = tensor.insert_slice %439 into %inserted_slice_1485[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1487 = tensor.insert_slice %446 into %inserted_slice_1486[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1488 = tensor.insert_slice %453 into %inserted_slice_1487[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_1489 = tensor.insert_slice %460 into %inserted_slice_1488[0, 1600, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1632x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %462 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1489, %cst_95, %cst_94, %cst_94, %cst_95 : tensor<1x1632x2x2xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%inserted_slice_1489 : tensor<1x1632x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1632x2x2xf32>
    %463 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462 : tensor<1x1632x2x2xf32>) outs(%461 : tensor<1x1632x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1632x2x2xf32>
    %464 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %cst_93 : tensor<1x1632x2x2xf32>, tensor<128x1632x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %465 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%464 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %466 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1490 = tensor.pad %466 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %467 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1490, %cst_92 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %468 = tensor.empty() : tensor<1x1664x2x2xf32>
    %inserted_slice_1491 = tensor.insert_slice %156 into %468[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1492 = tensor.insert_slice %166 into %inserted_slice_1491[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1493 = tensor.insert_slice %173 into %inserted_slice_1492[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1494 = tensor.insert_slice %180 into %inserted_slice_1493[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1495 = tensor.insert_slice %187 into %inserted_slice_1494[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1496 = tensor.insert_slice %194 into %inserted_slice_1495[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1497 = tensor.insert_slice %201 into %inserted_slice_1496[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1498 = tensor.insert_slice %208 into %inserted_slice_1497[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1499 = tensor.insert_slice %215 into %inserted_slice_1498[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1500 = tensor.insert_slice %222 into %inserted_slice_1499[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1501 = tensor.insert_slice %229 into %inserted_slice_1500[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1502 = tensor.insert_slice %236 into %inserted_slice_1501[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1503 = tensor.insert_slice %243 into %inserted_slice_1502[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1504 = tensor.insert_slice %250 into %inserted_slice_1503[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1505 = tensor.insert_slice %257 into %inserted_slice_1504[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1506 = tensor.insert_slice %264 into %inserted_slice_1505[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1507 = tensor.insert_slice %271 into %inserted_slice_1506[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1508 = tensor.insert_slice %278 into %inserted_slice_1507[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1509 = tensor.insert_slice %285 into %inserted_slice_1508[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1510 = tensor.insert_slice %292 into %inserted_slice_1509[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1511 = tensor.insert_slice %299 into %inserted_slice_1510[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1512 = tensor.insert_slice %306 into %inserted_slice_1511[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1513 = tensor.insert_slice %313 into %inserted_slice_1512[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1514 = tensor.insert_slice %320 into %inserted_slice_1513[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1515 = tensor.insert_slice %327 into %inserted_slice_1514[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1516 = tensor.insert_slice %334 into %inserted_slice_1515[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1517 = tensor.insert_slice %341 into %inserted_slice_1516[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1518 = tensor.insert_slice %348 into %inserted_slice_1517[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1519 = tensor.insert_slice %355 into %inserted_slice_1518[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1520 = tensor.insert_slice %362 into %inserted_slice_1519[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1521 = tensor.insert_slice %369 into %inserted_slice_1520[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1522 = tensor.insert_slice %376 into %inserted_slice_1521[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1523 = tensor.insert_slice %383 into %inserted_slice_1522[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1524 = tensor.insert_slice %390 into %inserted_slice_1523[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1525 = tensor.insert_slice %397 into %inserted_slice_1524[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1526 = tensor.insert_slice %404 into %inserted_slice_1525[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1527 = tensor.insert_slice %411 into %inserted_slice_1526[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1528 = tensor.insert_slice %418 into %inserted_slice_1527[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1529 = tensor.insert_slice %425 into %inserted_slice_1528[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1530 = tensor.insert_slice %432 into %inserted_slice_1529[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1531 = tensor.insert_slice %439 into %inserted_slice_1530[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1532 = tensor.insert_slice %446 into %inserted_slice_1531[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1533 = tensor.insert_slice %453 into %inserted_slice_1532[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1534 = tensor.insert_slice %460 into %inserted_slice_1533[0, 1600, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    %inserted_slice_1535 = tensor.insert_slice %467 into %inserted_slice_1534[0, 1632, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1664x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %469 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1535, %cst_91, %cst_90, %cst_90, %cst_91 : tensor<1x1664x2x2xf32>, tensor<1664xf32>, tensor<1664xf32>, tensor<1664xf32>, tensor<1664xf32>) outs(%inserted_slice_1535 : tensor<1x1664x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1664x2x2xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x1664x2x2xf32>) outs(%468 : tensor<1x1664x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1664x2x2xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_89 : tensor<1x1664x2x2xf32>, tensor<128x1664x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%471 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %473 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1536 = tensor.pad %473 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %474 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1536, %cst_88 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %475 = tensor.empty() : tensor<1x1696x2x2xf32>
    %inserted_slice_1537 = tensor.insert_slice %156 into %475[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1538 = tensor.insert_slice %166 into %inserted_slice_1537[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1539 = tensor.insert_slice %173 into %inserted_slice_1538[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1540 = tensor.insert_slice %180 into %inserted_slice_1539[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1541 = tensor.insert_slice %187 into %inserted_slice_1540[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1542 = tensor.insert_slice %194 into %inserted_slice_1541[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1543 = tensor.insert_slice %201 into %inserted_slice_1542[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1544 = tensor.insert_slice %208 into %inserted_slice_1543[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1545 = tensor.insert_slice %215 into %inserted_slice_1544[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1546 = tensor.insert_slice %222 into %inserted_slice_1545[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1547 = tensor.insert_slice %229 into %inserted_slice_1546[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1548 = tensor.insert_slice %236 into %inserted_slice_1547[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1549 = tensor.insert_slice %243 into %inserted_slice_1548[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1550 = tensor.insert_slice %250 into %inserted_slice_1549[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1551 = tensor.insert_slice %257 into %inserted_slice_1550[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1552 = tensor.insert_slice %264 into %inserted_slice_1551[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1553 = tensor.insert_slice %271 into %inserted_slice_1552[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1554 = tensor.insert_slice %278 into %inserted_slice_1553[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1555 = tensor.insert_slice %285 into %inserted_slice_1554[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1556 = tensor.insert_slice %292 into %inserted_slice_1555[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1557 = tensor.insert_slice %299 into %inserted_slice_1556[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1558 = tensor.insert_slice %306 into %inserted_slice_1557[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1559 = tensor.insert_slice %313 into %inserted_slice_1558[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1560 = tensor.insert_slice %320 into %inserted_slice_1559[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1561 = tensor.insert_slice %327 into %inserted_slice_1560[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1562 = tensor.insert_slice %334 into %inserted_slice_1561[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1563 = tensor.insert_slice %341 into %inserted_slice_1562[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1564 = tensor.insert_slice %348 into %inserted_slice_1563[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1565 = tensor.insert_slice %355 into %inserted_slice_1564[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1566 = tensor.insert_slice %362 into %inserted_slice_1565[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1567 = tensor.insert_slice %369 into %inserted_slice_1566[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1568 = tensor.insert_slice %376 into %inserted_slice_1567[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1569 = tensor.insert_slice %383 into %inserted_slice_1568[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1570 = tensor.insert_slice %390 into %inserted_slice_1569[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1571 = tensor.insert_slice %397 into %inserted_slice_1570[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1572 = tensor.insert_slice %404 into %inserted_slice_1571[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1573 = tensor.insert_slice %411 into %inserted_slice_1572[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1574 = tensor.insert_slice %418 into %inserted_slice_1573[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1575 = tensor.insert_slice %425 into %inserted_slice_1574[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1576 = tensor.insert_slice %432 into %inserted_slice_1575[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1577 = tensor.insert_slice %439 into %inserted_slice_1576[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1578 = tensor.insert_slice %446 into %inserted_slice_1577[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1579 = tensor.insert_slice %453 into %inserted_slice_1578[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1580 = tensor.insert_slice %460 into %inserted_slice_1579[0, 1600, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1581 = tensor.insert_slice %467 into %inserted_slice_1580[0, 1632, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    %inserted_slice_1582 = tensor.insert_slice %474 into %inserted_slice_1581[0, 1664, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1696x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1582, %cst_87, %cst_86, %cst_86, %cst_87 : tensor<1x1696x2x2xf32>, tensor<1696xf32>, tensor<1696xf32>, tensor<1696xf32>, tensor<1696xf32>) outs(%inserted_slice_1582 : tensor<1x1696x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1696x2x2xf32>
    %477 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x1696x2x2xf32>) outs(%475 : tensor<1x1696x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1696x2x2xf32>
    %478 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%477, %cst_85 : tensor<1x1696x2x2xf32>, tensor<128x1696x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %479 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%478 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %480 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1583 = tensor.pad %480 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %481 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1583, %cst_84 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %482 = tensor.empty() : tensor<1x1728x2x2xf32>
    %inserted_slice_1584 = tensor.insert_slice %156 into %482[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1585 = tensor.insert_slice %166 into %inserted_slice_1584[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1586 = tensor.insert_slice %173 into %inserted_slice_1585[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1587 = tensor.insert_slice %180 into %inserted_slice_1586[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1588 = tensor.insert_slice %187 into %inserted_slice_1587[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1589 = tensor.insert_slice %194 into %inserted_slice_1588[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1590 = tensor.insert_slice %201 into %inserted_slice_1589[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1591 = tensor.insert_slice %208 into %inserted_slice_1590[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1592 = tensor.insert_slice %215 into %inserted_slice_1591[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1593 = tensor.insert_slice %222 into %inserted_slice_1592[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1594 = tensor.insert_slice %229 into %inserted_slice_1593[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1595 = tensor.insert_slice %236 into %inserted_slice_1594[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1596 = tensor.insert_slice %243 into %inserted_slice_1595[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1597 = tensor.insert_slice %250 into %inserted_slice_1596[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1598 = tensor.insert_slice %257 into %inserted_slice_1597[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1599 = tensor.insert_slice %264 into %inserted_slice_1598[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1600 = tensor.insert_slice %271 into %inserted_slice_1599[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1601 = tensor.insert_slice %278 into %inserted_slice_1600[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1602 = tensor.insert_slice %285 into %inserted_slice_1601[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1603 = tensor.insert_slice %292 into %inserted_slice_1602[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1604 = tensor.insert_slice %299 into %inserted_slice_1603[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1605 = tensor.insert_slice %306 into %inserted_slice_1604[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1606 = tensor.insert_slice %313 into %inserted_slice_1605[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1607 = tensor.insert_slice %320 into %inserted_slice_1606[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1608 = tensor.insert_slice %327 into %inserted_slice_1607[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1609 = tensor.insert_slice %334 into %inserted_slice_1608[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1610 = tensor.insert_slice %341 into %inserted_slice_1609[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1611 = tensor.insert_slice %348 into %inserted_slice_1610[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1612 = tensor.insert_slice %355 into %inserted_slice_1611[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1613 = tensor.insert_slice %362 into %inserted_slice_1612[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1614 = tensor.insert_slice %369 into %inserted_slice_1613[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1615 = tensor.insert_slice %376 into %inserted_slice_1614[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1616 = tensor.insert_slice %383 into %inserted_slice_1615[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1617 = tensor.insert_slice %390 into %inserted_slice_1616[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1618 = tensor.insert_slice %397 into %inserted_slice_1617[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1619 = tensor.insert_slice %404 into %inserted_slice_1618[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1620 = tensor.insert_slice %411 into %inserted_slice_1619[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1621 = tensor.insert_slice %418 into %inserted_slice_1620[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1622 = tensor.insert_slice %425 into %inserted_slice_1621[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1623 = tensor.insert_slice %432 into %inserted_slice_1622[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1624 = tensor.insert_slice %439 into %inserted_slice_1623[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1625 = tensor.insert_slice %446 into %inserted_slice_1624[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1626 = tensor.insert_slice %453 into %inserted_slice_1625[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1627 = tensor.insert_slice %460 into %inserted_slice_1626[0, 1600, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1628 = tensor.insert_slice %467 into %inserted_slice_1627[0, 1632, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1629 = tensor.insert_slice %474 into %inserted_slice_1628[0, 1664, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_1630 = tensor.insert_slice %481 into %inserted_slice_1629[0, 1696, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1728x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %483 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1630, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x1728x2x2xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>) outs(%inserted_slice_1630 : tensor<1x1728x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1728x2x2xf32>
    %484 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x1728x2x2xf32>) outs(%482 : tensor<1x1728x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1728x2x2xf32>
    %485 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%484, %cst_81 : tensor<1x1728x2x2xf32>, tensor<128x1728x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %486 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%485 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %487 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1631 = tensor.pad %487 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %488 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1631, %cst_80 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %489 = tensor.empty() : tensor<1x1760x2x2xf32>
    %inserted_slice_1632 = tensor.insert_slice %156 into %489[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1633 = tensor.insert_slice %166 into %inserted_slice_1632[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1634 = tensor.insert_slice %173 into %inserted_slice_1633[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1635 = tensor.insert_slice %180 into %inserted_slice_1634[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1636 = tensor.insert_slice %187 into %inserted_slice_1635[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1637 = tensor.insert_slice %194 into %inserted_slice_1636[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1638 = tensor.insert_slice %201 into %inserted_slice_1637[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1639 = tensor.insert_slice %208 into %inserted_slice_1638[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1640 = tensor.insert_slice %215 into %inserted_slice_1639[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1641 = tensor.insert_slice %222 into %inserted_slice_1640[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1642 = tensor.insert_slice %229 into %inserted_slice_1641[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1643 = tensor.insert_slice %236 into %inserted_slice_1642[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1644 = tensor.insert_slice %243 into %inserted_slice_1643[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1645 = tensor.insert_slice %250 into %inserted_slice_1644[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1646 = tensor.insert_slice %257 into %inserted_slice_1645[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1647 = tensor.insert_slice %264 into %inserted_slice_1646[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1648 = tensor.insert_slice %271 into %inserted_slice_1647[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1649 = tensor.insert_slice %278 into %inserted_slice_1648[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1650 = tensor.insert_slice %285 into %inserted_slice_1649[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1651 = tensor.insert_slice %292 into %inserted_slice_1650[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1652 = tensor.insert_slice %299 into %inserted_slice_1651[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1653 = tensor.insert_slice %306 into %inserted_slice_1652[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1654 = tensor.insert_slice %313 into %inserted_slice_1653[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1655 = tensor.insert_slice %320 into %inserted_slice_1654[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1656 = tensor.insert_slice %327 into %inserted_slice_1655[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1657 = tensor.insert_slice %334 into %inserted_slice_1656[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1658 = tensor.insert_slice %341 into %inserted_slice_1657[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1659 = tensor.insert_slice %348 into %inserted_slice_1658[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1660 = tensor.insert_slice %355 into %inserted_slice_1659[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1661 = tensor.insert_slice %362 into %inserted_slice_1660[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1662 = tensor.insert_slice %369 into %inserted_slice_1661[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1663 = tensor.insert_slice %376 into %inserted_slice_1662[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1664 = tensor.insert_slice %383 into %inserted_slice_1663[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1665 = tensor.insert_slice %390 into %inserted_slice_1664[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1666 = tensor.insert_slice %397 into %inserted_slice_1665[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1667 = tensor.insert_slice %404 into %inserted_slice_1666[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1668 = tensor.insert_slice %411 into %inserted_slice_1667[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1669 = tensor.insert_slice %418 into %inserted_slice_1668[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1670 = tensor.insert_slice %425 into %inserted_slice_1669[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1671 = tensor.insert_slice %432 into %inserted_slice_1670[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1672 = tensor.insert_slice %439 into %inserted_slice_1671[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1673 = tensor.insert_slice %446 into %inserted_slice_1672[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1674 = tensor.insert_slice %453 into %inserted_slice_1673[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1675 = tensor.insert_slice %460 into %inserted_slice_1674[0, 1600, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1676 = tensor.insert_slice %467 into %inserted_slice_1675[0, 1632, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1677 = tensor.insert_slice %474 into %inserted_slice_1676[0, 1664, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1678 = tensor.insert_slice %481 into %inserted_slice_1677[0, 1696, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    %inserted_slice_1679 = tensor.insert_slice %488 into %inserted_slice_1678[0, 1728, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1760x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %490 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1679, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x1760x2x2xf32>, tensor<1760xf32>, tensor<1760xf32>, tensor<1760xf32>, tensor<1760xf32>) outs(%inserted_slice_1679 : tensor<1x1760x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1760x2x2xf32>
    %491 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490 : tensor<1x1760x2x2xf32>) outs(%489 : tensor<1x1760x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1760x2x2xf32>
    %492 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%491, %cst_77 : tensor<1x1760x2x2xf32>, tensor<128x1760x1x1xf32>) outs(%160 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %493 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%492 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x2x2xf32>
    %494 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493 : tensor<1x128x2x2xf32>) outs(%159 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_1680 = tensor.pad %494 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x2x2xf32> to tensor<1x128x4x4xf32>
    %495 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1680, %cst_76 : tensor<1x128x4x4xf32>, tensor<32x128x3x3xf32>) outs(%165 : tensor<1x32x2x2xf32>) -> tensor<1x32x2x2xf32>
    %496 = tensor.empty() : tensor<1x1792x2x2xf32>
    %inserted_slice_1681 = tensor.insert_slice %156 into %496[0, 0, 0, 0] [1, 256, 2, 2] [1, 1, 1, 1] : tensor<1x256x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1682 = tensor.insert_slice %166 into %inserted_slice_1681[0, 256, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1683 = tensor.insert_slice %173 into %inserted_slice_1682[0, 288, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1684 = tensor.insert_slice %180 into %inserted_slice_1683[0, 320, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1685 = tensor.insert_slice %187 into %inserted_slice_1684[0, 352, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1686 = tensor.insert_slice %194 into %inserted_slice_1685[0, 384, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1687 = tensor.insert_slice %201 into %inserted_slice_1686[0, 416, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1688 = tensor.insert_slice %208 into %inserted_slice_1687[0, 448, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1689 = tensor.insert_slice %215 into %inserted_slice_1688[0, 480, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1690 = tensor.insert_slice %222 into %inserted_slice_1689[0, 512, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1691 = tensor.insert_slice %229 into %inserted_slice_1690[0, 544, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1692 = tensor.insert_slice %236 into %inserted_slice_1691[0, 576, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1693 = tensor.insert_slice %243 into %inserted_slice_1692[0, 608, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1694 = tensor.insert_slice %250 into %inserted_slice_1693[0, 640, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1695 = tensor.insert_slice %257 into %inserted_slice_1694[0, 672, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1696 = tensor.insert_slice %264 into %inserted_slice_1695[0, 704, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1697 = tensor.insert_slice %271 into %inserted_slice_1696[0, 736, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1698 = tensor.insert_slice %278 into %inserted_slice_1697[0, 768, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1699 = tensor.insert_slice %285 into %inserted_slice_1698[0, 800, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1700 = tensor.insert_slice %292 into %inserted_slice_1699[0, 832, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1701 = tensor.insert_slice %299 into %inserted_slice_1700[0, 864, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1702 = tensor.insert_slice %306 into %inserted_slice_1701[0, 896, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1703 = tensor.insert_slice %313 into %inserted_slice_1702[0, 928, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1704 = tensor.insert_slice %320 into %inserted_slice_1703[0, 960, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1705 = tensor.insert_slice %327 into %inserted_slice_1704[0, 992, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1706 = tensor.insert_slice %334 into %inserted_slice_1705[0, 1024, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1707 = tensor.insert_slice %341 into %inserted_slice_1706[0, 1056, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1708 = tensor.insert_slice %348 into %inserted_slice_1707[0, 1088, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1709 = tensor.insert_slice %355 into %inserted_slice_1708[0, 1120, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1710 = tensor.insert_slice %362 into %inserted_slice_1709[0, 1152, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1711 = tensor.insert_slice %369 into %inserted_slice_1710[0, 1184, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1712 = tensor.insert_slice %376 into %inserted_slice_1711[0, 1216, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1713 = tensor.insert_slice %383 into %inserted_slice_1712[0, 1248, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1714 = tensor.insert_slice %390 into %inserted_slice_1713[0, 1280, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1715 = tensor.insert_slice %397 into %inserted_slice_1714[0, 1312, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1716 = tensor.insert_slice %404 into %inserted_slice_1715[0, 1344, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1717 = tensor.insert_slice %411 into %inserted_slice_1716[0, 1376, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1718 = tensor.insert_slice %418 into %inserted_slice_1717[0, 1408, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1719 = tensor.insert_slice %425 into %inserted_slice_1718[0, 1440, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1720 = tensor.insert_slice %432 into %inserted_slice_1719[0, 1472, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1721 = tensor.insert_slice %439 into %inserted_slice_1720[0, 1504, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1722 = tensor.insert_slice %446 into %inserted_slice_1721[0, 1536, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1723 = tensor.insert_slice %453 into %inserted_slice_1722[0, 1568, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1724 = tensor.insert_slice %460 into %inserted_slice_1723[0, 1600, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1725 = tensor.insert_slice %467 into %inserted_slice_1724[0, 1632, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1726 = tensor.insert_slice %474 into %inserted_slice_1725[0, 1664, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1727 = tensor.insert_slice %481 into %inserted_slice_1726[0, 1696, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1728 = tensor.insert_slice %488 into %inserted_slice_1727[0, 1728, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    %inserted_slice_1729 = tensor.insert_slice %495 into %inserted_slice_1728[0, 1760, 0, 0] [1, 32, 2, 2] [1, 1, 1, 1] : tensor<1x32x2x2xf32> into tensor<1x1792x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %497 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1729, %cst_75, %cst_74, %cst_74, %cst_75 : tensor<1x1792x2x2xf32>, tensor<1792xf32>, tensor<1792xf32>, tensor<1792xf32>, tensor<1792xf32>) outs(%inserted_slice_1729 : tensor<1x1792x2x2xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1792x2x2xf32>
    %498 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x1792x2x2xf32>) outs(%496 : tensor<1x1792x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1792x2x2xf32>
    %499 = linalg.fill ins(%cst_319 : f32) outs(%300 : tensor<1x896x2x2xf32>) -> tensor<1x896x2x2xf32>
    %500 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%498, %cst_73 : tensor<1x1792x2x2xf32>, tensor<896x1792x1x1xf32>) outs(%499 : tensor<1x896x2x2xf32>) -> tensor<1x896x2x2xf32>
    %501 = tensor.empty() : tensor<1x896x1x1xf32>
    %502 = linalg.fill ins(%cst_319 : f32) outs(%501 : tensor<1x896x1x1xf32>) -> tensor<1x896x1x1xf32>
    %503 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%500, %60 : tensor<1x896x2x2xf32>, tensor<2x2xf32>) outs(%502 : tensor<1x896x1x1xf32>) -> tensor<1x896x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x896x1x1xf32>) outs(%501 : tensor<1x896x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.divf %in, %cst_322 : f32
      linalg.yield %744 : f32
    } -> tensor<1x896x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %505 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %cst_187, %cst_186, %cst_186, %cst_187 : tensor<1x896x1x1xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>, tensor<896xf32>) outs(%504 : tensor<1x896x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x896x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x896x1x1xf32>) outs(%501 : tensor<1x896x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x896x1x1xf32>
    %507 = tensor.empty() : tensor<1x128x1x1xf32>
    %508 = linalg.fill ins(%cst_319 : f32) outs(%507 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %509 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%506, %cst_72 : tensor<1x896x1x1xf32>, tensor<128x896x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %510 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%509 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1730 = tensor.pad %511 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %512 = tensor.empty() : tensor<1x32x1x1xf32>
    %513 = linalg.fill ins(%cst_319 : f32) outs(%512 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %514 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1730, %cst_71 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %515 = tensor.empty() : tensor<1x928x1x1xf32>
    %inserted_slice_1731 = tensor.insert_slice %504 into %515[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x928x1x1xf32>
    %inserted_slice_1732 = tensor.insert_slice %514 into %inserted_slice_1731[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x928x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %516 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1732, %cst_183, %cst_182, %cst_182, %cst_183 : tensor<1x928x1x1xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>, tensor<928xf32>) outs(%inserted_slice_1732 : tensor<1x928x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x928x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x928x1x1xf32>) outs(%515 : tensor<1x928x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x928x1x1xf32>
    %518 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%517, %cst_70 : tensor<1x928x1x1xf32>, tensor<128x928x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %519 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%518 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1733 = tensor.pad %520 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %521 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1733, %cst_69 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %522 = tensor.empty() : tensor<1x960x1x1xf32>
    %inserted_slice_1734 = tensor.insert_slice %504 into %522[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_1735 = tensor.insert_slice %514 into %inserted_slice_1734[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    %inserted_slice_1736 = tensor.insert_slice %521 into %inserted_slice_1735[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1736, %cst_179, %cst_178, %cst_178, %cst_179 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%inserted_slice_1736 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x960x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523 : tensor<1x960x1x1xf32>) outs(%522 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x960x1x1xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_68 : tensor<1x960x1x1xf32>, tensor<128x960x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%525 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1737 = tensor.pad %527 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1737, %cst_67 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %529 = tensor.empty() : tensor<1x992x1x1xf32>
    %inserted_slice_1738 = tensor.insert_slice %504 into %529[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_1739 = tensor.insert_slice %514 into %inserted_slice_1738[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_1740 = tensor.insert_slice %521 into %inserted_slice_1739[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    %inserted_slice_1741 = tensor.insert_slice %528 into %inserted_slice_1740[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x992x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %530 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1741, %cst_175, %cst_174, %cst_174, %cst_175 : tensor<1x992x1x1xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>, tensor<992xf32>) outs(%inserted_slice_1741 : tensor<1x992x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x992x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x992x1x1xf32>) outs(%529 : tensor<1x992x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x992x1x1xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%531, %cst_66 : tensor<1x992x1x1xf32>, tensor<128x992x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%532 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %534 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1742 = tensor.pad %534 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1742, %cst_65 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %536 = tensor.empty() : tensor<1x1024x1x1xf32>
    %inserted_slice_1743 = tensor.insert_slice %504 into %536[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_1744 = tensor.insert_slice %514 into %inserted_slice_1743[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_1745 = tensor.insert_slice %521 into %inserted_slice_1744[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_1746 = tensor.insert_slice %528 into %inserted_slice_1745[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    %inserted_slice_1747 = tensor.insert_slice %535 into %inserted_slice_1746[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1024x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %537 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1747, %cst_171, %cst_170, %cst_170, %cst_171 : tensor<1x1024x1x1xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%inserted_slice_1747 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1024x1x1xf32>
    %538 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x1024x1x1xf32>) outs(%536 : tensor<1x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1024x1x1xf32>
    %539 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%538, %cst_64 : tensor<1x1024x1x1xf32>, tensor<128x1024x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %540 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%539 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %541 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1748 = tensor.pad %541 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %542 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1748, %cst_63 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %543 = tensor.empty() : tensor<1x1056x1x1xf32>
    %inserted_slice_1749 = tensor.insert_slice %504 into %543[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1056x1x1xf32>
    %inserted_slice_1750 = tensor.insert_slice %514 into %inserted_slice_1749[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1056x1x1xf32>
    %inserted_slice_1751 = tensor.insert_slice %521 into %inserted_slice_1750[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1056x1x1xf32>
    %inserted_slice_1752 = tensor.insert_slice %528 into %inserted_slice_1751[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1056x1x1xf32>
    %inserted_slice_1753 = tensor.insert_slice %535 into %inserted_slice_1752[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1056x1x1xf32>
    %inserted_slice_1754 = tensor.insert_slice %542 into %inserted_slice_1753[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1056x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %544 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1754, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x1056x1x1xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%inserted_slice_1754 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1056x1x1xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x1056x1x1xf32>) outs(%543 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1056x1x1xf32>
    %546 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%545, %cst_62 : tensor<1x1056x1x1xf32>, tensor<128x1056x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %547 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%546 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1755 = tensor.pad %548 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %549 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1755, %cst_61 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %550 = tensor.empty() : tensor<1x1088x1x1xf32>
    %inserted_slice_1756 = tensor.insert_slice %504 into %550[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1088x1x1xf32>
    %inserted_slice_1757 = tensor.insert_slice %514 into %inserted_slice_1756[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1088x1x1xf32>
    %inserted_slice_1758 = tensor.insert_slice %521 into %inserted_slice_1757[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1088x1x1xf32>
    %inserted_slice_1759 = tensor.insert_slice %528 into %inserted_slice_1758[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1088x1x1xf32>
    %inserted_slice_1760 = tensor.insert_slice %535 into %inserted_slice_1759[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1088x1x1xf32>
    %inserted_slice_1761 = tensor.insert_slice %542 into %inserted_slice_1760[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1088x1x1xf32>
    %inserted_slice_1762 = tensor.insert_slice %549 into %inserted_slice_1761[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1088x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %551 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1762, %cst_163, %cst_162, %cst_162, %cst_163 : tensor<1x1088x1x1xf32>, tensor<1088xf32>, tensor<1088xf32>, tensor<1088xf32>, tensor<1088xf32>) outs(%inserted_slice_1762 : tensor<1x1088x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1088x1x1xf32>
    %552 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551 : tensor<1x1088x1x1xf32>) outs(%550 : tensor<1x1088x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1088x1x1xf32>
    %553 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%552, %cst_60 : tensor<1x1088x1x1xf32>, tensor<128x1088x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %554 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%553 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %555 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1763 = tensor.pad %555 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %556 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1763, %cst_59 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %557 = tensor.empty() : tensor<1x1120x1x1xf32>
    %inserted_slice_1764 = tensor.insert_slice %504 into %557[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1765 = tensor.insert_slice %514 into %inserted_slice_1764[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1766 = tensor.insert_slice %521 into %inserted_slice_1765[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1767 = tensor.insert_slice %528 into %inserted_slice_1766[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1768 = tensor.insert_slice %535 into %inserted_slice_1767[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1769 = tensor.insert_slice %542 into %inserted_slice_1768[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1770 = tensor.insert_slice %549 into %inserted_slice_1769[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    %inserted_slice_1771 = tensor.insert_slice %556 into %inserted_slice_1770[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1120x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %558 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1771, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x1120x1x1xf32>, tensor<1120xf32>, tensor<1120xf32>, tensor<1120xf32>, tensor<1120xf32>) outs(%inserted_slice_1771 : tensor<1x1120x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1120x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558 : tensor<1x1120x1x1xf32>) outs(%557 : tensor<1x1120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1120x1x1xf32>
    %560 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %cst_58 : tensor<1x1120x1x1xf32>, tensor<128x1120x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %561 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%560 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %562 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1772 = tensor.pad %562 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1772, %cst_57 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %564 = tensor.empty() : tensor<1x1152x1x1xf32>
    %inserted_slice_1773 = tensor.insert_slice %504 into %564[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1774 = tensor.insert_slice %514 into %inserted_slice_1773[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1775 = tensor.insert_slice %521 into %inserted_slice_1774[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1776 = tensor.insert_slice %528 into %inserted_slice_1775[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1777 = tensor.insert_slice %535 into %inserted_slice_1776[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1778 = tensor.insert_slice %542 into %inserted_slice_1777[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1779 = tensor.insert_slice %549 into %inserted_slice_1778[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1780 = tensor.insert_slice %556 into %inserted_slice_1779[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1781 = tensor.insert_slice %563 into %inserted_slice_1780[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %565 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1781, %cst_155, %cst_154, %cst_154, %cst_155 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%inserted_slice_1781 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1152x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565 : tensor<1x1152x1x1xf32>) outs(%564 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1152x1x1xf32>
    %567 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%566, %cst_56 : tensor<1x1152x1x1xf32>, tensor<128x1152x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %568 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%567 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1782 = tensor.pad %569 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %570 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1782, %cst_55 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %571 = tensor.empty() : tensor<1x1184x1x1xf32>
    %inserted_slice_1783 = tensor.insert_slice %504 into %571[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1784 = tensor.insert_slice %514 into %inserted_slice_1783[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1785 = tensor.insert_slice %521 into %inserted_slice_1784[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1786 = tensor.insert_slice %528 into %inserted_slice_1785[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1787 = tensor.insert_slice %535 into %inserted_slice_1786[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1788 = tensor.insert_slice %542 into %inserted_slice_1787[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1789 = tensor.insert_slice %549 into %inserted_slice_1788[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1790 = tensor.insert_slice %556 into %inserted_slice_1789[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1791 = tensor.insert_slice %563 into %inserted_slice_1790[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    %inserted_slice_1792 = tensor.insert_slice %570 into %inserted_slice_1791[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1184x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %572 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1792, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x1184x1x1xf32>, tensor<1184xf32>, tensor<1184xf32>, tensor<1184xf32>, tensor<1184xf32>) outs(%inserted_slice_1792 : tensor<1x1184x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1184x1x1xf32>
    %573 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572 : tensor<1x1184x1x1xf32>) outs(%571 : tensor<1x1184x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1184x1x1xf32>
    %574 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%573, %cst_54 : tensor<1x1184x1x1xf32>, tensor<128x1184x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %575 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%574 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %576 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1793 = tensor.pad %576 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %577 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1793, %cst_53 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %578 = tensor.empty() : tensor<1x1216x1x1xf32>
    %inserted_slice_1794 = tensor.insert_slice %504 into %578[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1795 = tensor.insert_slice %514 into %inserted_slice_1794[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1796 = tensor.insert_slice %521 into %inserted_slice_1795[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1797 = tensor.insert_slice %528 into %inserted_slice_1796[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1798 = tensor.insert_slice %535 into %inserted_slice_1797[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1799 = tensor.insert_slice %542 into %inserted_slice_1798[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1800 = tensor.insert_slice %549 into %inserted_slice_1799[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1801 = tensor.insert_slice %556 into %inserted_slice_1800[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1802 = tensor.insert_slice %563 into %inserted_slice_1801[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1803 = tensor.insert_slice %570 into %inserted_slice_1802[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    %inserted_slice_1804 = tensor.insert_slice %577 into %inserted_slice_1803[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1216x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %579 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1804, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x1216x1x1xf32>, tensor<1216xf32>, tensor<1216xf32>, tensor<1216xf32>, tensor<1216xf32>) outs(%inserted_slice_1804 : tensor<1x1216x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1216x1x1xf32>
    %580 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x1216x1x1xf32>) outs(%578 : tensor<1x1216x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1216x1x1xf32>
    %581 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%580, %cst_52 : tensor<1x1216x1x1xf32>, tensor<128x1216x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %582 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%581 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1805 = tensor.pad %583 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %584 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1805, %cst_51 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %585 = tensor.empty() : tensor<1x1248x1x1xf32>
    %inserted_slice_1806 = tensor.insert_slice %504 into %585[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1807 = tensor.insert_slice %514 into %inserted_slice_1806[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1808 = tensor.insert_slice %521 into %inserted_slice_1807[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1809 = tensor.insert_slice %528 into %inserted_slice_1808[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1810 = tensor.insert_slice %535 into %inserted_slice_1809[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1811 = tensor.insert_slice %542 into %inserted_slice_1810[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1812 = tensor.insert_slice %549 into %inserted_slice_1811[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1813 = tensor.insert_slice %556 into %inserted_slice_1812[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1814 = tensor.insert_slice %563 into %inserted_slice_1813[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1815 = tensor.insert_slice %570 into %inserted_slice_1814[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1816 = tensor.insert_slice %577 into %inserted_slice_1815[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1817 = tensor.insert_slice %584 into %inserted_slice_1816[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %586 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1817, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%inserted_slice_1817 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1248x1x1xf32>
    %587 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x1248x1x1xf32>) outs(%585 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1248x1x1xf32>
    %588 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%587, %cst_50 : tensor<1x1248x1x1xf32>, tensor<128x1248x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %589 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%588 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1818 = tensor.pad %590 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1818, %cst_49 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %592 = tensor.empty() : tensor<1x1280x1x1xf32>
    %inserted_slice_1819 = tensor.insert_slice %504 into %592[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1820 = tensor.insert_slice %514 into %inserted_slice_1819[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1821 = tensor.insert_slice %521 into %inserted_slice_1820[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1822 = tensor.insert_slice %528 into %inserted_slice_1821[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1823 = tensor.insert_slice %535 into %inserted_slice_1822[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1824 = tensor.insert_slice %542 into %inserted_slice_1823[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1825 = tensor.insert_slice %549 into %inserted_slice_1824[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1826 = tensor.insert_slice %556 into %inserted_slice_1825[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1827 = tensor.insert_slice %563 into %inserted_slice_1826[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1828 = tensor.insert_slice %570 into %inserted_slice_1827[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1829 = tensor.insert_slice %577 into %inserted_slice_1828[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1830 = tensor.insert_slice %584 into %inserted_slice_1829[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    %inserted_slice_1831 = tensor.insert_slice %591 into %inserted_slice_1830[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %593 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1831, %cst_139, %cst_138, %cst_138, %cst_139 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%inserted_slice_1831 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1280x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<1x1280x1x1xf32>) outs(%592 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1280x1x1xf32>
    %595 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%594, %cst_48 : tensor<1x1280x1x1xf32>, tensor<128x1280x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %596 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%595 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %597 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1832 = tensor.pad %597 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %598 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1832, %cst_47 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %599 = tensor.empty() : tensor<1x1312x1x1xf32>
    %inserted_slice_1833 = tensor.insert_slice %504 into %599[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1834 = tensor.insert_slice %514 into %inserted_slice_1833[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1835 = tensor.insert_slice %521 into %inserted_slice_1834[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1836 = tensor.insert_slice %528 into %inserted_slice_1835[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1837 = tensor.insert_slice %535 into %inserted_slice_1836[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1838 = tensor.insert_slice %542 into %inserted_slice_1837[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1839 = tensor.insert_slice %549 into %inserted_slice_1838[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1840 = tensor.insert_slice %556 into %inserted_slice_1839[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1841 = tensor.insert_slice %563 into %inserted_slice_1840[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1842 = tensor.insert_slice %570 into %inserted_slice_1841[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1843 = tensor.insert_slice %577 into %inserted_slice_1842[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1844 = tensor.insert_slice %584 into %inserted_slice_1843[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1845 = tensor.insert_slice %591 into %inserted_slice_1844[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    %inserted_slice_1846 = tensor.insert_slice %598 into %inserted_slice_1845[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1312x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %600 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1846, %cst_135, %cst_134, %cst_134, %cst_135 : tensor<1x1312x1x1xf32>, tensor<1312xf32>, tensor<1312xf32>, tensor<1312xf32>, tensor<1312xf32>) outs(%inserted_slice_1846 : tensor<1x1312x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1312x1x1xf32>
    %601 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600 : tensor<1x1312x1x1xf32>) outs(%599 : tensor<1x1312x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1312x1x1xf32>
    %602 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%601, %cst_46 : tensor<1x1312x1x1xf32>, tensor<128x1312x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %603 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%602 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %604 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1847 = tensor.pad %604 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %605 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1847, %cst_45 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %606 = tensor.empty() : tensor<1x1344x1x1xf32>
    %inserted_slice_1848 = tensor.insert_slice %504 into %606[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1849 = tensor.insert_slice %514 into %inserted_slice_1848[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1850 = tensor.insert_slice %521 into %inserted_slice_1849[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1851 = tensor.insert_slice %528 into %inserted_slice_1850[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1852 = tensor.insert_slice %535 into %inserted_slice_1851[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1853 = tensor.insert_slice %542 into %inserted_slice_1852[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1854 = tensor.insert_slice %549 into %inserted_slice_1853[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1855 = tensor.insert_slice %556 into %inserted_slice_1854[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1856 = tensor.insert_slice %563 into %inserted_slice_1855[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1857 = tensor.insert_slice %570 into %inserted_slice_1856[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1858 = tensor.insert_slice %577 into %inserted_slice_1857[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1859 = tensor.insert_slice %584 into %inserted_slice_1858[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1860 = tensor.insert_slice %591 into %inserted_slice_1859[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1861 = tensor.insert_slice %598 into %inserted_slice_1860[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1862 = tensor.insert_slice %605 into %inserted_slice_1861[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %607 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1862, %cst_131, %cst_130, %cst_130, %cst_131 : tensor<1x1344x1x1xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%inserted_slice_1862 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1344x1x1xf32>
    %608 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607 : tensor<1x1344x1x1xf32>) outs(%606 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1344x1x1xf32>
    %609 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%608, %cst_44 : tensor<1x1344x1x1xf32>, tensor<128x1344x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %610 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%609 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1863 = tensor.pad %611 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %612 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1863, %cst_43 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %613 = tensor.empty() : tensor<1x1376x1x1xf32>
    %inserted_slice_1864 = tensor.insert_slice %504 into %613[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1865 = tensor.insert_slice %514 into %inserted_slice_1864[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1866 = tensor.insert_slice %521 into %inserted_slice_1865[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1867 = tensor.insert_slice %528 into %inserted_slice_1866[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1868 = tensor.insert_slice %535 into %inserted_slice_1867[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1869 = tensor.insert_slice %542 into %inserted_slice_1868[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1870 = tensor.insert_slice %549 into %inserted_slice_1869[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1871 = tensor.insert_slice %556 into %inserted_slice_1870[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1872 = tensor.insert_slice %563 into %inserted_slice_1871[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1873 = tensor.insert_slice %570 into %inserted_slice_1872[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1874 = tensor.insert_slice %577 into %inserted_slice_1873[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1875 = tensor.insert_slice %584 into %inserted_slice_1874[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1876 = tensor.insert_slice %591 into %inserted_slice_1875[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1877 = tensor.insert_slice %598 into %inserted_slice_1876[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1878 = tensor.insert_slice %605 into %inserted_slice_1877[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    %inserted_slice_1879 = tensor.insert_slice %612 into %inserted_slice_1878[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1376x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %614 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1879, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x1376x1x1xf32>, tensor<1376xf32>, tensor<1376xf32>, tensor<1376xf32>, tensor<1376xf32>) outs(%inserted_slice_1879 : tensor<1x1376x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1376x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x1376x1x1xf32>) outs(%613 : tensor<1x1376x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1376x1x1xf32>
    %616 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%615, %cst_42 : tensor<1x1376x1x1xf32>, tensor<128x1376x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %617 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%616 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %618 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1880 = tensor.pad %618 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %619 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1880, %cst_41 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %620 = tensor.empty() : tensor<1x1408x1x1xf32>
    %inserted_slice_1881 = tensor.insert_slice %504 into %620[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1882 = tensor.insert_slice %514 into %inserted_slice_1881[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1883 = tensor.insert_slice %521 into %inserted_slice_1882[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1884 = tensor.insert_slice %528 into %inserted_slice_1883[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1885 = tensor.insert_slice %535 into %inserted_slice_1884[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1886 = tensor.insert_slice %542 into %inserted_slice_1885[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1887 = tensor.insert_slice %549 into %inserted_slice_1886[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1888 = tensor.insert_slice %556 into %inserted_slice_1887[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1889 = tensor.insert_slice %563 into %inserted_slice_1888[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1890 = tensor.insert_slice %570 into %inserted_slice_1889[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1891 = tensor.insert_slice %577 into %inserted_slice_1890[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1892 = tensor.insert_slice %584 into %inserted_slice_1891[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1893 = tensor.insert_slice %591 into %inserted_slice_1892[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1894 = tensor.insert_slice %598 into %inserted_slice_1893[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1895 = tensor.insert_slice %605 into %inserted_slice_1894[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1896 = tensor.insert_slice %612 into %inserted_slice_1895[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    %inserted_slice_1897 = tensor.insert_slice %619 into %inserted_slice_1896[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1408x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %621 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1897, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x1408x1x1xf32>, tensor<1408xf32>, tensor<1408xf32>, tensor<1408xf32>, tensor<1408xf32>) outs(%inserted_slice_1897 : tensor<1x1408x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1408x1x1xf32>
    %622 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x1408x1x1xf32>) outs(%620 : tensor<1x1408x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1408x1x1xf32>
    %623 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%622, %cst_40 : tensor<1x1408x1x1xf32>, tensor<128x1408x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %624 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%623 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %625 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1898 = tensor.pad %625 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %626 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1898, %cst_39 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %627 = tensor.empty() : tensor<1x1440x1x1xf32>
    %inserted_slice_1899 = tensor.insert_slice %504 into %627[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1900 = tensor.insert_slice %514 into %inserted_slice_1899[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1901 = tensor.insert_slice %521 into %inserted_slice_1900[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1902 = tensor.insert_slice %528 into %inserted_slice_1901[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1903 = tensor.insert_slice %535 into %inserted_slice_1902[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1904 = tensor.insert_slice %542 into %inserted_slice_1903[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1905 = tensor.insert_slice %549 into %inserted_slice_1904[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1906 = tensor.insert_slice %556 into %inserted_slice_1905[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1907 = tensor.insert_slice %563 into %inserted_slice_1906[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1908 = tensor.insert_slice %570 into %inserted_slice_1907[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1909 = tensor.insert_slice %577 into %inserted_slice_1908[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1910 = tensor.insert_slice %584 into %inserted_slice_1909[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1911 = tensor.insert_slice %591 into %inserted_slice_1910[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1912 = tensor.insert_slice %598 into %inserted_slice_1911[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1913 = tensor.insert_slice %605 into %inserted_slice_1912[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1914 = tensor.insert_slice %612 into %inserted_slice_1913[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1915 = tensor.insert_slice %619 into %inserted_slice_1914[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1916 = tensor.insert_slice %626 into %inserted_slice_1915[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1440x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %628 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1916, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1440x1x1xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>) outs(%inserted_slice_1916 : tensor<1x1440x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1440x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<1x1440x1x1xf32>) outs(%627 : tensor<1x1440x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1440x1x1xf32>
    %630 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%629, %cst_38 : tensor<1x1440x1x1xf32>, tensor<128x1440x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %631 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%630 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1917 = tensor.pad %632 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %633 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1917, %cst_37 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %634 = tensor.empty() : tensor<1x1472x1x1xf32>
    %inserted_slice_1918 = tensor.insert_slice %504 into %634[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1919 = tensor.insert_slice %514 into %inserted_slice_1918[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1920 = tensor.insert_slice %521 into %inserted_slice_1919[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1921 = tensor.insert_slice %528 into %inserted_slice_1920[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1922 = tensor.insert_slice %535 into %inserted_slice_1921[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1923 = tensor.insert_slice %542 into %inserted_slice_1922[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1924 = tensor.insert_slice %549 into %inserted_slice_1923[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1925 = tensor.insert_slice %556 into %inserted_slice_1924[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1926 = tensor.insert_slice %563 into %inserted_slice_1925[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1927 = tensor.insert_slice %570 into %inserted_slice_1926[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1928 = tensor.insert_slice %577 into %inserted_slice_1927[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1929 = tensor.insert_slice %584 into %inserted_slice_1928[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1930 = tensor.insert_slice %591 into %inserted_slice_1929[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1931 = tensor.insert_slice %598 into %inserted_slice_1930[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1932 = tensor.insert_slice %605 into %inserted_slice_1931[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1933 = tensor.insert_slice %612 into %inserted_slice_1932[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1934 = tensor.insert_slice %619 into %inserted_slice_1933[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1935 = tensor.insert_slice %626 into %inserted_slice_1934[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    %inserted_slice_1936 = tensor.insert_slice %633 into %inserted_slice_1935[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1472x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %635 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1936, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x1472x1x1xf32>, tensor<1472xf32>, tensor<1472xf32>, tensor<1472xf32>, tensor<1472xf32>) outs(%inserted_slice_1936 : tensor<1x1472x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1472x1x1xf32>
    %636 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%635 : tensor<1x1472x1x1xf32>) outs(%634 : tensor<1x1472x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1472x1x1xf32>
    %637 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%636, %cst_36 : tensor<1x1472x1x1xf32>, tensor<128x1472x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %638 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%637 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %639 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1937 = tensor.pad %639 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %640 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1937, %cst_35 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %641 = tensor.empty() : tensor<1x1504x1x1xf32>
    %inserted_slice_1938 = tensor.insert_slice %504 into %641[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1939 = tensor.insert_slice %514 into %inserted_slice_1938[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1940 = tensor.insert_slice %521 into %inserted_slice_1939[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1941 = tensor.insert_slice %528 into %inserted_slice_1940[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1942 = tensor.insert_slice %535 into %inserted_slice_1941[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1943 = tensor.insert_slice %542 into %inserted_slice_1942[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1944 = tensor.insert_slice %549 into %inserted_slice_1943[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1945 = tensor.insert_slice %556 into %inserted_slice_1944[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1946 = tensor.insert_slice %563 into %inserted_slice_1945[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1947 = tensor.insert_slice %570 into %inserted_slice_1946[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1948 = tensor.insert_slice %577 into %inserted_slice_1947[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1949 = tensor.insert_slice %584 into %inserted_slice_1948[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1950 = tensor.insert_slice %591 into %inserted_slice_1949[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1951 = tensor.insert_slice %598 into %inserted_slice_1950[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1952 = tensor.insert_slice %605 into %inserted_slice_1951[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1953 = tensor.insert_slice %612 into %inserted_slice_1952[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1954 = tensor.insert_slice %619 into %inserted_slice_1953[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1955 = tensor.insert_slice %626 into %inserted_slice_1954[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1956 = tensor.insert_slice %633 into %inserted_slice_1955[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    %inserted_slice_1957 = tensor.insert_slice %640 into %inserted_slice_1956[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1504x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %642 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1957, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x1504x1x1xf32>, tensor<1504xf32>, tensor<1504xf32>, tensor<1504xf32>, tensor<1504xf32>) outs(%inserted_slice_1957 : tensor<1x1504x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1504x1x1xf32>
    %643 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642 : tensor<1x1504x1x1xf32>) outs(%641 : tensor<1x1504x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1504x1x1xf32>
    %644 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%643, %cst_34 : tensor<1x1504x1x1xf32>, tensor<128x1504x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %645 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%644 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %646 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1958 = tensor.pad %646 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %647 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1958, %cst_33 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %648 = tensor.empty() : tensor<1x1536x1x1xf32>
    %inserted_slice_1959 = tensor.insert_slice %504 into %648[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1960 = tensor.insert_slice %514 into %inserted_slice_1959[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1961 = tensor.insert_slice %521 into %inserted_slice_1960[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1962 = tensor.insert_slice %528 into %inserted_slice_1961[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1963 = tensor.insert_slice %535 into %inserted_slice_1962[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1964 = tensor.insert_slice %542 into %inserted_slice_1963[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1965 = tensor.insert_slice %549 into %inserted_slice_1964[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1966 = tensor.insert_slice %556 into %inserted_slice_1965[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1967 = tensor.insert_slice %563 into %inserted_slice_1966[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1968 = tensor.insert_slice %570 into %inserted_slice_1967[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1969 = tensor.insert_slice %577 into %inserted_slice_1968[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1970 = tensor.insert_slice %584 into %inserted_slice_1969[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1971 = tensor.insert_slice %591 into %inserted_slice_1970[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1972 = tensor.insert_slice %598 into %inserted_slice_1971[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1973 = tensor.insert_slice %605 into %inserted_slice_1972[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1974 = tensor.insert_slice %612 into %inserted_slice_1973[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1975 = tensor.insert_slice %619 into %inserted_slice_1974[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1976 = tensor.insert_slice %626 into %inserted_slice_1975[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1977 = tensor.insert_slice %633 into %inserted_slice_1976[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1978 = tensor.insert_slice %640 into %inserted_slice_1977[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1979 = tensor.insert_slice %647 into %inserted_slice_1978[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %649 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1979, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%inserted_slice_1979 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1536x1x1xf32>
    %650 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649 : tensor<1x1536x1x1xf32>) outs(%648 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1536x1x1xf32>
    %651 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%650, %cst_32 : tensor<1x1536x1x1xf32>, tensor<128x1536x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %652 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%651 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_1980 = tensor.pad %653 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %654 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1980, %cst_31 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %655 = tensor.empty() : tensor<1x1568x1x1xf32>
    %inserted_slice_1981 = tensor.insert_slice %504 into %655[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1982 = tensor.insert_slice %514 into %inserted_slice_1981[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1983 = tensor.insert_slice %521 into %inserted_slice_1982[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1984 = tensor.insert_slice %528 into %inserted_slice_1983[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1985 = tensor.insert_slice %535 into %inserted_slice_1984[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1986 = tensor.insert_slice %542 into %inserted_slice_1985[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1987 = tensor.insert_slice %549 into %inserted_slice_1986[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1988 = tensor.insert_slice %556 into %inserted_slice_1987[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1989 = tensor.insert_slice %563 into %inserted_slice_1988[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1990 = tensor.insert_slice %570 into %inserted_slice_1989[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1991 = tensor.insert_slice %577 into %inserted_slice_1990[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1992 = tensor.insert_slice %584 into %inserted_slice_1991[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1993 = tensor.insert_slice %591 into %inserted_slice_1992[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1994 = tensor.insert_slice %598 into %inserted_slice_1993[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1995 = tensor.insert_slice %605 into %inserted_slice_1994[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1996 = tensor.insert_slice %612 into %inserted_slice_1995[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1997 = tensor.insert_slice %619 into %inserted_slice_1996[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1998 = tensor.insert_slice %626 into %inserted_slice_1997[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_1999 = tensor.insert_slice %633 into %inserted_slice_1998[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_2000 = tensor.insert_slice %640 into %inserted_slice_1999[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_2001 = tensor.insert_slice %647 into %inserted_slice_2000[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    %inserted_slice_2002 = tensor.insert_slice %654 into %inserted_slice_2001[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1568x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %656 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2002, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x1568x1x1xf32>, tensor<1568xf32>, tensor<1568xf32>, tensor<1568xf32>, tensor<1568xf32>) outs(%inserted_slice_2002 : tensor<1x1568x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1568x1x1xf32>
    %657 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<1x1568x1x1xf32>) outs(%655 : tensor<1x1568x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1568x1x1xf32>
    %658 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%657, %cst_30 : tensor<1x1568x1x1xf32>, tensor<128x1568x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %659 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%658 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %660 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2003 = tensor.pad %660 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %661 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2003, %cst_29 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %662 = tensor.empty() : tensor<1x1600x1x1xf32>
    %inserted_slice_2004 = tensor.insert_slice %504 into %662[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2005 = tensor.insert_slice %514 into %inserted_slice_2004[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2006 = tensor.insert_slice %521 into %inserted_slice_2005[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2007 = tensor.insert_slice %528 into %inserted_slice_2006[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2008 = tensor.insert_slice %535 into %inserted_slice_2007[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2009 = tensor.insert_slice %542 into %inserted_slice_2008[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2010 = tensor.insert_slice %549 into %inserted_slice_2009[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2011 = tensor.insert_slice %556 into %inserted_slice_2010[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2012 = tensor.insert_slice %563 into %inserted_slice_2011[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2013 = tensor.insert_slice %570 into %inserted_slice_2012[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2014 = tensor.insert_slice %577 into %inserted_slice_2013[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2015 = tensor.insert_slice %584 into %inserted_slice_2014[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2016 = tensor.insert_slice %591 into %inserted_slice_2015[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2017 = tensor.insert_slice %598 into %inserted_slice_2016[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2018 = tensor.insert_slice %605 into %inserted_slice_2017[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2019 = tensor.insert_slice %612 into %inserted_slice_2018[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2020 = tensor.insert_slice %619 into %inserted_slice_2019[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2021 = tensor.insert_slice %626 into %inserted_slice_2020[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2022 = tensor.insert_slice %633 into %inserted_slice_2021[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2023 = tensor.insert_slice %640 into %inserted_slice_2022[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2024 = tensor.insert_slice %647 into %inserted_slice_2023[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2025 = tensor.insert_slice %654 into %inserted_slice_2024[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    %inserted_slice_2026 = tensor.insert_slice %661 into %inserted_slice_2025[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1600x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %663 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2026, %cst_99, %cst_98, %cst_98, %cst_99 : tensor<1x1600x1x1xf32>, tensor<1600xf32>, tensor<1600xf32>, tensor<1600xf32>, tensor<1600xf32>) outs(%inserted_slice_2026 : tensor<1x1600x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1600x1x1xf32>
    %664 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663 : tensor<1x1600x1x1xf32>) outs(%662 : tensor<1x1600x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1600x1x1xf32>
    %665 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%664, %cst_28 : tensor<1x1600x1x1xf32>, tensor<128x1600x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %666 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%665 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %667 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2027 = tensor.pad %667 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %668 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2027, %cst_27 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %669 = tensor.empty() : tensor<1x1632x1x1xf32>
    %inserted_slice_2028 = tensor.insert_slice %504 into %669[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2029 = tensor.insert_slice %514 into %inserted_slice_2028[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2030 = tensor.insert_slice %521 into %inserted_slice_2029[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2031 = tensor.insert_slice %528 into %inserted_slice_2030[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2032 = tensor.insert_slice %535 into %inserted_slice_2031[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2033 = tensor.insert_slice %542 into %inserted_slice_2032[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2034 = tensor.insert_slice %549 into %inserted_slice_2033[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2035 = tensor.insert_slice %556 into %inserted_slice_2034[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2036 = tensor.insert_slice %563 into %inserted_slice_2035[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2037 = tensor.insert_slice %570 into %inserted_slice_2036[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2038 = tensor.insert_slice %577 into %inserted_slice_2037[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2039 = tensor.insert_slice %584 into %inserted_slice_2038[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2040 = tensor.insert_slice %591 into %inserted_slice_2039[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2041 = tensor.insert_slice %598 into %inserted_slice_2040[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2042 = tensor.insert_slice %605 into %inserted_slice_2041[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2043 = tensor.insert_slice %612 into %inserted_slice_2042[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2044 = tensor.insert_slice %619 into %inserted_slice_2043[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2045 = tensor.insert_slice %626 into %inserted_slice_2044[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2046 = tensor.insert_slice %633 into %inserted_slice_2045[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2047 = tensor.insert_slice %640 into %inserted_slice_2046[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2048 = tensor.insert_slice %647 into %inserted_slice_2047[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2049 = tensor.insert_slice %654 into %inserted_slice_2048[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2050 = tensor.insert_slice %661 into %inserted_slice_2049[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_2051 = tensor.insert_slice %668 into %inserted_slice_2050[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %670 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2051, %cst_95, %cst_94, %cst_94, %cst_95 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%inserted_slice_2051 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1632x1x1xf32>
    %671 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670 : tensor<1x1632x1x1xf32>) outs(%669 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1632x1x1xf32>
    %672 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%671, %cst_26 : tensor<1x1632x1x1xf32>, tensor<128x1632x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %673 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%672 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2052 = tensor.pad %674 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %675 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2052, %cst_25 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %676 = tensor.empty() : tensor<1x1664x1x1xf32>
    %inserted_slice_2053 = tensor.insert_slice %504 into %676[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2054 = tensor.insert_slice %514 into %inserted_slice_2053[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2055 = tensor.insert_slice %521 into %inserted_slice_2054[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2056 = tensor.insert_slice %528 into %inserted_slice_2055[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2057 = tensor.insert_slice %535 into %inserted_slice_2056[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2058 = tensor.insert_slice %542 into %inserted_slice_2057[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2059 = tensor.insert_slice %549 into %inserted_slice_2058[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2060 = tensor.insert_slice %556 into %inserted_slice_2059[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2061 = tensor.insert_slice %563 into %inserted_slice_2060[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2062 = tensor.insert_slice %570 into %inserted_slice_2061[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2063 = tensor.insert_slice %577 into %inserted_slice_2062[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2064 = tensor.insert_slice %584 into %inserted_slice_2063[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2065 = tensor.insert_slice %591 into %inserted_slice_2064[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2066 = tensor.insert_slice %598 into %inserted_slice_2065[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2067 = tensor.insert_slice %605 into %inserted_slice_2066[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2068 = tensor.insert_slice %612 into %inserted_slice_2067[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2069 = tensor.insert_slice %619 into %inserted_slice_2068[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2070 = tensor.insert_slice %626 into %inserted_slice_2069[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2071 = tensor.insert_slice %633 into %inserted_slice_2070[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2072 = tensor.insert_slice %640 into %inserted_slice_2071[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2073 = tensor.insert_slice %647 into %inserted_slice_2072[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2074 = tensor.insert_slice %654 into %inserted_slice_2073[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2075 = tensor.insert_slice %661 into %inserted_slice_2074[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2076 = tensor.insert_slice %668 into %inserted_slice_2075[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    %inserted_slice_2077 = tensor.insert_slice %675 into %inserted_slice_2076[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1664x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %677 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2077, %cst_91, %cst_90, %cst_90, %cst_91 : tensor<1x1664x1x1xf32>, tensor<1664xf32>, tensor<1664xf32>, tensor<1664xf32>, tensor<1664xf32>) outs(%inserted_slice_2077 : tensor<1x1664x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1664x1x1xf32>
    %678 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677 : tensor<1x1664x1x1xf32>) outs(%676 : tensor<1x1664x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1664x1x1xf32>
    %679 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%678, %cst_24 : tensor<1x1664x1x1xf32>, tensor<128x1664x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %680 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%679 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %681 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2078 = tensor.pad %681 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %682 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2078, %cst_23 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %683 = tensor.empty() : tensor<1x1696x1x1xf32>
    %inserted_slice_2079 = tensor.insert_slice %504 into %683[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2080 = tensor.insert_slice %514 into %inserted_slice_2079[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2081 = tensor.insert_slice %521 into %inserted_slice_2080[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2082 = tensor.insert_slice %528 into %inserted_slice_2081[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2083 = tensor.insert_slice %535 into %inserted_slice_2082[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2084 = tensor.insert_slice %542 into %inserted_slice_2083[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2085 = tensor.insert_slice %549 into %inserted_slice_2084[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2086 = tensor.insert_slice %556 into %inserted_slice_2085[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2087 = tensor.insert_slice %563 into %inserted_slice_2086[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2088 = tensor.insert_slice %570 into %inserted_slice_2087[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2089 = tensor.insert_slice %577 into %inserted_slice_2088[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2090 = tensor.insert_slice %584 into %inserted_slice_2089[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2091 = tensor.insert_slice %591 into %inserted_slice_2090[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2092 = tensor.insert_slice %598 into %inserted_slice_2091[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2093 = tensor.insert_slice %605 into %inserted_slice_2092[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2094 = tensor.insert_slice %612 into %inserted_slice_2093[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2095 = tensor.insert_slice %619 into %inserted_slice_2094[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2096 = tensor.insert_slice %626 into %inserted_slice_2095[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2097 = tensor.insert_slice %633 into %inserted_slice_2096[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2098 = tensor.insert_slice %640 into %inserted_slice_2097[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2099 = tensor.insert_slice %647 into %inserted_slice_2098[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2100 = tensor.insert_slice %654 into %inserted_slice_2099[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2101 = tensor.insert_slice %661 into %inserted_slice_2100[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2102 = tensor.insert_slice %668 into %inserted_slice_2101[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2103 = tensor.insert_slice %675 into %inserted_slice_2102[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    %inserted_slice_2104 = tensor.insert_slice %682 into %inserted_slice_2103[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1696x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %684 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2104, %cst_87, %cst_86, %cst_86, %cst_87 : tensor<1x1696x1x1xf32>, tensor<1696xf32>, tensor<1696xf32>, tensor<1696xf32>, tensor<1696xf32>) outs(%inserted_slice_2104 : tensor<1x1696x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1696x1x1xf32>
    %685 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684 : tensor<1x1696x1x1xf32>) outs(%683 : tensor<1x1696x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1696x1x1xf32>
    %686 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%685, %cst_22 : tensor<1x1696x1x1xf32>, tensor<128x1696x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %687 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%686 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %688 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2105 = tensor.pad %688 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %689 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2105, %cst_21 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %690 = tensor.empty() : tensor<1x1728x1x1xf32>
    %inserted_slice_2106 = tensor.insert_slice %504 into %690[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2107 = tensor.insert_slice %514 into %inserted_slice_2106[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2108 = tensor.insert_slice %521 into %inserted_slice_2107[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2109 = tensor.insert_slice %528 into %inserted_slice_2108[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2110 = tensor.insert_slice %535 into %inserted_slice_2109[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2111 = tensor.insert_slice %542 into %inserted_slice_2110[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2112 = tensor.insert_slice %549 into %inserted_slice_2111[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2113 = tensor.insert_slice %556 into %inserted_slice_2112[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2114 = tensor.insert_slice %563 into %inserted_slice_2113[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2115 = tensor.insert_slice %570 into %inserted_slice_2114[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2116 = tensor.insert_slice %577 into %inserted_slice_2115[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2117 = tensor.insert_slice %584 into %inserted_slice_2116[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2118 = tensor.insert_slice %591 into %inserted_slice_2117[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2119 = tensor.insert_slice %598 into %inserted_slice_2118[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2120 = tensor.insert_slice %605 into %inserted_slice_2119[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2121 = tensor.insert_slice %612 into %inserted_slice_2120[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2122 = tensor.insert_slice %619 into %inserted_slice_2121[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2123 = tensor.insert_slice %626 into %inserted_slice_2122[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2124 = tensor.insert_slice %633 into %inserted_slice_2123[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2125 = tensor.insert_slice %640 into %inserted_slice_2124[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2126 = tensor.insert_slice %647 into %inserted_slice_2125[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2127 = tensor.insert_slice %654 into %inserted_slice_2126[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2128 = tensor.insert_slice %661 into %inserted_slice_2127[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2129 = tensor.insert_slice %668 into %inserted_slice_2128[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2130 = tensor.insert_slice %675 into %inserted_slice_2129[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2131 = tensor.insert_slice %682 into %inserted_slice_2130[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_2132 = tensor.insert_slice %689 into %inserted_slice_2131[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1728x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %691 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2132, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x1728x1x1xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>) outs(%inserted_slice_2132 : tensor<1x1728x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1728x1x1xf32>
    %692 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691 : tensor<1x1728x1x1xf32>) outs(%690 : tensor<1x1728x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1728x1x1xf32>
    %693 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%692, %cst_20 : tensor<1x1728x1x1xf32>, tensor<128x1728x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %694 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%693 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %695 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2133 = tensor.pad %695 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %696 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2133, %cst_19 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %697 = tensor.empty() : tensor<1x1760x1x1xf32>
    %inserted_slice_2134 = tensor.insert_slice %504 into %697[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2135 = tensor.insert_slice %514 into %inserted_slice_2134[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2136 = tensor.insert_slice %521 into %inserted_slice_2135[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2137 = tensor.insert_slice %528 into %inserted_slice_2136[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2138 = tensor.insert_slice %535 into %inserted_slice_2137[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2139 = tensor.insert_slice %542 into %inserted_slice_2138[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2140 = tensor.insert_slice %549 into %inserted_slice_2139[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2141 = tensor.insert_slice %556 into %inserted_slice_2140[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2142 = tensor.insert_slice %563 into %inserted_slice_2141[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2143 = tensor.insert_slice %570 into %inserted_slice_2142[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2144 = tensor.insert_slice %577 into %inserted_slice_2143[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2145 = tensor.insert_slice %584 into %inserted_slice_2144[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2146 = tensor.insert_slice %591 into %inserted_slice_2145[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2147 = tensor.insert_slice %598 into %inserted_slice_2146[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2148 = tensor.insert_slice %605 into %inserted_slice_2147[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2149 = tensor.insert_slice %612 into %inserted_slice_2148[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2150 = tensor.insert_slice %619 into %inserted_slice_2149[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2151 = tensor.insert_slice %626 into %inserted_slice_2150[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2152 = tensor.insert_slice %633 into %inserted_slice_2151[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2153 = tensor.insert_slice %640 into %inserted_slice_2152[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2154 = tensor.insert_slice %647 into %inserted_slice_2153[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2155 = tensor.insert_slice %654 into %inserted_slice_2154[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2156 = tensor.insert_slice %661 into %inserted_slice_2155[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2157 = tensor.insert_slice %668 into %inserted_slice_2156[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2158 = tensor.insert_slice %675 into %inserted_slice_2157[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2159 = tensor.insert_slice %682 into %inserted_slice_2158[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2160 = tensor.insert_slice %689 into %inserted_slice_2159[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    %inserted_slice_2161 = tensor.insert_slice %696 into %inserted_slice_2160[0, 1728, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1760x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %698 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2161, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x1760x1x1xf32>, tensor<1760xf32>, tensor<1760xf32>, tensor<1760xf32>, tensor<1760xf32>) outs(%inserted_slice_2161 : tensor<1x1760x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1760x1x1xf32>
    %699 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698 : tensor<1x1760x1x1xf32>) outs(%697 : tensor<1x1760x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1760x1x1xf32>
    %700 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%699, %cst_18 : tensor<1x1760x1x1xf32>, tensor<128x1760x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %701 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%700 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %702 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2162 = tensor.pad %702 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %703 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2162, %cst_17 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %704 = tensor.empty() : tensor<1x1792x1x1xf32>
    %inserted_slice_2163 = tensor.insert_slice %504 into %704[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2164 = tensor.insert_slice %514 into %inserted_slice_2163[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2165 = tensor.insert_slice %521 into %inserted_slice_2164[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2166 = tensor.insert_slice %528 into %inserted_slice_2165[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2167 = tensor.insert_slice %535 into %inserted_slice_2166[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2168 = tensor.insert_slice %542 into %inserted_slice_2167[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2169 = tensor.insert_slice %549 into %inserted_slice_2168[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2170 = tensor.insert_slice %556 into %inserted_slice_2169[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2171 = tensor.insert_slice %563 into %inserted_slice_2170[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2172 = tensor.insert_slice %570 into %inserted_slice_2171[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2173 = tensor.insert_slice %577 into %inserted_slice_2172[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2174 = tensor.insert_slice %584 into %inserted_slice_2173[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2175 = tensor.insert_slice %591 into %inserted_slice_2174[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2176 = tensor.insert_slice %598 into %inserted_slice_2175[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2177 = tensor.insert_slice %605 into %inserted_slice_2176[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2178 = tensor.insert_slice %612 into %inserted_slice_2177[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2179 = tensor.insert_slice %619 into %inserted_slice_2178[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2180 = tensor.insert_slice %626 into %inserted_slice_2179[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2181 = tensor.insert_slice %633 into %inserted_slice_2180[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2182 = tensor.insert_slice %640 into %inserted_slice_2181[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2183 = tensor.insert_slice %647 into %inserted_slice_2182[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2184 = tensor.insert_slice %654 into %inserted_slice_2183[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2185 = tensor.insert_slice %661 into %inserted_slice_2184[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2186 = tensor.insert_slice %668 into %inserted_slice_2185[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2187 = tensor.insert_slice %675 into %inserted_slice_2186[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2188 = tensor.insert_slice %682 into %inserted_slice_2187[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2189 = tensor.insert_slice %689 into %inserted_slice_2188[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2190 = tensor.insert_slice %696 into %inserted_slice_2189[0, 1728, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    %inserted_slice_2191 = tensor.insert_slice %703 into %inserted_slice_2190[0, 1760, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1792x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %705 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2191, %cst_75, %cst_74, %cst_74, %cst_75 : tensor<1x1792x1x1xf32>, tensor<1792xf32>, tensor<1792xf32>, tensor<1792xf32>, tensor<1792xf32>) outs(%inserted_slice_2191 : tensor<1x1792x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1792x1x1xf32>
    %706 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705 : tensor<1x1792x1x1xf32>) outs(%704 : tensor<1x1792x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1792x1x1xf32>
    %707 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%706, %cst_16 : tensor<1x1792x1x1xf32>, tensor<128x1792x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %708 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%707 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %709 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2192 = tensor.pad %709 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %710 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2192, %cst_15 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %711 = tensor.empty() : tensor<1x1824x1x1xf32>
    %inserted_slice_2193 = tensor.insert_slice %504 into %711[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2194 = tensor.insert_slice %514 into %inserted_slice_2193[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2195 = tensor.insert_slice %521 into %inserted_slice_2194[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2196 = tensor.insert_slice %528 into %inserted_slice_2195[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2197 = tensor.insert_slice %535 into %inserted_slice_2196[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2198 = tensor.insert_slice %542 into %inserted_slice_2197[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2199 = tensor.insert_slice %549 into %inserted_slice_2198[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2200 = tensor.insert_slice %556 into %inserted_slice_2199[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2201 = tensor.insert_slice %563 into %inserted_slice_2200[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2202 = tensor.insert_slice %570 into %inserted_slice_2201[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2203 = tensor.insert_slice %577 into %inserted_slice_2202[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2204 = tensor.insert_slice %584 into %inserted_slice_2203[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2205 = tensor.insert_slice %591 into %inserted_slice_2204[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2206 = tensor.insert_slice %598 into %inserted_slice_2205[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2207 = tensor.insert_slice %605 into %inserted_slice_2206[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2208 = tensor.insert_slice %612 into %inserted_slice_2207[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2209 = tensor.insert_slice %619 into %inserted_slice_2208[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2210 = tensor.insert_slice %626 into %inserted_slice_2209[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2211 = tensor.insert_slice %633 into %inserted_slice_2210[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2212 = tensor.insert_slice %640 into %inserted_slice_2211[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2213 = tensor.insert_slice %647 into %inserted_slice_2212[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2214 = tensor.insert_slice %654 into %inserted_slice_2213[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2215 = tensor.insert_slice %661 into %inserted_slice_2214[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2216 = tensor.insert_slice %668 into %inserted_slice_2215[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2217 = tensor.insert_slice %675 into %inserted_slice_2216[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2218 = tensor.insert_slice %682 into %inserted_slice_2217[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2219 = tensor.insert_slice %689 into %inserted_slice_2218[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2220 = tensor.insert_slice %696 into %inserted_slice_2219[0, 1728, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2221 = tensor.insert_slice %703 into %inserted_slice_2220[0, 1760, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_2222 = tensor.insert_slice %710 into %inserted_slice_2221[0, 1792, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %712 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2222, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%inserted_slice_2222 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1824x1x1xf32>
    %713 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712 : tensor<1x1824x1x1xf32>) outs(%711 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1824x1x1xf32>
    %714 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%713, %cst_12 : tensor<1x1824x1x1xf32>, tensor<128x1824x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %715 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%714 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2223 = tensor.pad %716 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %717 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2223, %cst_11 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %718 = tensor.empty() : tensor<1x1856x1x1xf32>
    %inserted_slice_2224 = tensor.insert_slice %504 into %718[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2225 = tensor.insert_slice %514 into %inserted_slice_2224[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2226 = tensor.insert_slice %521 into %inserted_slice_2225[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2227 = tensor.insert_slice %528 into %inserted_slice_2226[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2228 = tensor.insert_slice %535 into %inserted_slice_2227[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2229 = tensor.insert_slice %542 into %inserted_slice_2228[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2230 = tensor.insert_slice %549 into %inserted_slice_2229[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2231 = tensor.insert_slice %556 into %inserted_slice_2230[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2232 = tensor.insert_slice %563 into %inserted_slice_2231[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2233 = tensor.insert_slice %570 into %inserted_slice_2232[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2234 = tensor.insert_slice %577 into %inserted_slice_2233[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2235 = tensor.insert_slice %584 into %inserted_slice_2234[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2236 = tensor.insert_slice %591 into %inserted_slice_2235[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2237 = tensor.insert_slice %598 into %inserted_slice_2236[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2238 = tensor.insert_slice %605 into %inserted_slice_2237[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2239 = tensor.insert_slice %612 into %inserted_slice_2238[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2240 = tensor.insert_slice %619 into %inserted_slice_2239[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2241 = tensor.insert_slice %626 into %inserted_slice_2240[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2242 = tensor.insert_slice %633 into %inserted_slice_2241[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2243 = tensor.insert_slice %640 into %inserted_slice_2242[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2244 = tensor.insert_slice %647 into %inserted_slice_2243[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2245 = tensor.insert_slice %654 into %inserted_slice_2244[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2246 = tensor.insert_slice %661 into %inserted_slice_2245[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2247 = tensor.insert_slice %668 into %inserted_slice_2246[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2248 = tensor.insert_slice %675 into %inserted_slice_2247[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2249 = tensor.insert_slice %682 into %inserted_slice_2248[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2250 = tensor.insert_slice %689 into %inserted_slice_2249[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2251 = tensor.insert_slice %696 into %inserted_slice_2250[0, 1728, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2252 = tensor.insert_slice %703 into %inserted_slice_2251[0, 1760, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2253 = tensor.insert_slice %710 into %inserted_slice_2252[0, 1792, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    %inserted_slice_2254 = tensor.insert_slice %717 into %inserted_slice_2253[0, 1824, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1856x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %719 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2254, %cst_10, %cst_9, %cst_9, %cst_10 : tensor<1x1856x1x1xf32>, tensor<1856xf32>, tensor<1856xf32>, tensor<1856xf32>, tensor<1856xf32>) outs(%inserted_slice_2254 : tensor<1x1856x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1856x1x1xf32>
    %720 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719 : tensor<1x1856x1x1xf32>) outs(%718 : tensor<1x1856x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1856x1x1xf32>
    %721 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%720, %cst_8 : tensor<1x1856x1x1xf32>, tensor<128x1856x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %722 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%721 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %723 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2255 = tensor.pad %723 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %724 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2255, %cst_7 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %725 = tensor.empty() : tensor<1x1888x1x1xf32>
    %inserted_slice_2256 = tensor.insert_slice %504 into %725[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2257 = tensor.insert_slice %514 into %inserted_slice_2256[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2258 = tensor.insert_slice %521 into %inserted_slice_2257[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2259 = tensor.insert_slice %528 into %inserted_slice_2258[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2260 = tensor.insert_slice %535 into %inserted_slice_2259[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2261 = tensor.insert_slice %542 into %inserted_slice_2260[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2262 = tensor.insert_slice %549 into %inserted_slice_2261[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2263 = tensor.insert_slice %556 into %inserted_slice_2262[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2264 = tensor.insert_slice %563 into %inserted_slice_2263[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2265 = tensor.insert_slice %570 into %inserted_slice_2264[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2266 = tensor.insert_slice %577 into %inserted_slice_2265[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2267 = tensor.insert_slice %584 into %inserted_slice_2266[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2268 = tensor.insert_slice %591 into %inserted_slice_2267[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2269 = tensor.insert_slice %598 into %inserted_slice_2268[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2270 = tensor.insert_slice %605 into %inserted_slice_2269[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2271 = tensor.insert_slice %612 into %inserted_slice_2270[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2272 = tensor.insert_slice %619 into %inserted_slice_2271[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2273 = tensor.insert_slice %626 into %inserted_slice_2272[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2274 = tensor.insert_slice %633 into %inserted_slice_2273[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2275 = tensor.insert_slice %640 into %inserted_slice_2274[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2276 = tensor.insert_slice %647 into %inserted_slice_2275[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2277 = tensor.insert_slice %654 into %inserted_slice_2276[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2278 = tensor.insert_slice %661 into %inserted_slice_2277[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2279 = tensor.insert_slice %668 into %inserted_slice_2278[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2280 = tensor.insert_slice %675 into %inserted_slice_2279[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2281 = tensor.insert_slice %682 into %inserted_slice_2280[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2282 = tensor.insert_slice %689 into %inserted_slice_2281[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2283 = tensor.insert_slice %696 into %inserted_slice_2282[0, 1728, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2284 = tensor.insert_slice %703 into %inserted_slice_2283[0, 1760, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2285 = tensor.insert_slice %710 into %inserted_slice_2284[0, 1792, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2286 = tensor.insert_slice %717 into %inserted_slice_2285[0, 1824, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    %inserted_slice_2287 = tensor.insert_slice %724 into %inserted_slice_2286[0, 1856, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1888x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %726 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2287, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x1888x1x1xf32>, tensor<1888xf32>, tensor<1888xf32>, tensor<1888xf32>, tensor<1888xf32>) outs(%inserted_slice_2287 : tensor<1x1888x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1888x1x1xf32>
    %727 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726 : tensor<1x1888x1x1xf32>) outs(%725 : tensor<1x1888x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1888x1x1xf32>
    %728 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%727, %cst_4 : tensor<1x1888x1x1xf32>, tensor<128x1888x1x1xf32>) outs(%508 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %729 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728, %cst_314, %cst_313, %cst_313, %cst_314 : tensor<1x128x1x1xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%728 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x128x1x1xf32>
    %730 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729 : tensor<1x128x1x1xf32>) outs(%507 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x128x1x1xf32>
    %padded_2288 = tensor.pad %730 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_319 : f32
    } : tensor<1x128x1x1xf32> to tensor<1x128x3x3xf32>
    %731 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_2288, %cst_3 : tensor<1x128x3x3xf32>, tensor<32x128x3x3xf32>) outs(%513 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %732 = tensor.empty() : tensor<1x1920x1x1xf32>
    %inserted_slice_2289 = tensor.insert_slice %504 into %732[0, 0, 0, 0] [1, 896, 1, 1] [1, 1, 1, 1] : tensor<1x896x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2290 = tensor.insert_slice %514 into %inserted_slice_2289[0, 896, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2291 = tensor.insert_slice %521 into %inserted_slice_2290[0, 928, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2292 = tensor.insert_slice %528 into %inserted_slice_2291[0, 960, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2293 = tensor.insert_slice %535 into %inserted_slice_2292[0, 992, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2294 = tensor.insert_slice %542 into %inserted_slice_2293[0, 1024, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2295 = tensor.insert_slice %549 into %inserted_slice_2294[0, 1056, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2296 = tensor.insert_slice %556 into %inserted_slice_2295[0, 1088, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2297 = tensor.insert_slice %563 into %inserted_slice_2296[0, 1120, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2298 = tensor.insert_slice %570 into %inserted_slice_2297[0, 1152, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2299 = tensor.insert_slice %577 into %inserted_slice_2298[0, 1184, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2300 = tensor.insert_slice %584 into %inserted_slice_2299[0, 1216, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2301 = tensor.insert_slice %591 into %inserted_slice_2300[0, 1248, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2302 = tensor.insert_slice %598 into %inserted_slice_2301[0, 1280, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2303 = tensor.insert_slice %605 into %inserted_slice_2302[0, 1312, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2304 = tensor.insert_slice %612 into %inserted_slice_2303[0, 1344, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2305 = tensor.insert_slice %619 into %inserted_slice_2304[0, 1376, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2306 = tensor.insert_slice %626 into %inserted_slice_2305[0, 1408, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2307 = tensor.insert_slice %633 into %inserted_slice_2306[0, 1440, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2308 = tensor.insert_slice %640 into %inserted_slice_2307[0, 1472, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2309 = tensor.insert_slice %647 into %inserted_slice_2308[0, 1504, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2310 = tensor.insert_slice %654 into %inserted_slice_2309[0, 1536, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2311 = tensor.insert_slice %661 into %inserted_slice_2310[0, 1568, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2312 = tensor.insert_slice %668 into %inserted_slice_2311[0, 1600, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2313 = tensor.insert_slice %675 into %inserted_slice_2312[0, 1632, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2314 = tensor.insert_slice %682 into %inserted_slice_2313[0, 1664, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2315 = tensor.insert_slice %689 into %inserted_slice_2314[0, 1696, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2316 = tensor.insert_slice %696 into %inserted_slice_2315[0, 1728, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2317 = tensor.insert_slice %703 into %inserted_slice_2316[0, 1760, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2318 = tensor.insert_slice %710 into %inserted_slice_2317[0, 1792, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2319 = tensor.insert_slice %717 into %inserted_slice_2318[0, 1824, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2320 = tensor.insert_slice %724 into %inserted_slice_2319[0, 1856, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_2321 = tensor.insert_slice %731 into %inserted_slice_2320[0, 1888, 0, 0] [1, 32, 1, 1] [1, 1, 1, 1] : tensor<1x32x1x1xf32> into tensor<1x1920x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %733 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_2321, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1920x1x1xf32>, tensor<1920xf32>, tensor<1920xf32>, tensor<1920xf32>, tensor<1920xf32>) outs(%inserted_slice_2321 : tensor<1x1920x1x1xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %in_2323: f32, %in_2324: f32, %in_2325: f32, %out: f32):
      %744 = arith.truncf %cst_321 : f64 to f32
      %745 = arith.addf %in_2325, %744 : f32
      %746 = math.rsqrt %745 : f32
      %747 = arith.subf %in, %in_2324 : f32
      %748 = arith.mulf %747, %746 : f32
      %749 = arith.mulf %748, %in_2322 : f32
      %750 = arith.addf %749, %in_2323 : f32
      linalg.yield %750 : f32
    } -> tensor<1x1920x1x1xf32>
    %734 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733 : tensor<1x1920x1x1xf32>) outs(%732 : tensor<1x1920x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %744 = arith.cmpf ugt, %in, %cst_319 : f32
      %745 = arith.select %744, %in, %cst_319 : f32
      linalg.yield %745 : f32
    } -> tensor<1x1920x1x1xf32>
    %735 = linalg.fill ins(%cst_319 : f32) outs(%732 : tensor<1x1920x1x1xf32>) -> tensor<1x1920x1x1xf32>
    %736 = tensor.empty() : tensor<1x1xf32>
    %737 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%734, %736 : tensor<1x1920x1x1xf32>, tensor<1x1xf32>) outs(%735 : tensor<1x1920x1x1xf32>) -> tensor<1x1920x1x1xf32>
    %collapsed = tensor.collapse_shape %737 [[0], [1, 2, 3]] : tensor<1x1920x1x1xf32> into tensor<1x1920xf32>
    %738 = tensor.empty() : tensor<1920x1000xf32>
    %739 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1920xf32>) outs(%738 : tensor<1920x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1920x1000xf32>
    %740 = tensor.empty() : tensor<1x1000xf32>
    %741 = linalg.fill ins(%cst_319 : f32) outs(%740 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %742 = linalg.matmul ins(%collapsed, %739 : tensor<1x1920xf32>, tensor<1920x1000xf32>) outs(%741 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %743 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%742, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%740 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_2322: f32, %out: f32):
      %744 = arith.addf %in, %in_2322 : f32
      linalg.yield %744 : f32
    } -> tensor<1x1000xf32>
    return %743 : tensor<1x1000xf32>
  }
}
