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
    %cst = arith.constant dense<-0.001644e+00> : tensor<1000x2304xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2304xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<2304xf32>
    %cst_3 = arith.constant dense<0.005328e+00> : tensor<2304x576x1x1xf32>
    %cst_4 = arith.constant dense<0.003410e+00> : tensor<576x3456x1x1xf32>
    %cst_5 = arith.constant dense<-0.018437e+00> : tensor<3456x144x1x1xf32>
    %cst_6 = arith.constant dense<-0.011427e+00> : tensor<144x3456x1x1xf32>
    %cst_7 = arith.constant dense<-0.003101e+00> : tensor<3456x1x3x3xf32>
    %cst_8 = arith.constant dense<0.016425e+00> : tensor<3456x576x1x1xf32>
    %cst_9 = arith.constant dense<-0.016245e+00> : tensor<576x3456x1x1xf32>
    %cst_10 = arith.constant dense<-0.005016e+00> : tensor<3456x144x1x1xf32>
    %cst_11 = arith.constant dense<0.024278e+00> : tensor<144x3456x1x1xf32>
    %cst_12 = arith.constant dense<0.001175e+00> : tensor<3456x1x3x3xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<3456xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<3456xf32>
    %cst_15 = arith.constant dense<0.002630e+00> : tensor<3456x576x1x1xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_18 = arith.constant dense<-0.008449e+00> : tensor<576x2064x1x1xf32>
    %cst_19 = arith.constant dense<-0.009563e+00> : tensor<2064x86x1x1xf32>
    %cst_20 = arith.constant dense<0.000810e+00> : tensor<86x2064x1x1xf32>
    %cst_21 = arith.constant dense<0.022204e+00> : tensor<2064x1x3x3xf32>
    %cst_22 = arith.constant dense<0.016092e+00> : tensor<2064x344x1x1xf32>
    %cst_23 = arith.constant dense<-0.000960e+00> : tensor<344x2064x1x1xf32>
    %cst_24 = arith.constant dense<-0.003995e+00> : tensor<2064x86x1x1xf32>
    %cst_25 = arith.constant dense<-0.005076e+00> : tensor<86x2064x1x1xf32>
    %cst_26 = arith.constant dense<0.003654e+00> : tensor<2064x1x5x5xf32>
    %cst_27 = arith.constant dense<-0.010921e+00> : tensor<2064x344x1x1xf32>
    %cst_28 = arith.constant dense<-0.009559e+00> : tensor<344x2064x1x1xf32>
    %cst_29 = arith.constant dense<0.019809e+00> : tensor<2064x86x1x1xf32>
    %cst_30 = arith.constant dense<0.007890e+00> : tensor<86x2064x1x1xf32>
    %cst_31 = arith.constant dense<-0.008234e+00> : tensor<2064x1x5x5xf32>
    %cst_32 = arith.constant dense<0.015399e+00> : tensor<2064x344x1x1xf32>
    %cst_33 = arith.constant dense<-0.004366e+00> : tensor<344x2064x1x1xf32>
    %cst_34 = arith.constant dense<0.001327e+00> : tensor<2064x86x1x1xf32>
    %cst_35 = arith.constant dense<-0.013542e+00> : tensor<86x2064x1x1xf32>
    %cst_36 = arith.constant dense<-0.009994e+00> : tensor<2064x1x5x5xf32>
    %cst_37 = arith.constant dense<0.011795e+00> : tensor<2064x344x1x1xf32>
    %cst_38 = arith.constant dense<-0.016311e+00> : tensor<344x2064x1x1xf32>
    %cst_39 = arith.constant dense<-0.008692e+00> : tensor<2064x86x1x1xf32>
    %cst_40 = arith.constant dense<0.009250e+00> : tensor<86x2064x1x1xf32>
    %cst_41 = arith.constant dense<0.023098e+00> : tensor<2064x1x5x5xf32>
    %cst_42 = arith.constant dense<0.018807e+00> : tensor<2064x344x1x1xf32>
    %cst_43 = arith.constant dense<-0.009111e+00> : tensor<344x2064x1x1xf32>
    %cst_44 = arith.constant dense<-0.002926e+00> : tensor<2064x86x1x1xf32>
    %cst_45 = arith.constant dense<0.013700e+00> : tensor<86x2064x1x1xf32>
    %cst_46 = arith.constant dense<-0.021365e+00> : tensor<2064x1x5x5xf32>
    %cst_47 = arith.constant dense<0.005234e+00> : tensor<2064x344x1x1xf32>
    %cst_48 = arith.constant dense<0.018469e+00> : tensor<344x2064x1x1xf32>
    %cst_49 = arith.constant dense<0.002527e+00> : tensor<2064x86x1x1xf32>
    %cst_50 = arith.constant dense<0.002315e+00> : tensor<86x2064x1x1xf32>
    %cst_51 = arith.constant dense<-0.004457e+00> : tensor<2064x1x5x5xf32>
    %cst_52 = arith.constant dense<-0.004470e+00> : tensor<2064x344x1x1xf32>
    %cst_53 = arith.constant dense<-0.004334e+00> : tensor<344x2064x1x1xf32>
    %cst_54 = arith.constant dense<0.016964e+00> : tensor<2064x86x1x1xf32>
    %cst_55 = arith.constant dense<-0.001452e+00> : tensor<86x2064x1x1xf32>
    %cst_56 = arith.constant dense<0.036605e+00> : tensor<2064x1x5x5xf32>
    %cst_57 = arith.constant dense<0.014100e+00> : tensor<2064x344x1x1xf32>
    %cst_58 = arith.constant dense<0.000404e+00> : tensor<344x2064x1x1xf32>
    %cst_59 = arith.constant dense<-0.005711e+00> : tensor<2064x86x1x1xf32>
    %cst_60 = arith.constant dense<0.007694e+00> : tensor<86x2064x1x1xf32>
    %cst_61 = arith.constant dense<-0.015681e+00> : tensor<2064x1x5x5xf32>
    %cst_62 = arith.constant dense<-0.006445e+00> : tensor<2064x344x1x1xf32>
    %cst_63 = arith.constant dense<0.013890e+00> : tensor<344x2064x1x1xf32>
    %cst_64 = arith.constant dense<-0.019527e+00> : tensor<2064x86x1x1xf32>
    %cst_65 = arith.constant dense<-0.009907e+00> : tensor<86x2064x1x1xf32>
    %cst_66 = arith.constant dense<-0.015404e+00> : tensor<2064x1x5x5xf32>
    %cst_67 = arith.constant dense<-0.016555e+00> : tensor<2064x344x1x1xf32>
    %cst_68 = arith.constant dense<0.003526e+00> : tensor<344x2064x1x1xf32>
    %cst_69 = arith.constant dense<0.013332e+00> : tensor<2064x86x1x1xf32>
    %cst_70 = arith.constant dense<0.012715e+00> : tensor<86x2064x1x1xf32>
    %cst_71 = arith.constant dense<0.000000e+00> : tensor<86xf32>
    %cst_72 = arith.constant dense<0.003370e+00> : tensor<2064x1x5x5xf32>
    %cst_73 = arith.constant dense<0.000000e+00> : tensor<2064xf32>
    %cst_74 = arith.constant dense<1.000000e+00> : tensor<2064xf32>
    %cst_75 = arith.constant dense<-0.014514e+00> : tensor<2064x344x1x1xf32>
    %cst_76 = arith.constant dense<0.000000e+00> : tensor<344xf32>
    %cst_77 = arith.constant dense<1.000000e+00> : tensor<344xf32>
    %cst_78 = arith.constant dense<0.010888e+00> : tensor<344x1200x1x1xf32>
    %cst_79 = arith.constant dense<-0.004229e+00> : tensor<1200x50x1x1xf32>
    %cst_80 = arith.constant dense<-0.016628e+00> : tensor<50x1200x1x1xf32>
    %cst_81 = arith.constant dense<0.004185e+00> : tensor<1200x1x5x5xf32>
    %cst_82 = arith.constant dense<-0.003344e+00> : tensor<1200x200x1x1xf32>
    %cst_83 = arith.constant dense<0.008526e+00> : tensor<200x1200x1x1xf32>
    %cst_84 = arith.constant dense<-0.007423e+00> : tensor<1200x50x1x1xf32>
    %cst_85 = arith.constant dense<0.007831e+00> : tensor<50x1200x1x1xf32>
    %cst_86 = arith.constant dense<0.002061e+00> : tensor<1200x1x5x5xf32>
    %cst_87 = arith.constant dense<0.000904e+00> : tensor<1200x200x1x1xf32>
    %cst_88 = arith.constant dense<0.013214e+00> : tensor<200x1200x1x1xf32>
    %cst_89 = arith.constant dense<-0.013454e+00> : tensor<1200x50x1x1xf32>
    %cst_90 = arith.constant dense<-0.002046e+00> : tensor<50x1200x1x1xf32>
    %cst_91 = arith.constant dense<-0.006066e+00> : tensor<1200x1x5x5xf32>
    %cst_92 = arith.constant dense<-0.007423e+00> : tensor<1200x200x1x1xf32>
    %cst_93 = arith.constant dense<0.008959e+00> : tensor<200x1200x1x1xf32>
    %cst_94 = arith.constant dense<-0.005497e+00> : tensor<1200x50x1x1xf32>
    %cst_95 = arith.constant dense<0.010106e+00> : tensor<50x1200x1x1xf32>
    %cst_96 = arith.constant dense<-0.014431e+00> : tensor<1200x1x5x5xf32>
    %cst_97 = arith.constant dense<-0.004262e+00> : tensor<1200x200x1x1xf32>
    %cst_98 = arith.constant dense<0.003220e+00> : tensor<200x1200x1x1xf32>
    %cst_99 = arith.constant dense<-0.013850e+00> : tensor<1200x50x1x1xf32>
    %cst_100 = arith.constant dense<-0.005078e+00> : tensor<50x1200x1x1xf32>
    %cst_101 = arith.constant dense<0.011704e+00> : tensor<1200x1x5x5xf32>
    %cst_102 = arith.constant dense<-0.012250e+00> : tensor<1200x200x1x1xf32>
    %cst_103 = arith.constant dense<0.028947e+00> : tensor<200x1200x1x1xf32>
    %cst_104 = arith.constant dense<0.006809e+00> : tensor<1200x50x1x1xf32>
    %cst_105 = arith.constant dense<-0.010090e+00> : tensor<50x1200x1x1xf32>
    %cst_106 = arith.constant dense<-0.000262e+00> : tensor<1200x1x5x5xf32>
    %cst_107 = arith.constant dense<-0.015894e+00> : tensor<1200x200x1x1xf32>
    %cst_108 = arith.constant dense<0.008461e+00> : tensor<200x1200x1x1xf32>
    %cst_109 = arith.constant dense<-0.006813e+00> : tensor<1200x50x1x1xf32>
    %cst_110 = arith.constant dense<-0.003807e+00> : tensor<50x1200x1x1xf32>
    %cst_111 = arith.constant dense<-0.024354e+00> : tensor<1200x1x5x5xf32>
    %cst_112 = arith.constant dense<-0.000988e+00> : tensor<1200x200x1x1xf32>
    %cst_113 = arith.constant dense<0.012080e+00> : tensor<200x1200x1x1xf32>
    %cst_114 = arith.constant dense<0.012350e+00> : tensor<1200x50x1x1xf32>
    %cst_115 = arith.constant dense<0.016174e+00> : tensor<50x1200x1x1xf32>
    %cst_116 = arith.constant dense<0.000000e+00> : tensor<50xf32>
    %cst_117 = arith.constant dense<0.005141e+00> : tensor<1200x1x5x5xf32>
    %cst_118 = arith.constant dense<0.000000e+00> : tensor<1200xf32>
    %cst_119 = arith.constant dense<1.000000e+00> : tensor<1200xf32>
    %cst_120 = arith.constant dense<-0.008164e+00> : tensor<1200x200x1x1xf32>
    %cst_121 = arith.constant dense<0.000000e+00> : tensor<200xf32>
    %cst_122 = arith.constant dense<1.000000e+00> : tensor<200xf32>
    %cst_123 = arith.constant dense<-0.009224e+00> : tensor<200x864x1x1xf32>
    %cst_124 = arith.constant dense<-0.011567e+00> : tensor<864x36x1x1xf32>
    %cst_125 = arith.constant dense<0.006400e+00> : tensor<36x864x1x1xf32>
    %cst_126 = arith.constant dense<-0.000839e+00> : tensor<864x1x5x5xf32>
    %cst_127 = arith.constant dense<-0.003484e+00> : tensor<864x144x1x1xf32>
    %cst_128 = arith.constant dense<0.002226e+00> : tensor<144x864x1x1xf32>
    %cst_129 = arith.constant dense<0.003347e+00> : tensor<864x36x1x1xf32>
    %cst_130 = arith.constant dense<-0.004488e+00> : tensor<36x864x1x1xf32>
    %cst_131 = arith.constant dense<0.009879e+00> : tensor<864x1x3x3xf32>
    %cst_132 = arith.constant dense<0.002177e+00> : tensor<864x144x1x1xf32>
    %cst_133 = arith.constant dense<0.003708e+00> : tensor<144x864x1x1xf32>
    %cst_134 = arith.constant dense<-0.006308e+00> : tensor<864x36x1x1xf32>
    %cst_135 = arith.constant dense<0.001837e+00> : tensor<36x864x1x1xf32>
    %cst_136 = arith.constant dense<-0.004607e+00> : tensor<864x1x3x3xf32>
    %cst_137 = arith.constant dense<-0.022889e+00> : tensor<864x144x1x1xf32>
    %cst_138 = arith.constant dense<-0.009142e+00> : tensor<144x864x1x1xf32>
    %cst_139 = arith.constant dense<-0.002717e+00> : tensor<864x36x1x1xf32>
    %cst_140 = arith.constant dense<-0.011053e+00> : tensor<36x864x1x1xf32>
    %cst_141 = arith.constant dense<0.003734e+00> : tensor<864x1x3x3xf32>
    %cst_142 = arith.constant dense<-0.006505e+00> : tensor<864x144x1x1xf32>
    %cst_143 = arith.constant dense<0.022442e+00> : tensor<144x864x1x1xf32>
    %cst_144 = arith.constant dense<0.016763e+00> : tensor<864x36x1x1xf32>
    %cst_145 = arith.constant dense<-0.014275e+00> : tensor<36x864x1x1xf32>
    %cst_146 = arith.constant dense<0.010740e+00> : tensor<864x1x3x3xf32>
    %cst_147 = arith.constant dense<0.004940e+00> : tensor<864x144x1x1xf32>
    %cst_148 = arith.constant dense<0.006129e+00> : tensor<144x864x1x1xf32>
    %cst_149 = arith.constant dense<0.013193e+00> : tensor<864x36x1x1xf32>
    %cst_150 = arith.constant dense<-0.018510e+00> : tensor<36x864x1x1xf32>
    %cst_151 = arith.constant dense<-0.012335e+00> : tensor<864x1x3x3xf32>
    %cst_152 = arith.constant dense<0.000067e+00> : tensor<864x144x1x1xf32>
    %cst_153 = arith.constant dense<-0.003530e+00> : tensor<144x864x1x1xf32>
    %cst_154 = arith.constant dense<0.007678e+00> : tensor<864x36x1x1xf32>
    %cst_155 = arith.constant dense<-0.010078e+00> : tensor<36x864x1x1xf32>
    %cst_156 = arith.constant dense<0.008699e+00> : tensor<864x1x3x3xf32>
    %cst_157 = arith.constant dense<0.013730e+00> : tensor<864x144x1x1xf32>
    %cst_158 = arith.constant dense<-0.010786e+00> : tensor<144x864x1x1xf32>
    %cst_159 = arith.constant dense<-0.018440e+00> : tensor<864x36x1x1xf32>
    %cst_160 = arith.constant dense<-0.000017e+00> : tensor<36x864x1x1xf32>
    %cst_161 = arith.constant dense<0.000000e+00> : tensor<36xf32>
    %cst_162 = arith.constant dense<-0.001549e+00> : tensor<864x1x3x3xf32>
    %cst_163 = arith.constant dense<0.000000e+00> : tensor<864xf32>
    %cst_164 = arith.constant dense<1.000000e+00> : tensor<864xf32>
    %cst_165 = arith.constant dense<0.002276e+00> : tensor<864x144x1x1xf32>
    %cst_166 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_167 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_168 = arith.constant dense<0.004598e+00> : tensor<144x432x1x1xf32>
    %cst_169 = arith.constant dense<0.001436e+00> : tensor<432x18x1x1xf32>
    %cst_170 = arith.constant dense<-0.003937e+00> : tensor<18x432x1x1xf32>
    %cst_171 = arith.constant dense<-0.006406e+00> : tensor<432x1x3x3xf32>
    %cst_172 = arith.constant dense<0.009546e+00> : tensor<432x72x1x1xf32>
    %cst_173 = arith.constant dense<0.007696e+00> : tensor<72x432x1x1xf32>
    %cst_174 = arith.constant dense<-0.002757e+00> : tensor<432x18x1x1xf32>
    %cst_175 = arith.constant dense<-0.009698e+00> : tensor<18x432x1x1xf32>
    %cst_176 = arith.constant dense<0.000254e+00> : tensor<432x1x5x5xf32>
    %cst_177 = arith.constant dense<0.007626e+00> : tensor<432x72x1x1xf32>
    %cst_178 = arith.constant dense<0.004370e+00> : tensor<72x432x1x1xf32>
    %cst_179 = arith.constant dense<0.013816e+00> : tensor<432x18x1x1xf32>
    %cst_180 = arith.constant dense<0.001494e+00> : tensor<18x432x1x1xf32>
    %cst_181 = arith.constant dense<-0.003521e+00> : tensor<432x1x5x5xf32>
    %cst_182 = arith.constant dense<0.008427e+00> : tensor<432x72x1x1xf32>
    %cst_183 = arith.constant dense<-0.026123e+00> : tensor<72x432x1x1xf32>
    %cst_184 = arith.constant dense<0.005545e+00> : tensor<432x18x1x1xf32>
    %cst_185 = arith.constant dense<0.001892e+00> : tensor<18x432x1x1xf32>
    %cst_186 = arith.constant dense<0.010053e+00> : tensor<432x1x5x5xf32>
    %cst_187 = arith.constant dense<-0.020191e+00> : tensor<432x72x1x1xf32>
    %cst_188 = arith.constant dense<0.005258e+00> : tensor<72x432x1x1xf32>
    %cst_189 = arith.constant dense<-0.016437e+00> : tensor<432x18x1x1xf32>
    %cst_190 = arith.constant dense<-0.009263e+00> : tensor<18x432x1x1xf32>
    %cst_191 = arith.constant dense<0.012358e+00> : tensor<432x1x5x5xf32>
    %cst_192 = arith.constant dense<-0.007159e+00> : tensor<432x72x1x1xf32>
    %cst_193 = arith.constant dense<0.001913e+00> : tensor<72x432x1x1xf32>
    %cst_194 = arith.constant dense<0.011961e+00> : tensor<432x18x1x1xf32>
    %cst_195 = arith.constant dense<-0.009681e+00> : tensor<18x432x1x1xf32>
    %cst_196 = arith.constant dense<0.000000e+00> : tensor<18xf32>
    %cst_197 = arith.constant dense<0.002726e+00> : tensor<432x1x5x5xf32>
    %cst_198 = arith.constant dense<0.000000e+00> : tensor<432xf32>
    %cst_199 = arith.constant dense<1.000000e+00> : tensor<432xf32>
    %cst_200 = arith.constant dense<0.008926e+00> : tensor<432x72x1x1xf32>
    %cst_201 = arith.constant dense<0.000000e+00> : tensor<72xf32>
    %cst_202 = arith.constant dense<1.000000e+00> : tensor<72xf32>
    %cst_203 = arith.constant dense<0.002573e+00> : tensor<72x240x1x1xf32>
    %cst_204 = arith.constant dense<0.000458e+00> : tensor<240x10x1x1xf32>
    %cst_205 = arith.constant dense<0.012635e+00> : tensor<10x240x1x1xf32>
    %cst_206 = arith.constant dense<-0.016337e+00> : tensor<240x1x5x5xf32>
    %cst_207 = arith.constant dense<0.000998e+00> : tensor<240x40x1x1xf32>
    %cst_208 = arith.constant dense<0.003718e+00> : tensor<40x240x1x1xf32>
    %cst_209 = arith.constant dense<-0.004010e+00> : tensor<240x10x1x1xf32>
    %cst_210 = arith.constant dense<-0.015280e+00> : tensor<10x240x1x1xf32>
    %cst_211 = arith.constant dense<0.015852e+00> : tensor<240x1x3x3xf32>
    %cst_212 = arith.constant dense<-0.002557e+00> : tensor<240x40x1x1xf32>
    %cst_213 = arith.constant dense<0.004023e+00> : tensor<40x240x1x1xf32>
    %cst_214 = arith.constant dense<-0.015067e+00> : tensor<240x10x1x1xf32>
    %cst_215 = arith.constant dense<-0.016470e+00> : tensor<10x240x1x1xf32>
    %cst_216 = arith.constant dense<-0.009270e+00> : tensor<240x1x3x3xf32>
    %cst_217 = arith.constant dense<0.004072e+00> : tensor<240x40x1x1xf32>
    %cst_218 = arith.constant dense<0.000717e+00> : tensor<40x240x1x1xf32>
    %cst_219 = arith.constant dense<0.012964e+00> : tensor<240x10x1x1xf32>
    %cst_220 = arith.constant dense<0.000018e+00> : tensor<10x240x1x1xf32>
    %cst_221 = arith.constant dense<0.008839e+00> : tensor<240x1x3x3xf32>
    %cst_222 = arith.constant dense<-0.017504e+00> : tensor<240x40x1x1xf32>
    %cst_223 = arith.constant dense<0.022450e+00> : tensor<40x240x1x1xf32>
    %cst_224 = arith.constant dense<0.008815e+00> : tensor<240x10x1x1xf32>
    %cst_225 = arith.constant dense<-0.005843e+00> : tensor<10x240x1x1xf32>
    %cst_226 = arith.constant dense<-0.005436e+00> : tensor<240x1x3x3xf32>
    %cst_227 = arith.constant dense<-0.006235e+00> : tensor<240x40x1x1xf32>
    %cst_228 = arith.constant dense<0.008948e+00> : tensor<40x240x1x1xf32>
    %cst_229 = arith.constant dense<-0.001102e+00> : tensor<240x10x1x1xf32>
    %cst_230 = arith.constant dense<0.017774e+00> : tensor<10x240x1x1xf32>
    %cst_231 = arith.constant dense<0.000000e+00> : tensor<10xf32>
    %cst_232 = arith.constant dense<-0.014995e+00> : tensor<240x1x3x3xf32>
    %cst_233 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_234 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_235 = arith.constant dense<-0.003718e+00> : tensor<240x40x1x1xf32>
    %cst_236 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_237 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_238 = arith.constant dense<0.011576e+00> : tensor<40x192x1x1xf32>
    %cst_239 = arith.constant dense<-0.001848e+00> : tensor<192x8x1x1xf32>
    %cst_240 = arith.constant dense<0.000648e+00> : tensor<8x192x1x1xf32>
    %cst_241 = arith.constant dense<-0.008949e+00> : tensor<192x1x3x3xf32>
    %cst_242 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_243 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_244 = arith.constant dense<-0.015190e+00> : tensor<192x32x1x1xf32>
    %cst_245 = arith.constant dense<0.011699e+00> : tensor<32x32x1x1xf32>
    %cst_246 = arith.constant dense<0.003922e+00> : tensor<32x8x1x1xf32>
    %cst_247 = arith.constant dense<-0.009089e+00> : tensor<8x32x1x1xf32>
    %cst_248 = arith.constant dense<0.011782e+00> : tensor<32x1x3x3xf32>
    %cst_249 = arith.constant dense<-0.010952e+00> : tensor<32x32x1x1xf32>
    %cst_250 = arith.constant dense<0.005860e+00> : tensor<32x8x1x1xf32>
    %cst_251 = arith.constant dense<0.004327e+00> : tensor<8x32x1x1xf32>
    %cst_252 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_253 = arith.constant dense<-0.005620e+00> : tensor<32x1x3x3xf32>
    %cst_254 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_255 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_256 = arith.constant dense<0.007892e+00> : tensor<32x56x1x1xf32>
    %cst_257 = arith.constant dense<-0.001669e+00> : tensor<56x14x1x1xf32>
    %cst_258 = arith.constant dense<-0.025217e+00> : tensor<14x56x1x1xf32>
    %cst_259 = arith.constant dense<0.000000e+00> : tensor<14xf32>
    %cst_260 = arith.constant dense<-0.002816e+00> : tensor<56x1x3x3xf32>
    %cst_261 = arith.constant dense<0.000000e+00> : tensor<56xf32>
    %cst_262 = arith.constant dense<1.000000e+00> : tensor<56xf32>
    %cst_263 = arith.constant dense<0.015965e+00> : tensor<56x3x3x3xf32>
    %cst_264 = arith.constant 0.000000e+00 : f32
    %cst_265 = arith.constant 1.000000e-03 : f64
    %cst_266 = arith.constant 2.560000e+02 : f32
    %cst_267 = arith.constant 6.400000e+01 : f32
    %cst_268 = arith.constant 1.600000e+01 : f32
    %cst_269 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_270 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x56x16x16xf32>
    %1 = linalg.fill ins(%cst_264 : f32) outs(%0 : tensor<1x56x16x16xf32>) -> tensor<1x56x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_263 : tensor<1x3x34x34xf32>, tensor<56x3x3x3xf32>) outs(%1 : tensor<1x56x16x16xf32>) -> tensor<1x56x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x56x16x16xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>) outs(%2 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x56x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x56x16x16xf32>) outs(%0 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x56x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x56x16x16xf32>, tensor<1x56x16x16xf32>) outs(%0 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x56x16x16xf32>
    %padded_271 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x56x16x16xf32> to tensor<1x56x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_260 [[0, 1], [2], [3]] : tensor<56x1x3x3xf32> into tensor<56x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_271, %collapsed : tensor<1x56x18x18xf32>, tensor<56x3x3xf32>) outs(%1 : tensor<1x56x16x16xf32>) -> tensor<1x56x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x56x16x16xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>) outs(%7 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x56x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x56x16x16xf32>) outs(%0 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x56x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x56x16x16xf32>, tensor<1x56x16x16xf32>) outs(%0 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x56x16x16xf32>
    %11 = tensor.empty() : tensor<1x56x1x1xf32>
    %12 = linalg.fill ins(%cst_264 : f32) outs(%11 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x56x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x56x1x1xf32>) outs(%11 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_266 : f32
      linalg.yield %920 : f32
    } -> tensor<1x56x1x1xf32>
    %16 = tensor.empty() : tensor<1x14x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_259 : tensor<14xf32>) outs(%16 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_258 : tensor<1x56x1x1xf32>, tensor<14x56x1x1xf32>) outs(%17 : tensor<1x14x1x1xf32>) -> tensor<1x14x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x14x1x1xf32>) outs(%16 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x14x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x14x1x1xf32>, tensor<1x14x1x1xf32>) outs(%16 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x14x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_261 : tensor<56xf32>) outs(%11 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_257 : tensor<1x14x1x1xf32>, tensor<56x14x1x1xf32>) outs(%21 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x56x1x1xf32>) outs(%11 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x56x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x56x1x1xf32>, tensor<1x56x16x16xf32>) outs(%0 : tensor<1x56x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x56x16x16xf32>
    %25 = tensor.empty() : tensor<1x32x16x16xf32>
    %26 = linalg.fill ins(%cst_264 : f32) outs(%25 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_256 : tensor<1x56x16x16xf32>, tensor<32x56x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%27 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_272 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed_273 = tensor.collapse_shape %cst_253 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_272, %collapsed_273 : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%29 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x32x16x16xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x32x16x16xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x16x16xf32>
    %33 = tensor.empty() : tensor<1x32x1x1xf32>
    %34 = linalg.fill ins(%cst_264 : f32) outs(%33 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_266 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x1x1xf32>
    %37 = tensor.empty() : tensor<1x8x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_252 : tensor<8xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_251 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x8x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x8x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_254 : tensor<32xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_250 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%42 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x32x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_249 : tensor<1x32x16x16xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%46 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x32x16x16xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_274 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed_275 = tensor.collapse_shape %cst_248 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %49 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_274, %collapsed_275 : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %50 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%49 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x32x16x16xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x32x16x16xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %50 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x16x16xf32>
    %53 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_266 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x1x1xf32>
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_247 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x8x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %55 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x8x1x1xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%57, %cst_246 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%42 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x32x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %52 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x16x16xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %cst_245 : tensor<1x32x16x16xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %62 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%61 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x32x16x16xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %48 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x32x16x16xf32>
    %64 = tensor.empty() : tensor<1x192x16x16xf32>
    %65 = linalg.fill ins(%cst_264 : f32) outs(%64 : tensor<1x192x16x16xf32>) -> tensor<1x192x16x16xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %cst_244 : tensor<1x32x16x16xf32>, tensor<192x32x1x1xf32>) outs(%65 : tensor<1x192x16x16xf32>) -> tensor<1x192x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_243, %cst_242, %cst_242, %cst_243 : tensor<1x192x16x16xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%66 : tensor<1x192x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x192x16x16xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x192x16x16xf32>) outs(%64 : tensor<1x192x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x192x16x16xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %67 : tensor<1x192x16x16xf32>, tensor<1x192x16x16xf32>) outs(%64 : tensor<1x192x16x16xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x192x16x16xf32>
    %padded_276 = tensor.pad %69 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x192x16x16xf32> to tensor<1x192x18x18xf32>
    %70 = tensor.empty() : tensor<1x192x8x8xf32>
    %71 = linalg.fill ins(%cst_264 : f32) outs(%70 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %collapsed_277 = tensor.collapse_shape %cst_241 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %72 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_276, %collapsed_277 : tensor<1x192x18x18xf32>, tensor<192x3x3xf32>) outs(%71 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_243, %cst_242, %cst_242, %cst_243 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%72 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x192x8x8xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x192x8x8xf32>) outs(%70 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x192x8x8xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %73 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%70 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x192x8x8xf32>
    %76 = tensor.empty() : tensor<1x192x1x1xf32>
    %77 = linalg.fill ins(%cst_264 : f32) outs(%76 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %78 = tensor.empty() : tensor<8x8xf32>
    %79 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %78 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%77 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x192x1x1xf32>) outs(%76 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_267 : f32
      linalg.yield %920 : f32
    } -> tensor<1x192x1x1xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%80, %cst_240 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x8x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %81 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x8x1x1xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_242 : tensor<192xf32>) outs(%76 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x1x1xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%83, %cst_239 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%84 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %86 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<1x192x1x1xf32>) outs(%76 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x192x1x1xf32>
    %87 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %75 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%70 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x192x8x8xf32>
    %88 = tensor.empty() : tensor<1x40x8x8xf32>
    %89 = linalg.fill ins(%cst_264 : f32) outs(%88 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    %90 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_238 : tensor<1x192x8x8xf32>, tensor<40x192x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %91 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%90 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x40x8x8xf32>
    %92 = tensor.empty() : tensor<1x240x8x8xf32>
    %93 = linalg.fill ins(%cst_264 : f32) outs(%92 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %cst_235 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %95 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%94 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %95 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_278 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_279 = tensor.collapse_shape %cst_232 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %98 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_278, %collapsed_279 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %99 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%98 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %100 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %99 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %102 = tensor.empty() : tensor<1x240x1x1xf32>
    %103 = linalg.fill ins(%cst_264 : f32) outs(%102 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %104 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %105 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_267 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x1x1xf32>
    %106 = tensor.empty() : tensor<1x10x1x1xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_231 : tensor<10xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x10x1x1xf32>
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%105, %cst_230 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x10x1x1xf32>
    %110 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x10x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_233 : tensor<240xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_229 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %101 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %115 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%114, %cst_228 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %116 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%115 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x40x8x8xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %91 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x40x8x8xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_227 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%118 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %119 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_280 = tensor.pad %121 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_281 = tensor.collapse_shape %cst_226 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %122 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_280, %collapsed_281 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %123 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%122 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %123 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %126 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_267 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x1x1xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_225 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x10x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %128 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x10x1x1xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_224 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %125 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_223 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%134 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x40x8x8xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %117 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x40x8x8xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_222 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%137 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %138 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_282 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_283 = tensor.collapse_shape %cst_221 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_282, %collapsed_283 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%141 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %145 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_267 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x1x1xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_220 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x10x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %147 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x10x1x1xf32>
    %150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%149, %cst_219 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %144 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%152, %cst_218 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%153 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x40x8x8xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %136 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x40x8x8xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_217 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%156 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %157 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_284 = tensor.pad %159 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_285 = tensor.collapse_shape %cst_216 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %160 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_284, %collapsed_285 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%160 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %161 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %164 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_267 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x1x1xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_215 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x10x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %166 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x10x1x1xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %cst_214 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %163 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_213 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%172 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x40x8x8xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %155 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x40x8x8xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%174, %cst_212 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%175 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_286 = tensor.pad %178 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_287 = tensor.collapse_shape %cst_211 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %179 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_286, %collapsed_287 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%179 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %180 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %183 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%182, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_267 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x1x1xf32>
    %185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_210 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x10x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %185 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x10x1x1xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %cst_209 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %182 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_208 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%191 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x40x8x8xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %174 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x40x8x8xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_207 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%194 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x8x8xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x8x8xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %195 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_288 = tensor.pad %197 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x12x12xf32>
    %198 = tensor.empty() : tensor<1x240x4x4xf32>
    %199 = linalg.fill ins(%cst_264 : f32) outs(%198 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    %collapsed_289 = tensor.collapse_shape %cst_206 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %200 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_288, %collapsed_289 : tensor<1x240x12x12xf32>, tensor<240x5x5xf32>) outs(%199 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %201 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %cst_234, %cst_233, %cst_233, %cst_234 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%200 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x240x4x4xf32>
    %202 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x240x4x4xf32>) outs(%198 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x4x4xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %201 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%198 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x4x4xf32>
    %204 = tensor.empty() : tensor<4x4xf32>
    %205 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%203, %204 : tensor<1x240x4x4xf32>, tensor<4x4xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %206 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_268 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x1x1xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_205 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x10x1x1xf32>
    %209 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %207 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x10x1x1xf32>
    %210 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %cst_204 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %211 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x240x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %203 : tensor<1x240x1x1xf32>, tensor<1x240x4x4xf32>) outs(%198 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x240x4x4xf32>
    %213 = tensor.empty() : tensor<1x72x4x4xf32>
    %214 = linalg.fill ins(%cst_264 : f32) outs(%213 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_203 : tensor<1x240x4x4xf32>, tensor<72x240x1x1xf32>) outs(%214 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%215 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x72x4x4xf32>
    %217 = tensor.empty() : tensor<1x432x4x4xf32>
    %218 = linalg.fill ins(%cst_264 : f32) outs(%217 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %cst_200 : tensor<1x72x4x4xf32>, tensor<432x72x1x1xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%219 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %220 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %padded_290 = tensor.pad %222 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x432x4x4xf32> to tensor<1x432x8x8xf32>
    %collapsed_291 = tensor.collapse_shape %cst_197 [[0, 1], [2], [3]] : tensor<432x1x5x5xf32> into tensor<432x5x5xf32>
    %223 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_290, %collapsed_291 : tensor<1x432x8x8xf32>, tensor<432x5x5xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %224 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%223 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %224 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %227 = tensor.empty() : tensor<1x432x1x1xf32>
    %228 = linalg.fill ins(%cst_264 : f32) outs(%227 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %229 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %204 : tensor<1x432x4x4xf32>, tensor<4x4xf32>) outs(%228 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_268 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x1x1xf32>
    %231 = tensor.empty() : tensor<1x18x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_196 : tensor<18xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x18x1x1xf32>
    %233 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_195 : tensor<1x432x1x1xf32>, tensor<18x432x1x1xf32>) outs(%232 : tensor<1x18x1x1xf32>) -> tensor<1x18x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x18x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %233 : tensor<1x18x1x1xf32>, tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x18x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_198 : tensor<432xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x432x1x1xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %cst_194 : tensor<1x18x1x1xf32>, tensor<432x18x1x1xf32>) outs(%236 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %226 : tensor<1x432x1x1xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_193 : tensor<1x432x4x4xf32>, tensor<72x432x1x1xf32>) outs(%214 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%240 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x72x4x4xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %216 : tensor<1x72x4x4xf32>, tensor<1x72x4x4xf32>) outs(%213 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x72x4x4xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%242, %cst_192 : tensor<1x72x4x4xf32>, tensor<432x72x1x1xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %244 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%243 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %244 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %padded_292 = tensor.pad %246 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x432x4x4xf32> to tensor<1x432x8x8xf32>
    %collapsed_293 = tensor.collapse_shape %cst_191 [[0, 1], [2], [3]] : tensor<432x1x5x5xf32> into tensor<432x5x5xf32>
    %247 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_292, %collapsed_293 : tensor<1x432x8x8xf32>, tensor<432x5x5xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%247 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %248 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %251 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %204 : tensor<1x432x4x4xf32>, tensor<4x4xf32>) outs(%228 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %252 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_268 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x1x1xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%252, %cst_190 : tensor<1x432x1x1xf32>, tensor<18x432x1x1xf32>) outs(%232 : tensor<1x18x1x1xf32>) -> tensor<1x18x1x1xf32>
    %254 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x18x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %253 : tensor<1x18x1x1xf32>, tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x18x1x1xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_189 : tensor<1x18x1x1xf32>, tensor<432x18x1x1xf32>) outs(%236 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %250 : tensor<1x432x1x1xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%258, %cst_188 : tensor<1x432x4x4xf32>, tensor<72x432x1x1xf32>) outs(%214 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %260 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%259 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x72x4x4xf32>
    %261 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %242 : tensor<1x72x4x4xf32>, tensor<1x72x4x4xf32>) outs(%213 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x72x4x4xf32>
    %262 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%261, %cst_187 : tensor<1x72x4x4xf32>, tensor<432x72x1x1xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%262 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %265 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %263 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %padded_294 = tensor.pad %265 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x432x4x4xf32> to tensor<1x432x8x8xf32>
    %collapsed_295 = tensor.collapse_shape %cst_186 [[0, 1], [2], [3]] : tensor<432x1x5x5xf32> into tensor<432x5x5xf32>
    %266 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_294, %collapsed_295 : tensor<1x432x8x8xf32>, tensor<432x5x5xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %267 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%266 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %268 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %267 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %270 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %204 : tensor<1x432x4x4xf32>, tensor<4x4xf32>) outs(%228 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %271 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_268 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x1x1xf32>
    %272 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %cst_185 : tensor<1x432x1x1xf32>, tensor<18x432x1x1xf32>) outs(%232 : tensor<1x18x1x1xf32>) -> tensor<1x18x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x18x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %272 : tensor<1x18x1x1xf32>, tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x18x1x1xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_184 : tensor<1x18x1x1xf32>, tensor<432x18x1x1xf32>) outs(%236 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x1x1xf32>
    %277 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %269 : tensor<1x432x1x1xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%277, %cst_183 : tensor<1x432x4x4xf32>, tensor<72x432x1x1xf32>) outs(%214 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%278 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x72x4x4xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %261 : tensor<1x72x4x4xf32>, tensor<1x72x4x4xf32>) outs(%213 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x72x4x4xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %cst_182 : tensor<1x72x4x4xf32>, tensor<432x72x1x1xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%281 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %282 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %padded_296 = tensor.pad %284 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x432x4x4xf32> to tensor<1x432x8x8xf32>
    %collapsed_297 = tensor.collapse_shape %cst_181 [[0, 1], [2], [3]] : tensor<432x1x5x5xf32> into tensor<432x5x5xf32>
    %285 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_296, %collapsed_297 : tensor<1x432x8x8xf32>, tensor<432x5x5xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %286 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%285 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %288 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %286 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %289 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%288, %204 : tensor<1x432x4x4xf32>, tensor<4x4xf32>) outs(%228 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_268 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x1x1xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_180 : tensor<1x432x1x1xf32>, tensor<18x432x1x1xf32>) outs(%232 : tensor<1x18x1x1xf32>) -> tensor<1x18x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x18x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %291 : tensor<1x18x1x1xf32>, tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x18x1x1xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_179 : tensor<1x18x1x1xf32>, tensor<432x18x1x1xf32>) outs(%236 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %288 : tensor<1x432x1x1xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_178 : tensor<1x432x4x4xf32>, tensor<72x432x1x1xf32>) outs(%214 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %298 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%297 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x72x4x4xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %280 : tensor<1x72x4x4xf32>, tensor<1x72x4x4xf32>) outs(%213 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x72x4x4xf32>
    %300 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%299, %cst_177 : tensor<1x72x4x4xf32>, tensor<432x72x1x1xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%300 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %301 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %padded_298 = tensor.pad %303 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x432x4x4xf32> to tensor<1x432x8x8xf32>
    %collapsed_299 = tensor.collapse_shape %cst_176 [[0, 1], [2], [3]] : tensor<432x1x5x5xf32> into tensor<432x5x5xf32>
    %304 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_298, %collapsed_299 : tensor<1x432x8x8xf32>, tensor<432x5x5xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%304 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %305 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %308 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%307, %204 : tensor<1x432x4x4xf32>, tensor<4x4xf32>) outs(%228 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %309 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_268 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x1x1xf32>
    %310 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %cst_175 : tensor<1x432x1x1xf32>, tensor<18x432x1x1xf32>) outs(%232 : tensor<1x18x1x1xf32>) -> tensor<1x18x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x18x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %310 : tensor<1x18x1x1xf32>, tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x18x1x1xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%312, %cst_174 : tensor<1x18x1x1xf32>, tensor<432x18x1x1xf32>) outs(%236 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %307 : tensor<1x432x1x1xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %316 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%315, %cst_173 : tensor<1x432x4x4xf32>, tensor<72x432x1x1xf32>) outs(%214 : tensor<1x72x4x4xf32>) -> tensor<1x72x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %317 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x72x4x4xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%316 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x72x4x4xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %299 : tensor<1x72x4x4xf32>, tensor<1x72x4x4xf32>) outs(%213 : tensor<1x72x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x72x4x4xf32>
    %319 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%318, %cst_172 : tensor<1x72x4x4xf32>, tensor<432x72x1x1xf32>) outs(%218 : tensor<1x432x4x4xf32>) -> tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%319 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x4x4xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x4x4xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x432x4x4xf32>, tensor<1x432x4x4xf32>) outs(%217 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x4x4xf32>
    %padded_300 = tensor.pad %322 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x432x4x4xf32> to tensor<1x432x6x6xf32>
    %323 = tensor.empty() : tensor<1x432x2x2xf32>
    %324 = linalg.fill ins(%cst_264 : f32) outs(%323 : tensor<1x432x2x2xf32>) -> tensor<1x432x2x2xf32>
    %collapsed_301 = tensor.collapse_shape %cst_171 [[0, 1], [2], [3]] : tensor<432x1x3x3xf32> into tensor<432x3x3xf32>
    %325 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_300, %collapsed_301 : tensor<1x432x6x6xf32>, tensor<432x3x3xf32>) outs(%324 : tensor<1x432x2x2xf32>) -> tensor<1x432x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %326 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x432x2x2xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%325 : tensor<1x432x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x432x2x2xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x432x2x2xf32>) outs(%323 : tensor<1x432x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x2x2xf32>
    %328 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %326 : tensor<1x432x2x2xf32>, tensor<1x432x2x2xf32>) outs(%323 : tensor<1x432x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x2x2xf32>
    %329 = tensor.empty() : tensor<2x2xf32>
    %330 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %329 : tensor<1x432x2x2xf32>, tensor<2x2xf32>) outs(%228 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x1x1xf32>
    %332 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%331, %cst_170 : tensor<1x432x1x1xf32>, tensor<18x432x1x1xf32>) outs(%232 : tensor<1x18x1x1xf32>) -> tensor<1x18x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x18x1x1xf32>
    %334 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %332 : tensor<1x18x1x1xf32>, tensor<1x18x1x1xf32>) outs(%231 : tensor<1x18x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x18x1x1xf32>
    %335 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%334, %cst_169 : tensor<1x18x1x1xf32>, tensor<432x18x1x1xf32>) outs(%236 : tensor<1x432x1x1xf32>) -> tensor<1x432x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x432x1x1xf32>) outs(%227 : tensor<1x432x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x432x1x1xf32>
    %337 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %328 : tensor<1x432x1x1xf32>, tensor<1x432x2x2xf32>) outs(%323 : tensor<1x432x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x432x2x2xf32>
    %338 = tensor.empty() : tensor<1x144x2x2xf32>
    %339 = linalg.fill ins(%cst_264 : f32) outs(%338 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%337, %cst_168 : tensor<1x432x2x2xf32>, tensor<144x432x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%340 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %342 = tensor.empty() : tensor<1x864x2x2xf32>
    %343 = linalg.fill ins(%cst_264 : f32) outs(%342 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%341, %cst_165 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%344 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %345 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_302 = tensor.pad %347 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_303 = tensor.collapse_shape %cst_162 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %348 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_302, %collapsed_303 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %349 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%348 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %350 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %349 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %352 = tensor.empty() : tensor<1x864x1x1xf32>
    %353 = linalg.fill ins(%cst_264 : f32) outs(%352 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %354 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %356 = tensor.empty() : tensor<1x36x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_161 : tensor<36xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x36x1x1xf32>
    %358 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%355, %cst_160 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %359 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %358 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_163 : tensor<864xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x864x1x1xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %cst_159 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %363 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %351 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %365 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%364, %cst_158 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %366 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%365 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %367 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %341 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %368 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%367, %cst_157 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %369 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%368 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %369 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_304 = tensor.pad %371 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_305 = tensor.collapse_shape %cst_156 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %372 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_304, %collapsed_305 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %373 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%372 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %374 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %373 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %376 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%375, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %377 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_155 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %379 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %380 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %378 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %381 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%380, %cst_154 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %382 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %383 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %375 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %384 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%383, %cst_153 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %385 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%384 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %367 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_152 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%387 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %390 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %388 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_306 = tensor.pad %390 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_307 = tensor.collapse_shape %cst_151 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %391 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_306, %collapsed_307 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %392 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%391 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %393 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %394 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %392 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %395 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%394, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %396 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_150 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %398 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %399 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %397 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %400 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%399, %cst_149 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %402 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %394 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %403 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%402, %cst_148 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %404 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%403 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %405 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %386 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %406 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%405, %cst_147 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %407 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%406 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %408 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %409 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %407 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_308 = tensor.pad %409 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_309 = tensor.collapse_shape %cst_146 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %410 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_308, %collapsed_309 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %411 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%410 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %412 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %413 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412, %411 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %414 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%413, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %415 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %416 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%415, %cst_145 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %417 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %416 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %419 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%418, %cst_144 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %420 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %413 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %422 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%421, %cst_143 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %423 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%422 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %424 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %405 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %425 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%424, %cst_142 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %426 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%425 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %427 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %428 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %426 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_310 = tensor.pad %428 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_311 = tensor.collapse_shape %cst_141 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %429 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_310, %collapsed_311 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %430 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%429 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %431 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %432 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431, %430 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %433 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%432, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %434 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %435 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%434, %cst_140 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %437 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %435 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %438 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %cst_139 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %432 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %441 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_138 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %442 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%441 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %443 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %424 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %444 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%443, %cst_137 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %445 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%444 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %446 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %447 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %445 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_312 = tensor.pad %447 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_313 = tensor.collapse_shape %cst_136 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %448 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_312, %collapsed_313 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %449 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%448 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %450 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %451 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %449 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %452 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%451, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %453 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %454 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%453, %cst_135 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %455 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %456 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %454 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %457 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%456, %cst_134 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %458 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %459 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %451 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %460 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%459, %cst_133 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %461 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%460 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %462 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %443 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %463 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%462, %cst_132 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %464 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%463 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %465 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %466 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %464 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_314 = tensor.pad %466 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x4x4xf32>
    %collapsed_315 = tensor.collapse_shape %cst_131 [[0, 1], [2], [3]] : tensor<864x1x3x3xf32> into tensor<864x3x3xf32>
    %467 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_314, %collapsed_315 : tensor<1x864x4x4xf32>, tensor<864x3x3xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %468 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%467 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %469 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %468 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %471 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %472 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %473 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%472, %cst_130 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %474 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %475 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %473 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %476 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%475, %cst_129 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %477 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %478 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %470 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %479 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%478, %cst_128 : tensor<1x864x2x2xf32>, tensor<144x864x1x1xf32>) outs(%339 : tensor<1x144x2x2xf32>) -> tensor<1x144x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %480 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst_167, %cst_166, %cst_166, %cst_167 : tensor<1x144x2x2xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%479 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x144x2x2xf32>
    %481 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %462 : tensor<1x144x2x2xf32>, tensor<1x144x2x2xf32>) outs(%338 : tensor<1x144x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x2x2xf32>
    %482 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%481, %cst_127 : tensor<1x144x2x2xf32>, tensor<864x144x1x1xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %483 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%482 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %484 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %485 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %483 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %padded_316 = tensor.pad %485 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x864x2x2xf32> to tensor<1x864x6x6xf32>
    %collapsed_317 = tensor.collapse_shape %cst_126 [[0, 1], [2], [3]] : tensor<864x1x5x5xf32> into tensor<864x5x5xf32>
    %486 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_316, %collapsed_317 : tensor<1x864x6x6xf32>, tensor<864x5x5xf32>) outs(%343 : tensor<1x864x2x2xf32>) -> tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %487 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%486 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x864x2x2xf32>
    %488 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487 : tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x2x2xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %487 : tensor<1x864x2x2xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %490 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%489, %329 : tensor<1x864x2x2xf32>, tensor<2x2xf32>) outs(%353 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %491 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x1x1xf32>
    %492 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%491, %cst_125 : tensor<1x864x1x1xf32>, tensor<36x864x1x1xf32>) outs(%357 : tensor<1x36x1x1xf32>) -> tensor<1x36x1x1xf32>
    %493 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x36x1x1xf32>
    %494 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %492 : tensor<1x36x1x1xf32>, tensor<1x36x1x1xf32>) outs(%356 : tensor<1x36x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x36x1x1xf32>
    %495 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%494, %cst_124 : tensor<1x36x1x1xf32>, tensor<864x36x1x1xf32>) outs(%361 : tensor<1x864x1x1xf32>) -> tensor<1x864x1x1xf32>
    %496 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x864x1x1xf32>) outs(%352 : tensor<1x864x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x864x1x1xf32>
    %497 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %489 : tensor<1x864x1x1xf32>, tensor<1x864x2x2xf32>) outs(%342 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x864x2x2xf32>
    %498 = tensor.empty() : tensor<1x200x2x2xf32>
    %499 = linalg.fill ins(%cst_264 : f32) outs(%498 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    %500 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%497, %cst_123 : tensor<1x864x2x2xf32>, tensor<200x864x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %501 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%500 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %502 = tensor.empty() : tensor<1x1200x2x2xf32>
    %503 = linalg.fill ins(%cst_264 : f32) outs(%502 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    %504 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%501, %cst_120 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %505 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%504 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %506 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %507 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506, %505 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_318 = tensor.pad %507 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_319 = tensor.collapse_shape %cst_117 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %508 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_318, %collapsed_319 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %509 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%508 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %510 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %511 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %509 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %512 = tensor.empty() : tensor<1x1200x1x1xf32>
    %513 = linalg.fill ins(%cst_264 : f32) outs(%512 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %514 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%511, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %515 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %516 = tensor.empty() : tensor<1x50x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_116 : tensor<50xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x50x1x1xf32>
    %518 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%515, %cst_115 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %519 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %518 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_118 : tensor<1200xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1200x1x1xf32>
    %522 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%520, %cst_114 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %511 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_113 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%525 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %527 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %501 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%527, %cst_112 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %529 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%528 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %530 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %531 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %529 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_320 = tensor.pad %531 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_321 = tensor.collapse_shape %cst_111 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %532 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_320, %collapsed_321 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%532 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %534 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %535 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %533 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %536 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%535, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %537 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %538 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%537, %cst_110 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %540 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %538 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %541 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%540, %cst_109 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %542 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %535 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %544 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%543, %cst_108 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %545 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%544 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %546 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545, %527 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %547 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%546, %cst_107 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %548 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%547 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %549 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %550 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %548 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_322 = tensor.pad %550 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_323 = tensor.collapse_shape %cst_106 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %551 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_322, %collapsed_323 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %552 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%551 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %553 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %554 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %552 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %555 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%554, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %557 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%556, %cst_105 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %558 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %557 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %560 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %cst_104 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %561 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %562 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %554 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%562, %cst_103 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %564 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%563 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %565 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %546 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %566 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%565, %cst_102 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %567 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%566 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %568 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %569 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %567 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_324 = tensor.pad %569 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_325 = tensor.collapse_shape %cst_101 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %570 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_324, %collapsed_325 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %571 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%570 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %572 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %573 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %571 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %574 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%573, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %576 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%575, %cst_100 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %577 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %578 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %576 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %579 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%578, %cst_99 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %580 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %581 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %573 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %582 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%581, %cst_98 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %583 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%582 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %584 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %565 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %585 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%584, %cst_97 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %586 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%585 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %587 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %588 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587, %586 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_326 = tensor.pad %588 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_327 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %589 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_326, %collapsed_327 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %590 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%589 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %591 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %592 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591, %590 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %593 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%592, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %595 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%594, %cst_95 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %596 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %597 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %595 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %598 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%597, %cst_94 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %599 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %600 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %592 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %601 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%600, %cst_93 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %602 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%601 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %603 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %584 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %604 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%603, %cst_92 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %605 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%604 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %606 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %607 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %605 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_328 = tensor.pad %607 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_329 = tensor.collapse_shape %cst_91 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %608 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_328, %collapsed_329 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %609 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%608 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %610 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %611 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %609 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %612 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%611, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %613 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %614 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%613, %cst_90 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %616 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %614 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %617 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%616, %cst_89 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %618 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %619 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %611 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %620 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%619, %cst_88 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %621 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%620 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %622 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621, %603 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %623 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%622, %cst_87 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %624 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%623 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %625 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %626 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %624 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_330 = tensor.pad %626 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_331 = tensor.collapse_shape %cst_86 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %627 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_330, %collapsed_331 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %628 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%627 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %629 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %630 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629, %628 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %631 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%630, %329 : tensor<1x1200x2x2xf32>, tensor<2x2xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.divf %in, %cst_269 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %633 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%632, %cst_85 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %633 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %636 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_84 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %637 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %638 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %630 : tensor<1x1200x1x1xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %639 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%638, %cst_83 : tensor<1x1200x2x2xf32>, tensor<200x1200x1x1xf32>) outs(%499 : tensor<1x200x2x2xf32>) -> tensor<1x200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %640 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639, %cst_122, %cst_121, %cst_121, %cst_122 : tensor<1x200x2x2xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%639 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x200x2x2xf32>
    %641 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %622 : tensor<1x200x2x2xf32>, tensor<1x200x2x2xf32>) outs(%498 : tensor<1x200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x200x2x2xf32>
    %642 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%641, %cst_82 : tensor<1x200x2x2xf32>, tensor<1200x200x1x1xf32>) outs(%503 : tensor<1x1200x2x2xf32>) -> tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %643 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%642 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x2x2xf32>
    %644 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643 : tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x2x2xf32>
    %645 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %643 : tensor<1x1200x2x2xf32>, tensor<1x1200x2x2xf32>) outs(%502 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x2x2xf32>
    %padded_332 = tensor.pad %645 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x1200x2x2xf32> to tensor<1x1200x6x6xf32>
    %collapsed_333 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<1200x1x5x5xf32> into tensor<1200x5x5xf32>
    %646 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_332, %collapsed_333 : tensor<1x1200x6x6xf32>, tensor<1200x5x5xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %647 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1200x1x1xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%646 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x1200x1x1xf32>
    %648 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648, %647 : tensor<1x1200x1x1xf32>, tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %650 = tensor.empty() : tensor<1x1xf32>
    %651 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%649, %650 : tensor<1x1200x1x1xf32>, tensor<1x1xf32>) outs(%513 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %652 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%651, %cst_80 : tensor<1x1200x1x1xf32>, tensor<50x1200x1x1xf32>) outs(%517 : tensor<1x50x1x1xf32>) -> tensor<1x50x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x50x1x1xf32>
    %654 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653, %652 : tensor<1x50x1x1xf32>, tensor<1x50x1x1xf32>) outs(%516 : tensor<1x50x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x50x1x1xf32>
    %655 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%654, %cst_79 : tensor<1x50x1x1xf32>, tensor<1200x50x1x1xf32>) outs(%521 : tensor<1x1200x1x1xf32>) -> tensor<1x1200x1x1xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655 : tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x1200x1x1xf32>
    %657 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656, %649 : tensor<1x1200x1x1xf32>, tensor<1x1200x1x1xf32>) outs(%512 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1200x1x1xf32>
    %658 = tensor.empty() : tensor<1x344x1x1xf32>
    %659 = linalg.fill ins(%cst_264 : f32) outs(%658 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    %660 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%657, %cst_78 : tensor<1x1200x1x1xf32>, tensor<344x1200x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %661 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%660 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %662 = tensor.empty() : tensor<1x2064x1x1xf32>
    %663 = linalg.fill ins(%cst_264 : f32) outs(%662 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %664 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%661, %cst_75 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %665 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%664 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %666 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %667 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %665 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_334 = tensor.pad %667 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_335 = tensor.collapse_shape %cst_72 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %668 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_334, %collapsed_335 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %669 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%668 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %671 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670, %669 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %672 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%671, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %673 = tensor.empty() : tensor<1x86x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_71 : tensor<86xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x86x1x1xf32>
    %675 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%672, %cst_70 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %675 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %678 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_73 : tensor<2064xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2064x1x1xf32>
    %679 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%677, %cst_69 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %680 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %681 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680, %671 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %682 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%681, %cst_68 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %683 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%682 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %684 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %661 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %685 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%684, %cst_67 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %686 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%685 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %687 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %688 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %686 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_336 = tensor.pad %688 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_337 = tensor.collapse_shape %cst_66 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %689 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_336, %collapsed_337 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %690 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%689 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %692 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %690 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %693 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%692, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %694 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%693, %cst_65 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %695 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %696 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%695, %694 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %697 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%696, %cst_64 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %698 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %699 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698, %692 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %700 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%699, %cst_63 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %701 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%700 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %702 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %684 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %703 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%702, %cst_62 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %704 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%703 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %705 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %706 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %704 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_338 = tensor.pad %706 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_339 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %707 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_338, %collapsed_339 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %708 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%707 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %709 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %710 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709, %708 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %711 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%710, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %712 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%711, %cst_60 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %713 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %714 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713, %712 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %715 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%714, %cst_59 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %717 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716, %710 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %718 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%717, %cst_58 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %719 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%718 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %720 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719, %702 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %721 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%720, %cst_57 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %722 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%721 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %723 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %724 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723, %722 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_340 = tensor.pad %724 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_341 = tensor.collapse_shape %cst_56 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %725 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_340, %collapsed_341 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %726 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%725 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %727 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %728 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727, %726 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %729 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%728, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %730 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%729, %cst_55 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %731 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %732 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731, %730 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %733 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%732, %cst_54 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %734 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %735 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734, %728 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %736 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%735, %cst_53 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %737 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%736 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %738 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737, %720 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %739 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%738, %cst_52 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %740 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%739 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %742 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %740 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_342 = tensor.pad %742 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_343 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %743 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_342, %collapsed_343 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %744 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%743, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%743 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %745 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %746 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%745, %744 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %747 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%746, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %748 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%747, %cst_50 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %749 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %750 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749, %748 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %751 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%750, %cst_49 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %752 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %753 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %746 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %754 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%753, %cst_48 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %755 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%754 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %756 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755, %738 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %757 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%756, %cst_47 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %758 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%757 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %759 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %760 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%759, %758 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_344 = tensor.pad %760 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_345 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %761 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_344, %collapsed_345 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %762 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%761 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %763 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %764 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763, %762 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %765 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%764, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %766 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%765, %cst_45 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %767 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %768 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767, %766 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %769 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%768, %cst_44 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %770 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %771 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%770, %764 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %772 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%771, %cst_43 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %773 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%772 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %774 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773, %756 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %775 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%774, %cst_42 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %776 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%775 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %777 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %778 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %776 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_346 = tensor.pad %778 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_347 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %779 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_346, %collapsed_347 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %780 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%779 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %781 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %782 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781, %780 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %783 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%782, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %784 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%783, %cst_40 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %786 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%785, %784 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %787 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%786, %cst_39 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %788 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %789 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%788, %782 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %790 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%789, %cst_38 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %791 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%790 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %792 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791, %774 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %793 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%792, %cst_37 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %794 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%793 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %795 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %796 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795, %794 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_348 = tensor.pad %796 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_349 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %797 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_348, %collapsed_349 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %798 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%797 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %799 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %800 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %798 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %801 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%800, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %802 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%801, %cst_35 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %803 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%802 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %804 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%803, %802 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %805 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%804, %cst_34 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %806 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %807 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%806, %800 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %808 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%807, %cst_33 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %809 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%808 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %810 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%809, %792 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %811 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%810, %cst_32 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %812 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%811 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %813 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %814 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%813, %812 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_350 = tensor.pad %814 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_351 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %815 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_350, %collapsed_351 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %816 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%815 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %817 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %818 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817, %816 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %819 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%818, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %820 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%819, %cst_30 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %821 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %822 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%821, %820 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %823 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%822, %cst_29 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %824 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %825 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824, %818 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %826 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%825, %cst_28 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %827 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%826 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %828 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%827, %810 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %829 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%828, %cst_27 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %830 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%829 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %831 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%830 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %832 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831, %830 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_352 = tensor.pad %832 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x5x5xf32>
    %collapsed_353 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<2064x1x5x5xf32> into tensor<2064x5x5xf32>
    %833 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_352, %collapsed_353 : tensor<1x2064x5x5xf32>, tensor<2064x5x5xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %834 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%833 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %835 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %836 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835, %834 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %837 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%836, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %838 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%837, %cst_25 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %839 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %840 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839, %838 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %841 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%840, %cst_24 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %842 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%841 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %843 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842, %836 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %844 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%843, %cst_23 : tensor<1x2064x1x1xf32>, tensor<344x2064x1x1xf32>) outs(%659 : tensor<1x344x1x1xf32>) -> tensor<1x344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %845 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844, %cst_77, %cst_76, %cst_76, %cst_77 : tensor<1x344x1x1xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>, tensor<344xf32>) outs(%844 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x344x1x1xf32>
    %846 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%845, %828 : tensor<1x344x1x1xf32>, tensor<1x344x1x1xf32>) outs(%658 : tensor<1x344x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x344x1x1xf32>
    %847 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%846, %cst_22 : tensor<1x344x1x1xf32>, tensor<2064x344x1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %848 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%847 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %849 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %850 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %848 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %padded_354 = tensor.pad %850 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x2064x1x1xf32> to tensor<1x2064x3x3xf32>
    %collapsed_355 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<2064x1x3x3xf32> into tensor<2064x3x3xf32>
    %851 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_354, %collapsed_355 : tensor<1x2064x3x3xf32>, tensor<2064x3x3xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %852 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851, %cst_74, %cst_73, %cst_73, %cst_74 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%851 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2064x1x1xf32>
    %853 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %854 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %852 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %855 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%854, %650 : tensor<1x2064x1x1xf32>, tensor<1x1xf32>) outs(%663 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %856 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%855, %cst_20 : tensor<1x2064x1x1xf32>, tensor<86x2064x1x1xf32>) outs(%674 : tensor<1x86x1x1xf32>) -> tensor<1x86x1x1xf32>
    %857 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856 : tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x86x1x1xf32>
    %858 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857, %856 : tensor<1x86x1x1xf32>, tensor<1x86x1x1xf32>) outs(%673 : tensor<1x86x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x86x1x1xf32>
    %859 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%858, %cst_19 : tensor<1x86x1x1xf32>, tensor<2064x86x1x1xf32>) outs(%678 : tensor<1x2064x1x1xf32>) -> tensor<1x2064x1x1xf32>
    %860 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859 : tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2064x1x1xf32>
    %861 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%860, %854 : tensor<1x2064x1x1xf32>, tensor<1x2064x1x1xf32>) outs(%662 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2064x1x1xf32>
    %862 = tensor.empty() : tensor<1x576x1x1xf32>
    %863 = linalg.fill ins(%cst_264 : f32) outs(%862 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    %864 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%861, %cst_18 : tensor<1x2064x1x1xf32>, tensor<576x2064x1x1xf32>) outs(%863 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %865 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864, %cst_17, %cst_16, %cst_16, %cst_17 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%864 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x576x1x1xf32>
    %866 = tensor.empty() : tensor<1x3456x1x1xf32>
    %867 = linalg.fill ins(%cst_264 : f32) outs(%866 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    %868 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%865, %cst_15 : tensor<1x576x1x1xf32>, tensor<3456x576x1x1xf32>) outs(%867 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %869 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%868, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3456x1x1xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>) outs(%868 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x3456x1x1xf32>
    %870 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%869 : tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x3456x1x1xf32>
    %871 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%870, %869 : tensor<1x3456x1x1xf32>, tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x3456x1x1xf32>
    %padded_356 = tensor.pad %871 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x3456x1x1xf32> to tensor<1x3456x3x3xf32>
    %collapsed_357 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<3456x1x3x3xf32> into tensor<3456x3x3xf32>
    %872 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_356, %collapsed_357 : tensor<1x3456x3x3xf32>, tensor<3456x3x3xf32>) outs(%867 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %873 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%872, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3456x1x1xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>) outs(%872 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x3456x1x1xf32>
    %874 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873 : tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x3456x1x1xf32>
    %875 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %873 : tensor<1x3456x1x1xf32>, tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x3456x1x1xf32>
    %876 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%875, %650 : tensor<1x3456x1x1xf32>, tensor<1x1xf32>) outs(%867 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    %877 = tensor.empty() : tensor<1x144x1x1xf32>
    %878 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_166 : tensor<144xf32>) outs(%877 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %879 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%876, %cst_11 : tensor<1x3456x1x1xf32>, tensor<144x3456x1x1xf32>) outs(%878 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %880 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%879 : tensor<1x144x1x1xf32>) outs(%877 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x144x1x1xf32>
    %881 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880, %879 : tensor<1x144x1x1xf32>, tensor<1x144x1x1xf32>) outs(%877 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x1x1xf32>
    %882 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<3456xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3456x1x1xf32>
    %883 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%881, %cst_10 : tensor<1x144x1x1xf32>, tensor<3456x144x1x1xf32>) outs(%882 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    %884 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883 : tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x3456x1x1xf32>
    %885 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884, %875 : tensor<1x3456x1x1xf32>, tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x3456x1x1xf32>
    %886 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%885, %cst_9 : tensor<1x3456x1x1xf32>, tensor<576x3456x1x1xf32>) outs(%863 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %887 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %cst_17, %cst_16, %cst_16, %cst_17 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%886 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x576x1x1xf32>
    %888 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%887, %865 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%862 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x576x1x1xf32>
    %889 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%888, %cst_8 : tensor<1x576x1x1xf32>, tensor<3456x576x1x1xf32>) outs(%867 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %890 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%889, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3456x1x1xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>) outs(%889 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x3456x1x1xf32>
    %891 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%890 : tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x3456x1x1xf32>
    %892 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891, %890 : tensor<1x3456x1x1xf32>, tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x3456x1x1xf32>
    %padded_358 = tensor.pad %892 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x3456x1x1xf32> to tensor<1x3456x3x3xf32>
    %collapsed_359 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<3456x1x3x3xf32> into tensor<3456x3x3xf32>
    %893 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_358, %collapsed_359 : tensor<1x3456x3x3xf32>, tensor<3456x3x3xf32>) outs(%867 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %894 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%893, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3456x1x1xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>, tensor<3456xf32>) outs(%893 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x3456x1x1xf32>
    %895 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%894 : tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x3456x1x1xf32>
    %896 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%895, %894 : tensor<1x3456x1x1xf32>, tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x3456x1x1xf32>
    %897 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%896, %650 : tensor<1x3456x1x1xf32>, tensor<1x1xf32>) outs(%867 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    %898 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%897, %cst_6 : tensor<1x3456x1x1xf32>, tensor<144x3456x1x1xf32>) outs(%878 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %899 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898 : tensor<1x144x1x1xf32>) outs(%877 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x144x1x1xf32>
    %900 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%899, %898 : tensor<1x144x1x1xf32>, tensor<1x144x1x1xf32>) outs(%877 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x144x1x1xf32>
    %901 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%900, %cst_5 : tensor<1x144x1x1xf32>, tensor<3456x144x1x1xf32>) outs(%882 : tensor<1x3456x1x1xf32>) -> tensor<1x3456x1x1xf32>
    %902 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901 : tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x3456x1x1xf32>
    %903 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902, %896 : tensor<1x3456x1x1xf32>, tensor<1x3456x1x1xf32>) outs(%866 : tensor<1x3456x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x3456x1x1xf32>
    %904 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%903, %cst_4 : tensor<1x3456x1x1xf32>, tensor<576x3456x1x1xf32>) outs(%863 : tensor<1x576x1x1xf32>) -> tensor<1x576x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %905 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904, %cst_17, %cst_16, %cst_16, %cst_17 : tensor<1x576x1x1xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%904 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x576x1x1xf32>
    %906 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%905, %888 : tensor<1x576x1x1xf32>, tensor<1x576x1x1xf32>) outs(%862 : tensor<1x576x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x576x1x1xf32>
    %907 = tensor.empty() : tensor<1x2304x1x1xf32>
    %908 = linalg.fill ins(%cst_264 : f32) outs(%907 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %909 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%906, %cst_3 : tensor<1x576x1x1xf32>, tensor<2304x576x1x1xf32>) outs(%908 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %910 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%909 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %in_362: f32, %in_363: f32, %in_364: f32, %out: f32):
      %920 = arith.truncf %cst_265 : f64 to f32
      %921 = arith.addf %in_364, %920 : f32
      %922 = math.rsqrt %921 : f32
      %923 = arith.subf %in, %in_363 : f32
      %924 = arith.mulf %923, %922 : f32
      %925 = arith.mulf %924, %in_361 : f32
      %926 = arith.addf %925, %in_362 : f32
      linalg.yield %926 : f32
    } -> tensor<1x2304x1x1xf32>
    %911 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910 : tensor<1x2304x1x1xf32>) outs(%907 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %920 = arith.negf %in : f32
      %921 = math.exp %920 : f32
      %922 = arith.addf %921, %cst_270 : f32
      %923 = arith.divf %cst_270, %922 : f32
      linalg.yield %923 : f32
    } -> tensor<1x2304x1x1xf32>
    %912 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%911, %910 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%907 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.mulf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x2304x1x1xf32>
    %913 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%912, %650 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%908 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %collapsed_360 = tensor.collapse_shape %913 [[0], [1, 2, 3]] : tensor<1x2304x1x1xf32> into tensor<1x2304xf32>
    %914 = tensor.empty() : tensor<2304x1000xf32>
    %915 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2304xf32>) outs(%914 : tensor<2304x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2304x1000xf32>
    %916 = tensor.empty() : tensor<1x1000xf32>
    %917 = linalg.fill ins(%cst_264 : f32) outs(%916 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %918 = linalg.matmul ins(%collapsed_360, %915 : tensor<1x2304xf32>, tensor<2304x1000xf32>) outs(%917 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %919 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%918, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%916 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_361: f32, %out: f32):
      %920 = arith.addf %in, %in_361 : f32
      linalg.yield %920 : f32
    } -> tensor<1x1000xf32>
    return %919 : tensor<1x1000xf32>
  }
}
