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
    %cst = arith.constant dense<-0.010195e+00> : tensor<1000x2560xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2560xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<2560xf32>
    %cst_3 = arith.constant dense<-0.014295e+00> : tensor<2560x640x1x1xf32>
    %cst_4 = arith.constant dense<-0.010705e+00> : tensor<640x3840x1x1xf32>
    %cst_5 = arith.constant dense<0.007513e+00> : tensor<3840x160x1x1xf32>
    %cst_6 = arith.constant dense<0.010701e+00> : tensor<160x3840x1x1xf32>
    %cst_7 = arith.constant dense<0.005213e+00> : tensor<3840x1x3x3xf32>
    %cst_8 = arith.constant dense<0.002732e+00> : tensor<3840x640x1x1xf32>
    %cst_9 = arith.constant dense<-0.009250e+00> : tensor<640x3840x1x1xf32>
    %cst_10 = arith.constant dense<-0.001307e+00> : tensor<3840x160x1x1xf32>
    %cst_11 = arith.constant dense<0.008423e+00> : tensor<160x3840x1x1xf32>
    %cst_12 = arith.constant dense<0.004403e+00> : tensor<3840x1x3x3xf32>
    %cst_13 = arith.constant dense<0.002752e+00> : tensor<3840x640x1x1xf32>
    %cst_14 = arith.constant dense<0.003941e+00> : tensor<640x3840x1x1xf32>
    %cst_15 = arith.constant dense<0.010159e+00> : tensor<3840x160x1x1xf32>
    %cst_16 = arith.constant dense<-0.001324e+00> : tensor<160x3840x1x1xf32>
    %cst_17 = arith.constant dense<-0.004697e+00> : tensor<3840x1x3x3xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<3840xf32>
    %cst_19 = arith.constant dense<1.000000e+00> : tensor<3840xf32>
    %cst_20 = arith.constant dense<-0.003193e+00> : tensor<3840x640x1x1xf32>
    %cst_21 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_22 = arith.constant dense<1.000000e+00> : tensor<640xf32>
    %cst_23 = arith.constant dense<0.004810e+00> : tensor<640x2304x1x1xf32>
    %cst_24 = arith.constant dense<0.017008e+00> : tensor<2304x96x1x1xf32>
    %cst_25 = arith.constant dense<0.011711e+00> : tensor<96x2304x1x1xf32>
    %cst_26 = arith.constant dense<-0.006822e+00> : tensor<2304x1x3x3xf32>
    %cst_27 = arith.constant dense<0.006740e+00> : tensor<2304x384x1x1xf32>
    %cst_28 = arith.constant dense<0.018258e+00> : tensor<384x2304x1x1xf32>
    %cst_29 = arith.constant dense<0.002829e+00> : tensor<2304x96x1x1xf32>
    %cst_30 = arith.constant dense<-0.014776e+00> : tensor<96x2304x1x1xf32>
    %cst_31 = arith.constant dense<-0.006927e+00> : tensor<2304x1x5x5xf32>
    %cst_32 = arith.constant dense<0.002574e+00> : tensor<2304x384x1x1xf32>
    %cst_33 = arith.constant dense<-0.007224e+00> : tensor<384x2304x1x1xf32>
    %cst_34 = arith.constant dense<-0.003534e+00> : tensor<2304x96x1x1xf32>
    %cst_35 = arith.constant dense<0.003390e+00> : tensor<96x2304x1x1xf32>
    %cst_36 = arith.constant dense<0.011532e+00> : tensor<2304x1x5x5xf32>
    %cst_37 = arith.constant dense<0.006890e+00> : tensor<2304x384x1x1xf32>
    %cst_38 = arith.constant dense<-0.002679e+00> : tensor<384x2304x1x1xf32>
    %cst_39 = arith.constant dense<-0.010700e+00> : tensor<2304x96x1x1xf32>
    %cst_40 = arith.constant dense<0.014809e+00> : tensor<96x2304x1x1xf32>
    %cst_41 = arith.constant dense<0.008594e+00> : tensor<2304x1x5x5xf32>
    %cst_42 = arith.constant dense<-0.027971e+00> : tensor<2304x384x1x1xf32>
    %cst_43 = arith.constant dense<0.008766e+00> : tensor<384x2304x1x1xf32>
    %cst_44 = arith.constant dense<-0.000881e+00> : tensor<2304x96x1x1xf32>
    %cst_45 = arith.constant dense<-0.001567e+00> : tensor<96x2304x1x1xf32>
    %cst_46 = arith.constant dense<-0.009275e+00> : tensor<2304x1x5x5xf32>
    %cst_47 = arith.constant dense<0.006272e+00> : tensor<2304x384x1x1xf32>
    %cst_48 = arith.constant dense<-0.000864e+00> : tensor<384x2304x1x1xf32>
    %cst_49 = arith.constant dense<-0.011311e+00> : tensor<2304x96x1x1xf32>
    %cst_50 = arith.constant dense<0.006843e+00> : tensor<96x2304x1x1xf32>
    %cst_51 = arith.constant dense<0.002566e+00> : tensor<2304x1x5x5xf32>
    %cst_52 = arith.constant dense<-0.008564e+00> : tensor<2304x384x1x1xf32>
    %cst_53 = arith.constant dense<0.007966e+00> : tensor<384x2304x1x1xf32>
    %cst_54 = arith.constant dense<-0.003214e+00> : tensor<2304x96x1x1xf32>
    %cst_55 = arith.constant dense<-0.014556e+00> : tensor<96x2304x1x1xf32>
    %cst_56 = arith.constant dense<-0.002049e+00> : tensor<2304x1x5x5xf32>
    %cst_57 = arith.constant dense<0.000182e+00> : tensor<2304x384x1x1xf32>
    %cst_58 = arith.constant dense<0.004572e+00> : tensor<384x2304x1x1xf32>
    %cst_59 = arith.constant dense<0.004661e+00> : tensor<2304x96x1x1xf32>
    %cst_60 = arith.constant dense<-0.003216e+00> : tensor<96x2304x1x1xf32>
    %cst_61 = arith.constant dense<0.008567e+00> : tensor<2304x1x5x5xf32>
    %cst_62 = arith.constant dense<0.005452e+00> : tensor<2304x384x1x1xf32>
    %cst_63 = arith.constant dense<0.003931e+00> : tensor<384x2304x1x1xf32>
    %cst_64 = arith.constant dense<0.007492e+00> : tensor<2304x96x1x1xf32>
    %cst_65 = arith.constant dense<0.007035e+00> : tensor<96x2304x1x1xf32>
    %cst_66 = arith.constant dense<-0.000289e+00> : tensor<2304x1x5x5xf32>
    %cst_67 = arith.constant dense<-0.013198e+00> : tensor<2304x384x1x1xf32>
    %cst_68 = arith.constant dense<-0.014456e+00> : tensor<384x2304x1x1xf32>
    %cst_69 = arith.constant dense<-0.009145e+00> : tensor<2304x96x1x1xf32>
    %cst_70 = arith.constant dense<-0.008746e+00> : tensor<96x2304x1x1xf32>
    %cst_71 = arith.constant dense<0.015981e+00> : tensor<2304x1x5x5xf32>
    %cst_72 = arith.constant dense<0.002683e+00> : tensor<2304x384x1x1xf32>
    %cst_73 = arith.constant dense<-0.008613e+00> : tensor<384x2304x1x1xf32>
    %cst_74 = arith.constant dense<-0.020595e+00> : tensor<2304x96x1x1xf32>
    %cst_75 = arith.constant dense<-0.006997e+00> : tensor<96x2304x1x1xf32>
    %cst_76 = arith.constant dense<-0.001268e+00> : tensor<2304x1x5x5xf32>
    %cst_77 = arith.constant dense<-0.011433e+00> : tensor<2304x384x1x1xf32>
    %cst_78 = arith.constant dense<0.012702e+00> : tensor<384x2304x1x1xf32>
    %cst_79 = arith.constant dense<0.015073e+00> : tensor<2304x96x1x1xf32>
    %cst_80 = arith.constant dense<0.005403e+00> : tensor<96x2304x1x1xf32>
    %cst_81 = arith.constant dense<-0.002452e+00> : tensor<2304x1x5x5xf32>
    %cst_82 = arith.constant dense<-0.010483e+00> : tensor<2304x384x1x1xf32>
    %cst_83 = arith.constant dense<-0.016001e+00> : tensor<384x2304x1x1xf32>
    %cst_84 = arith.constant dense<0.004554e+00> : tensor<2304x96x1x1xf32>
    %cst_85 = arith.constant dense<0.000698e+00> : tensor<96x2304x1x1xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_87 = arith.constant dense<0.009024e+00> : tensor<2304x1x5x5xf32>
    %cst_88 = arith.constant dense<0.000000e+00> : tensor<2304xf32>
    %cst_89 = arith.constant dense<1.000000e+00> : tensor<2304xf32>
    %cst_90 = arith.constant dense<-0.022286e+00> : tensor<2304x384x1x1xf32>
    %cst_91 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_92 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_93 = arith.constant dense<-0.012511e+00> : tensor<384x1344x1x1xf32>
    %cst_94 = arith.constant dense<-0.000263e+00> : tensor<1344x56x1x1xf32>
    %cst_95 = arith.constant dense<-0.002425e+00> : tensor<56x1344x1x1xf32>
    %cst_96 = arith.constant dense<0.013425e+00> : tensor<1344x1x5x5xf32>
    %cst_97 = arith.constant dense<0.006665e+00> : tensor<1344x224x1x1xf32>
    %cst_98 = arith.constant dense<0.003844e+00> : tensor<224x1344x1x1xf32>
    %cst_99 = arith.constant dense<-0.001056e+00> : tensor<1344x56x1x1xf32>
    %cst_100 = arith.constant dense<-0.008279e+00> : tensor<56x1344x1x1xf32>
    %cst_101 = arith.constant dense<-0.007693e+00> : tensor<1344x1x5x5xf32>
    %cst_102 = arith.constant dense<0.003389e+00> : tensor<1344x224x1x1xf32>
    %cst_103 = arith.constant dense<-0.001459e+00> : tensor<224x1344x1x1xf32>
    %cst_104 = arith.constant dense<-0.004988e+00> : tensor<1344x56x1x1xf32>
    %cst_105 = arith.constant dense<0.000916e+00> : tensor<56x1344x1x1xf32>
    %cst_106 = arith.constant dense<-0.009976e+00> : tensor<1344x1x5x5xf32>
    %cst_107 = arith.constant dense<-0.001740e+00> : tensor<1344x224x1x1xf32>
    %cst_108 = arith.constant dense<-0.003167e+00> : tensor<224x1344x1x1xf32>
    %cst_109 = arith.constant dense<0.007021e+00> : tensor<1344x56x1x1xf32>
    %cst_110 = arith.constant dense<0.015680e+00> : tensor<56x1344x1x1xf32>
    %cst_111 = arith.constant dense<-0.020658e+00> : tensor<1344x1x5x5xf32>
    %cst_112 = arith.constant dense<0.031609e+00> : tensor<1344x224x1x1xf32>
    %cst_113 = arith.constant dense<-0.007615e+00> : tensor<224x1344x1x1xf32>
    %cst_114 = arith.constant dense<-0.009481e+00> : tensor<1344x56x1x1xf32>
    %cst_115 = arith.constant dense<0.003211e+00> : tensor<56x1344x1x1xf32>
    %cst_116 = arith.constant dense<-0.001374e+00> : tensor<1344x1x5x5xf32>
    %cst_117 = arith.constant dense<-0.011616e+00> : tensor<1344x224x1x1xf32>
    %cst_118 = arith.constant dense<0.014171e+00> : tensor<224x1344x1x1xf32>
    %cst_119 = arith.constant dense<0.006337e+00> : tensor<1344x56x1x1xf32>
    %cst_120 = arith.constant dense<0.007241e+00> : tensor<56x1344x1x1xf32>
    %cst_121 = arith.constant dense<-0.022576e+00> : tensor<1344x1x5x5xf32>
    %cst_122 = arith.constant dense<-0.014066e+00> : tensor<1344x224x1x1xf32>
    %cst_123 = arith.constant dense<0.003614e+00> : tensor<224x1344x1x1xf32>
    %cst_124 = arith.constant dense<-0.003168e+00> : tensor<1344x56x1x1xf32>
    %cst_125 = arith.constant dense<0.001089e+00> : tensor<56x1344x1x1xf32>
    %cst_126 = arith.constant dense<-0.008443e+00> : tensor<1344x1x5x5xf32>
    %cst_127 = arith.constant dense<0.010027e+00> : tensor<1344x224x1x1xf32>
    %cst_128 = arith.constant dense<-0.016166e+00> : tensor<224x1344x1x1xf32>
    %cst_129 = arith.constant dense<-0.010308e+00> : tensor<1344x56x1x1xf32>
    %cst_130 = arith.constant dense<0.005088e+00> : tensor<56x1344x1x1xf32>
    %cst_131 = arith.constant dense<0.001175e+00> : tensor<1344x1x5x5xf32>
    %cst_132 = arith.constant dense<-0.008006e+00> : tensor<1344x224x1x1xf32>
    %cst_133 = arith.constant dense<0.009855e+00> : tensor<224x1344x1x1xf32>
    %cst_134 = arith.constant dense<-0.015554e+00> : tensor<1344x56x1x1xf32>
    %cst_135 = arith.constant dense<-0.005092e+00> : tensor<56x1344x1x1xf32>
    %cst_136 = arith.constant dense<-0.007290e+00> : tensor<1344x1x5x5xf32>
    %cst_137 = arith.constant dense<-0.003883e+00> : tensor<1344x224x1x1xf32>
    %cst_138 = arith.constant dense<-0.007833e+00> : tensor<224x1344x1x1xf32>
    %cst_139 = arith.constant dense<-0.009286e+00> : tensor<1344x56x1x1xf32>
    %cst_140 = arith.constant dense<0.003021e+00> : tensor<56x1344x1x1xf32>
    %cst_141 = arith.constant dense<0.000000e+00> : tensor<56xf32>
    %cst_142 = arith.constant dense<-0.012772e+00> : tensor<1344x1x5x5xf32>
    %cst_143 = arith.constant dense<0.000000e+00> : tensor<1344xf32>
    %cst_144 = arith.constant dense<1.000000e+00> : tensor<1344xf32>
    %cst_145 = arith.constant dense<-0.008908e+00> : tensor<1344x224x1x1xf32>
    %cst_146 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_147 = arith.constant dense<1.000000e+00> : tensor<224xf32>
    %cst_148 = arith.constant dense<-0.004336e+00> : tensor<224x960x1x1xf32>
    %cst_149 = arith.constant dense<-0.000988e+00> : tensor<960x40x1x1xf32>
    %cst_150 = arith.constant dense<0.005481e+00> : tensor<40x960x1x1xf32>
    %cst_151 = arith.constant dense<-0.022833e+00> : tensor<960x1x5x5xf32>
    %cst_152 = arith.constant dense<-0.005503e+00> : tensor<960x160x1x1xf32>
    %cst_153 = arith.constant dense<0.006907e+00> : tensor<160x960x1x1xf32>
    %cst_154 = arith.constant dense<0.011886e+00> : tensor<960x40x1x1xf32>
    %cst_155 = arith.constant dense<0.011079e+00> : tensor<40x960x1x1xf32>
    %cst_156 = arith.constant dense<0.019979e+00> : tensor<960x1x3x3xf32>
    %cst_157 = arith.constant dense<-0.007008e+00> : tensor<960x160x1x1xf32>
    %cst_158 = arith.constant dense<-0.009368e+00> : tensor<160x960x1x1xf32>
    %cst_159 = arith.constant dense<0.008093e+00> : tensor<960x40x1x1xf32>
    %cst_160 = arith.constant dense<0.002312e+00> : tensor<40x960x1x1xf32>
    %cst_161 = arith.constant dense<-0.004980e+00> : tensor<960x1x3x3xf32>
    %cst_162 = arith.constant dense<-0.003746e+00> : tensor<960x160x1x1xf32>
    %cst_163 = arith.constant dense<-0.003774e+00> : tensor<160x960x1x1xf32>
    %cst_164 = arith.constant dense<-0.001594e+00> : tensor<960x40x1x1xf32>
    %cst_165 = arith.constant dense<-0.015999e+00> : tensor<40x960x1x1xf32>
    %cst_166 = arith.constant dense<-0.014386e+00> : tensor<960x1x3x3xf32>
    %cst_167 = arith.constant dense<-0.002006e+00> : tensor<960x160x1x1xf32>
    %cst_168 = arith.constant dense<0.010452e+00> : tensor<160x960x1x1xf32>
    %cst_169 = arith.constant dense<-0.003132e+00> : tensor<960x40x1x1xf32>
    %cst_170 = arith.constant dense<0.000135e+00> : tensor<40x960x1x1xf32>
    %cst_171 = arith.constant dense<-0.006781e+00> : tensor<960x1x3x3xf32>
    %cst_172 = arith.constant dense<-0.005423e+00> : tensor<960x160x1x1xf32>
    %cst_173 = arith.constant dense<0.004696e+00> : tensor<160x960x1x1xf32>
    %cst_174 = arith.constant dense<-0.013435e+00> : tensor<960x40x1x1xf32>
    %cst_175 = arith.constant dense<0.025311e+00> : tensor<40x960x1x1xf32>
    %cst_176 = arith.constant dense<-0.001527e+00> : tensor<960x1x3x3xf32>
    %cst_177 = arith.constant dense<-0.006107e+00> : tensor<960x160x1x1xf32>
    %cst_178 = arith.constant dense<0.002379e+00> : tensor<160x960x1x1xf32>
    %cst_179 = arith.constant dense<-0.001005e+00> : tensor<960x40x1x1xf32>
    %cst_180 = arith.constant dense<0.002148e+00> : tensor<40x960x1x1xf32>
    %cst_181 = arith.constant dense<-0.007145e+00> : tensor<960x1x3x3xf32>
    %cst_182 = arith.constant dense<0.004412e+00> : tensor<960x160x1x1xf32>
    %cst_183 = arith.constant dense<-0.004332e+00> : tensor<160x960x1x1xf32>
    %cst_184 = arith.constant dense<0.016574e+00> : tensor<960x40x1x1xf32>
    %cst_185 = arith.constant dense<-0.008136e+00> : tensor<40x960x1x1xf32>
    %cst_186 = arith.constant dense<0.003303e+00> : tensor<960x1x3x3xf32>
    %cst_187 = arith.constant dense<-0.012334e+00> : tensor<960x160x1x1xf32>
    %cst_188 = arith.constant dense<-0.000810e+00> : tensor<160x960x1x1xf32>
    %cst_189 = arith.constant dense<-0.003277e+00> : tensor<960x40x1x1xf32>
    %cst_190 = arith.constant dense<0.014025e+00> : tensor<40x960x1x1xf32>
    %cst_191 = arith.constant dense<-0.005364e+00> : tensor<960x1x3x3xf32>
    %cst_192 = arith.constant dense<0.000934e+00> : tensor<960x160x1x1xf32>
    %cst_193 = arith.constant dense<0.000352e+00> : tensor<160x960x1x1xf32>
    %cst_194 = arith.constant dense<0.008129e+00> : tensor<960x40x1x1xf32>
    %cst_195 = arith.constant dense<0.008921e+00> : tensor<40x960x1x1xf32>
    %cst_196 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_197 = arith.constant dense<0.015485e+00> : tensor<960x1x3x3xf32>
    %cst_198 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_199 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_200 = arith.constant dense<0.003230e+00> : tensor<960x160x1x1xf32>
    %cst_201 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_202 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_203 = arith.constant dense<-0.013573e+00> : tensor<160x480x1x1xf32>
    %cst_204 = arith.constant dense<-0.010238e+00> : tensor<480x20x1x1xf32>
    %cst_205 = arith.constant dense<0.017201e+00> : tensor<20x480x1x1xf32>
    %cst_206 = arith.constant dense<-0.009459e+00> : tensor<480x1x3x3xf32>
    %cst_207 = arith.constant dense<-0.004091e+00> : tensor<480x80x1x1xf32>
    %cst_208 = arith.constant dense<0.004363e+00> : tensor<80x480x1x1xf32>
    %cst_209 = arith.constant dense<-0.001775e+00> : tensor<480x20x1x1xf32>
    %cst_210 = arith.constant dense<0.018405e+00> : tensor<20x480x1x1xf32>
    %cst_211 = arith.constant dense<0.022729e+00> : tensor<480x1x5x5xf32>
    %cst_212 = arith.constant dense<-0.008358e+00> : tensor<480x80x1x1xf32>
    %cst_213 = arith.constant dense<-0.011713e+00> : tensor<80x480x1x1xf32>
    %cst_214 = arith.constant dense<0.010573e+00> : tensor<480x20x1x1xf32>
    %cst_215 = arith.constant dense<0.006309e+00> : tensor<20x480x1x1xf32>
    %cst_216 = arith.constant dense<-0.023731e+00> : tensor<480x1x5x5xf32>
    %cst_217 = arith.constant dense<-0.002336e+00> : tensor<480x80x1x1xf32>
    %cst_218 = arith.constant dense<-0.005492e+00> : tensor<80x480x1x1xf32>
    %cst_219 = arith.constant dense<-0.006834e+00> : tensor<480x20x1x1xf32>
    %cst_220 = arith.constant dense<-0.015010e+00> : tensor<20x480x1x1xf32>
    %cst_221 = arith.constant dense<-0.004940e+00> : tensor<480x1x5x5xf32>
    %cst_222 = arith.constant dense<-0.006417e+00> : tensor<480x80x1x1xf32>
    %cst_223 = arith.constant dense<-0.004572e+00> : tensor<80x480x1x1xf32>
    %cst_224 = arith.constant dense<-0.014159e+00> : tensor<480x20x1x1xf32>
    %cst_225 = arith.constant dense<0.001426e+00> : tensor<20x480x1x1xf32>
    %cst_226 = arith.constant dense<-0.004156e+00> : tensor<480x1x5x5xf32>
    %cst_227 = arith.constant dense<0.007446e+00> : tensor<480x80x1x1xf32>
    %cst_228 = arith.constant dense<-0.012822e+00> : tensor<80x480x1x1xf32>
    %cst_229 = arith.constant dense<-0.001649e+00> : tensor<480x20x1x1xf32>
    %cst_230 = arith.constant dense<-0.005683e+00> : tensor<20x480x1x1xf32>
    %cst_231 = arith.constant dense<-0.002997e+00> : tensor<480x1x5x5xf32>
    %cst_232 = arith.constant dense<0.012919e+00> : tensor<480x80x1x1xf32>
    %cst_233 = arith.constant dense<0.010731e+00> : tensor<80x480x1x1xf32>
    %cst_234 = arith.constant dense<0.011724e+00> : tensor<480x20x1x1xf32>
    %cst_235 = arith.constant dense<0.002750e+00> : tensor<20x480x1x1xf32>
    %cst_236 = arith.constant dense<0.000000e+00> : tensor<20xf32>
    %cst_237 = arith.constant dense<0.002144e+00> : tensor<480x1x5x5xf32>
    %cst_238 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_239 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_240 = arith.constant dense<-0.013011e+00> : tensor<480x80x1x1xf32>
    %cst_241 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_242 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_243 = arith.constant dense<0.001286e+00> : tensor<80x288x1x1xf32>
    %cst_244 = arith.constant dense<0.000999e+00> : tensor<288x12x1x1xf32>
    %cst_245 = arith.constant dense<-0.004271e+00> : tensor<12x288x1x1xf32>
    %cst_246 = arith.constant dense<0.007987e+00> : tensor<288x1x5x5xf32>
    %cst_247 = arith.constant dense<0.004856e+00> : tensor<288x48x1x1xf32>
    %cst_248 = arith.constant dense<0.022769e+00> : tensor<48x288x1x1xf32>
    %cst_249 = arith.constant dense<0.009981e+00> : tensor<288x12x1x1xf32>
    %cst_250 = arith.constant dense<0.000878e+00> : tensor<12x288x1x1xf32>
    %cst_251 = arith.constant dense<0.019979e+00> : tensor<288x1x3x3xf32>
    %cst_252 = arith.constant dense<-0.001790e+00> : tensor<288x48x1x1xf32>
    %cst_253 = arith.constant dense<-0.003095e+00> : tensor<48x288x1x1xf32>
    %cst_254 = arith.constant dense<0.002978e+00> : tensor<288x12x1x1xf32>
    %cst_255 = arith.constant dense<-0.014005e+00> : tensor<12x288x1x1xf32>
    %cst_256 = arith.constant dense<-0.003900e+00> : tensor<288x1x3x3xf32>
    %cst_257 = arith.constant dense<0.000806e+00> : tensor<288x48x1x1xf32>
    %cst_258 = arith.constant dense<-0.003490e+00> : tensor<48x288x1x1xf32>
    %cst_259 = arith.constant dense<-0.014738e+00> : tensor<288x12x1x1xf32>
    %cst_260 = arith.constant dense<0.012753e+00> : tensor<12x288x1x1xf32>
    %cst_261 = arith.constant dense<-0.007356e+00> : tensor<288x1x3x3xf32>
    %cst_262 = arith.constant dense<-0.002392e+00> : tensor<288x48x1x1xf32>
    %cst_263 = arith.constant dense<0.008405e+00> : tensor<48x288x1x1xf32>
    %cst_264 = arith.constant dense<-0.002450e+00> : tensor<288x12x1x1xf32>
    %cst_265 = arith.constant dense<-0.019404e+00> : tensor<12x288x1x1xf32>
    %cst_266 = arith.constant dense<0.003260e+00> : tensor<288x1x3x3xf32>
    %cst_267 = arith.constant dense<-0.014208e+00> : tensor<288x48x1x1xf32>
    %cst_268 = arith.constant dense<-0.002685e+00> : tensor<48x288x1x1xf32>
    %cst_269 = arith.constant dense<-0.000679e+00> : tensor<288x12x1x1xf32>
    %cst_270 = arith.constant dense<0.011018e+00> : tensor<12x288x1x1xf32>
    %cst_271 = arith.constant dense<-0.012355e+00> : tensor<288x1x3x3xf32>
    %cst_272 = arith.constant dense<-0.016651e+00> : tensor<288x48x1x1xf32>
    %cst_273 = arith.constant dense<-0.006922e+00> : tensor<48x288x1x1xf32>
    %cst_274 = arith.constant dense<-0.012448e+00> : tensor<288x12x1x1xf32>
    %cst_275 = arith.constant dense<-0.005701e+00> : tensor<12x288x1x1xf32>
    %cst_276 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_277 = arith.constant dense<-0.006889e+00> : tensor<288x1x3x3xf32>
    %cst_278 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_279 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_280 = arith.constant dense<0.006752e+00> : tensor<288x48x1x1xf32>
    %cst_281 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_282 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_283 = arith.constant dense<-0.005332e+00> : tensor<48x192x1x1xf32>
    %cst_284 = arith.constant dense<0.001422e+00> : tensor<192x8x1x1xf32>
    %cst_285 = arith.constant dense<0.000050e+00> : tensor<8x192x1x1xf32>
    %cst_286 = arith.constant dense<-0.007213e+00> : tensor<192x1x3x3xf32>
    %cst_287 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_288 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_289 = arith.constant dense<0.006329e+00> : tensor<192x32x1x1xf32>
    %cst_290 = arith.constant dense<0.023636e+00> : tensor<32x32x1x1xf32>
    %cst_291 = arith.constant dense<-0.023151e+00> : tensor<32x8x1x1xf32>
    %cst_292 = arith.constant dense<0.001709e+00> : tensor<8x32x1x1xf32>
    %cst_293 = arith.constant dense<-0.002981e+00> : tensor<32x1x3x3xf32>
    %cst_294 = arith.constant dense<-0.002406e+00> : tensor<32x32x1x1xf32>
    %cst_295 = arith.constant dense<0.003083e+00> : tensor<32x8x1x1xf32>
    %cst_296 = arith.constant dense<-0.008525e+00> : tensor<8x32x1x1xf32>
    %cst_297 = arith.constant dense<-0.005676e+00> : tensor<32x1x3x3xf32>
    %cst_298 = arith.constant dense<0.010860e+00> : tensor<32x32x1x1xf32>
    %cst_299 = arith.constant dense<-0.000507e+00> : tensor<32x8x1x1xf32>
    %cst_300 = arith.constant dense<-0.007360e+00> : tensor<8x32x1x1xf32>
    %cst_301 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_302 = arith.constant dense<0.003059e+00> : tensor<32x1x3x3xf32>
    %cst_303 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_304 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_305 = arith.constant dense<-0.002629e+00> : tensor<32x64x1x1xf32>
    %cst_306 = arith.constant dense<0.015702e+00> : tensor<64x16x1x1xf32>
    %cst_307 = arith.constant dense<-0.002510e+00> : tensor<16x64x1x1xf32>
    %cst_308 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_309 = arith.constant dense<-0.004202e+00> : tensor<64x1x3x3xf32>
    %cst_310 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_311 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_312 = arith.constant dense<0.003786e+00> : tensor<64x3x3x3xf32>
    %cst_313 = arith.constant 0.000000e+00 : f32
    %cst_314 = arith.constant 1.000000e-03 : f64
    %cst_315 = arith.constant 2.560000e+02 : f32
    %cst_316 = arith.constant 6.400000e+01 : f32
    %cst_317 = arith.constant 1.600000e+01 : f32
    %cst_318 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_319 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_313 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_312 : tensor<1x3x34x34xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_311, %cst_310, %cst_310, %cst_311 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x64x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x64x16x16xf32>, tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_320 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_309 [[0, 1], [2], [3]] : tensor<64x1x3x3xf32> into tensor<64x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_320, %collapsed : tensor<1x64x18x18xf32>, tensor<64x3x3xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_311, %cst_310, %cst_310, %cst_311 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%7 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x64x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x64x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x64x16x16xf32>, tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x64x16x16xf32>
    %11 = tensor.empty() : tensor<1x64x1x1xf32>
    %12 = linalg.fill ins(%cst_313 : f32) outs(%11 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x64x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x1x1xf32>) outs(%11 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_315 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x64x1x1xf32>
    %16 = tensor.empty() : tensor<1x16x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_308 : tensor<16xf32>) outs(%16 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_307 : tensor<1x64x1x1xf32>, tensor<16x64x1x1xf32>) outs(%17 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x16x1x1xf32>) outs(%16 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x16x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%16 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x16x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_310 : tensor<64xf32>) outs(%11 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_306 : tensor<1x16x1x1xf32>, tensor<64x16x1x1xf32>) outs(%21 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x64x1x1xf32>) outs(%11 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x64x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x64x1x1xf32>, tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x64x16x16xf32>
    %25 = tensor.empty() : tensor<1x32x16x16xf32>
    %26 = linalg.fill ins(%cst_313 : f32) outs(%25 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_305 : tensor<1x64x16x16xf32>, tensor<32x64x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%27 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_321 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed_322 = tensor.collapse_shape %cst_302 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_321, %collapsed_322 : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%29 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x32x16x16xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %33 = tensor.empty() : tensor<1x32x1x1xf32>
    %34 = linalg.fill ins(%cst_313 : f32) outs(%33 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_315 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x1x1xf32>
    %37 = tensor.empty() : tensor<1x8x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_301 : tensor<8xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_300 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x8x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x8x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_303 : tensor<32xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_299 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%42 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x32x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_298 : tensor<1x32x16x16xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%46 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_323 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed_324 = tensor.collapse_shape %cst_297 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %49 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_323, %collapsed_324 : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %50 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%49 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x32x16x16xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %50 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %53 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_315 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x1x1xf32>
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_296 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x8x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %55 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x8x1x1xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%57, %cst_295 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%42 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x32x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %52 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %cst_294 : tensor<1x32x16x16xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %62 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%61 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %48 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_325 = tensor.pad %63 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %collapsed_326 = tensor.collapse_shape %cst_293 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %64 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_325, %collapsed_326 : tensor<1x32x18x18xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %65 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%64 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x32x16x16xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %65 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %68 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%67, %13 : tensor<1x32x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_315 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x1x1xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%69, %cst_292 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x8x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %70 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x8x1x1xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_291 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%42 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x32x1x1xf32>
    %75 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %67 : tensor<1x32x1x1xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %cst_290 : tensor<1x32x16x16xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_304, %cst_303, %cst_303, %cst_304 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%76 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x32x16x16xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %63 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%25 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x32x16x16xf32>
    %79 = tensor.empty() : tensor<1x192x16x16xf32>
    %80 = linalg.fill ins(%cst_313 : f32) outs(%79 : tensor<1x192x16x16xf32>) -> tensor<1x192x16x16xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_289 : tensor<1x32x16x16xf32>, tensor<192x32x1x1xf32>) outs(%80 : tensor<1x192x16x16xf32>) -> tensor<1x192x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_288, %cst_287, %cst_287, %cst_288 : tensor<1x192x16x16xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%81 : tensor<1x192x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x192x16x16xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x192x16x16xf32>) outs(%79 : tensor<1x192x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x192x16x16xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %82 : tensor<1x192x16x16xf32>, tensor<1x192x16x16xf32>) outs(%79 : tensor<1x192x16x16xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x192x16x16xf32>
    %padded_327 = tensor.pad %84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x192x16x16xf32> to tensor<1x192x18x18xf32>
    %85 = tensor.empty() : tensor<1x192x8x8xf32>
    %86 = linalg.fill ins(%cst_313 : f32) outs(%85 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %collapsed_328 = tensor.collapse_shape %cst_286 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %87 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_327, %collapsed_328 : tensor<1x192x18x18xf32>, tensor<192x3x3xf32>) outs(%86 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %88 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %cst_288, %cst_287, %cst_287, %cst_288 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%87 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x192x8x8xf32>
    %89 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x192x8x8xf32>) outs(%85 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x192x8x8xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %88 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%85 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x192x8x8xf32>
    %91 = tensor.empty() : tensor<1x192x1x1xf32>
    %92 = linalg.fill ins(%cst_313 : f32) outs(%91 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %93 = tensor.empty() : tensor<8x8xf32>
    %94 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%90, %93 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%92 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x192x1x1xf32>) outs(%91 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x192x1x1xf32>
    %96 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%95, %cst_285 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x8x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %96 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x8x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_287 : tensor<192xf32>) outs(%91 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x1x1xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%98, %cst_284 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%99 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %101 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x192x1x1xf32>) outs(%91 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x192x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %90 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%85 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x192x8x8xf32>
    %103 = tensor.empty() : tensor<1x48x8x8xf32>
    %104 = linalg.fill ins(%cst_313 : f32) outs(%103 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_283 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %106 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%105 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %107 = tensor.empty() : tensor<1x288x8x8xf32>
    %108 = linalg.fill ins(%cst_313 : f32) outs(%107 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%106, %cst_280 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%109 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %110 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_329 = tensor.pad %112 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x10x10xf32>
    %collapsed_330 = tensor.collapse_shape %cst_277 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %113 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_329, %collapsed_330 : tensor<1x288x10x10xf32>, tensor<288x3x3xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%113 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %114 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %117 = tensor.empty() : tensor<1x288x1x1xf32>
    %118 = linalg.fill ins(%cst_313 : f32) outs(%117 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %119 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%116, %93 : tensor<1x288x8x8xf32>, tensor<8x8xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %121 = tensor.empty() : tensor<1x12x1x1xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_276 : tensor<12xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %cst_275 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %123 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_278 : tensor<288xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %cst_274 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %116 : tensor<1x288x1x1xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %130 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_273 : tensor<1x288x8x8xf32>, tensor<48x288x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %131 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%130 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %106 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%103 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x48x8x8xf32>
    %133 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%132, %cst_272 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %134 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%133 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %135 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %134 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_331 = tensor.pad %136 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x10x10xf32>
    %collapsed_332 = tensor.collapse_shape %cst_271 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %137 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_331, %collapsed_332 : tensor<1x288x10x10xf32>, tensor<288x3x3xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%137 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %138 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %141 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %93 : tensor<1x288x8x8xf32>, tensor<8x8xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %142 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%142, %cst_270 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %144 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %145 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %143 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%145, %cst_269 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %140 : tensor<1x288x1x1xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%148, %cst_268 : tensor<1x288x8x8xf32>, tensor<48x288x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %150 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%149 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %132 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%103 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x48x8x8xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%151, %cst_267 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %153 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%152 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %153 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_333 = tensor.pad %155 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x10x10xf32>
    %collapsed_334 = tensor.collapse_shape %cst_266 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %156 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_333, %collapsed_334 : tensor<1x288x10x10xf32>, tensor<288x3x3xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%156 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %157 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %160 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%159, %93 : tensor<1x288x8x8xf32>, tensor<8x8xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %161 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%161, %cst_265 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %164 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %162 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%164, %cst_264 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %166 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %159 : tensor<1x288x1x1xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%167, %cst_263 : tensor<1x288x8x8xf32>, tensor<48x288x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%168 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %151 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%103 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x48x8x8xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_262 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%171 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %172 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_335 = tensor.pad %174 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x10x10xf32>
    %collapsed_336 = tensor.collapse_shape %cst_261 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %175 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_335, %collapsed_336 : tensor<1x288x10x10xf32>, tensor<288x3x3xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%175 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %179 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %93 : tensor<1x288x8x8xf32>, tensor<8x8xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_260 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %183 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %181 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_259 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %178 : tensor<1x288x1x1xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_258 : tensor<1x288x8x8xf32>, tensor<48x288x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%187 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %170 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%103 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x48x8x8xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%189, %cst_257 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %191 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%190 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %191 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_337 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x10x10xf32>
    %collapsed_338 = tensor.collapse_shape %cst_256 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %194 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_337, %collapsed_338 : tensor<1x288x10x10xf32>, tensor<288x3x3xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%194 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %195 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %198 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %93 : tensor<1x288x8x8xf32>, tensor<8x8xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %199 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %cst_255 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %201 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %200 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%202, %cst_254 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %197 : tensor<1x288x1x1xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%205, %cst_253 : tensor<1x288x8x8xf32>, tensor<48x288x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %207 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%206 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %189 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%103 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x48x8x8xf32>
    %209 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%208, %cst_252 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%209 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %210 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_339 = tensor.pad %212 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x10x10xf32>
    %collapsed_340 = tensor.collapse_shape %cst_251 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %213 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_339, %collapsed_340 : tensor<1x288x10x10xf32>, tensor<288x3x3xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %214 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%213 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %214 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %217 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %93 : tensor<1x288x8x8xf32>, tensor<8x8xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %218 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_316 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_250 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %219 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_249 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %216 : tensor<1x288x1x1xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%224, %cst_248 : tensor<1x288x8x8xf32>, tensor<48x288x1x1xf32>) outs(%104 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %226 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_282, %cst_281, %cst_281, %cst_282 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%225 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x48x8x8xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %208 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%103 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x48x8x8xf32>
    %228 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%227, %cst_247 : tensor<1x48x8x8xf32>, tensor<288x48x1x1xf32>) outs(%108 : tensor<1x288x8x8xf32>) -> tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%228 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x8x8xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x8x8xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %229 : tensor<1x288x8x8xf32>, tensor<1x288x8x8xf32>) outs(%107 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x8x8xf32>
    %padded_341 = tensor.pad %231 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x288x8x8xf32> to tensor<1x288x12x12xf32>
    %232 = tensor.empty() : tensor<1x288x4x4xf32>
    %233 = linalg.fill ins(%cst_313 : f32) outs(%232 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    %collapsed_342 = tensor.collapse_shape %cst_246 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %234 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_341, %collapsed_342 : tensor<1x288x12x12xf32>, tensor<288x5x5xf32>) outs(%233 : tensor<1x288x4x4xf32>) -> tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_279, %cst_278, %cst_278, %cst_279 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%234 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x288x4x4xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x288x4x4xf32>) outs(%232 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x4x4xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %235 : tensor<1x288x4x4xf32>, tensor<1x288x4x4xf32>) outs(%232 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x4x4xf32>
    %238 = tensor.empty() : tensor<4x4xf32>
    %239 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%237, %238 : tensor<1x288x4x4xf32>, tensor<4x4xf32>) outs(%118 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %240 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x1x1xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_245 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%122 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x12x1x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %241 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%121 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x12x1x1xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%243, %cst_244 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%126 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %245 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x288x1x1xf32>) outs(%117 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x288x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %237 : tensor<1x288x1x1xf32>, tensor<1x288x4x4xf32>) outs(%232 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x288x4x4xf32>
    %247 = tensor.empty() : tensor<1x80x4x4xf32>
    %248 = linalg.fill ins(%cst_313 : f32) outs(%247 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_243 : tensor<1x288x4x4xf32>, tensor<80x288x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%249 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %251 = tensor.empty() : tensor<1x480x4x4xf32>
    %252 = linalg.fill ins(%cst_313 : f32) outs(%251 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %cst_240 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %254 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%253 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %254 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_343 = tensor.pad %256 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x8x8xf32>
    %collapsed_344 = tensor.collapse_shape %cst_237 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %257 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_343, %collapsed_344 : tensor<1x480x8x8xf32>, tensor<480x5x5xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%257 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %258 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %261 = tensor.empty() : tensor<1x480x1x1xf32>
    %262 = linalg.fill ins(%cst_313 : f32) outs(%261 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %263 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %238 : tensor<1x480x4x4xf32>, tensor<4x4xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %265 = tensor.empty() : tensor<1x20x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_236 : tensor<20xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%264, %cst_235 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %267 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_238 : tensor<480xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %cst_234 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %272 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %260 : tensor<1x480x1x1xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%273, %cst_233 : tensor<1x480x4x4xf32>, tensor<80x480x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%274 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %250 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%247 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x80x4x4xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_232 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%277 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %278 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_345 = tensor.pad %280 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x8x8xf32>
    %collapsed_346 = tensor.collapse_shape %cst_231 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %281 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_345, %collapsed_346 : tensor<1x480x8x8xf32>, tensor<480x5x5xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%281 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %282 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %285 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%284, %238 : tensor<1x480x4x4xf32>, tensor<4x4xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_230 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %287 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %290 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%289, %cst_229 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %284 : tensor<1x480x1x1xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%292, %cst_228 : tensor<1x480x4x4xf32>, tensor<80x480x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%293 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %276 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%247 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x80x4x4xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_227 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%296 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %297 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_347 = tensor.pad %299 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x8x8xf32>
    %collapsed_348 = tensor.collapse_shape %cst_226 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %300 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_347, %collapsed_348 : tensor<1x480x8x8xf32>, tensor<480x5x5xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%300 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %301 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %304 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %238 : tensor<1x480x4x4xf32>, tensor<4x4xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%305, %cst_225 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %306 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %309 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%308, %cst_224 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %303 : tensor<1x480x1x1xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_223 : tensor<1x480x4x4xf32>, tensor<80x480x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%312 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %295 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%247 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x80x4x4xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_222 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %316 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%315 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %316 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_349 = tensor.pad %318 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x8x8xf32>
    %collapsed_350 = tensor.collapse_shape %cst_221 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %319 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_349, %collapsed_350 : tensor<1x480x8x8xf32>, tensor<480x5x5xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%319 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %323 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %238 : tensor<1x480x4x4xf32>, tensor<4x4xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %325 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%324, %cst_220 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %325 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_219 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %322 : tensor<1x480x1x1xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_218 : tensor<1x480x4x4xf32>, tensor<80x480x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%331 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %314 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%247 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x80x4x4xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%333, %cst_217 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%334 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %335 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_351 = tensor.pad %337 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x8x8xf32>
    %collapsed_352 = tensor.collapse_shape %cst_216 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %338 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_351, %collapsed_352 : tensor<1x480x8x8xf32>, tensor<480x5x5xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%338 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %341 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %339 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %342 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%341, %238 : tensor<1x480x4x4xf32>, tensor<4x4xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %cst_215 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %344 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%346, %cst_214 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %341 : tensor<1x480x1x1xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_213 : tensor<1x480x4x4xf32>, tensor<80x480x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %351 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%350 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %352 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %333 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%247 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x80x4x4xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%352, %cst_212 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %354 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%353 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %355 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %354 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_353 = tensor.pad %356 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x8x8xf32>
    %collapsed_354 = tensor.collapse_shape %cst_211 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %357 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_353, %collapsed_354 : tensor<1x480x8x8xf32>, tensor<480x5x5xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%357 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %358 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %361 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %238 : tensor<1x480x4x4xf32>, tensor<4x4xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %362 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_317 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%362, %cst_210 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %365 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %363 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %366 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%365, %cst_209 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %360 : tensor<1x480x1x1xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %cst_208 : tensor<1x480x4x4xf32>, tensor<80x480x1x1xf32>) outs(%248 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %370 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %cst_242, %cst_241, %cst_241, %cst_242 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%369 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x80x4x4xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %352 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%247 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x80x4x4xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%371, %cst_207 : tensor<1x80x4x4xf32>, tensor<480x80x1x1xf32>) outs(%252 : tensor<1x480x4x4xf32>) -> tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %373 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%372 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x4x4xf32>
    %374 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373 : tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x4x4xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %373 : tensor<1x480x4x4xf32>, tensor<1x480x4x4xf32>) outs(%251 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x4x4xf32>
    %padded_355 = tensor.pad %375 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x480x4x4xf32> to tensor<1x480x6x6xf32>
    %376 = tensor.empty() : tensor<1x480x2x2xf32>
    %377 = linalg.fill ins(%cst_313 : f32) outs(%376 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    %collapsed_356 = tensor.collapse_shape %cst_206 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %378 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_355, %collapsed_356 : tensor<1x480x6x6xf32>, tensor<480x3x3xf32>) outs(%377 : tensor<1x480x2x2xf32>) -> tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_239, %cst_238, %cst_238, %cst_239 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%378 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x480x2x2xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x480x2x2xf32>) outs(%376 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %379 : tensor<1x480x2x2xf32>, tensor<1x480x2x2xf32>) outs(%376 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x2x2xf32>
    %382 = tensor.empty() : tensor<2x2xf32>
    %383 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%381, %382 : tensor<1x480x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %384 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x1x1xf32>
    %385 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%384, %cst_205 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%266 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x20x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %385 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%265 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x20x1x1xf32>
    %388 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%387, %cst_204 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%270 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %389 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x480x1x1xf32>) outs(%261 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x480x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %381 : tensor<1x480x1x1xf32>, tensor<1x480x2x2xf32>) outs(%376 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x480x2x2xf32>
    %391 = tensor.empty() : tensor<1x160x2x2xf32>
    %392 = linalg.fill ins(%cst_313 : f32) outs(%391 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    %393 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %cst_203 : tensor<1x480x2x2xf32>, tensor<160x480x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %394 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%393 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %395 = tensor.empty() : tensor<1x960x2x2xf32>
    %396 = linalg.fill ins(%cst_313 : f32) outs(%395 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%394, %cst_200 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %398 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%397 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %398 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_357 = tensor.pad %400 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_358 = tensor.collapse_shape %cst_197 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %401 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_357, %collapsed_358 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%401 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %404 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %402 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %405 = tensor.empty() : tensor<1x960x1x1xf32>
    %406 = linalg.fill ins(%cst_313 : f32) outs(%405 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %407 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%404, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %409 = tensor.empty() : tensor<1x40x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_196 : tensor<40xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%408, %cst_195 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %413 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412, %411 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %414 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_198 : tensor<960xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %415 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%413, %cst_194 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %416 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %417 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %404 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %418 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%417, %cst_193 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %419 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%418 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %420 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419, %394 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %421 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%420, %cst_192 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %422 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%421 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %423 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %424 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %422 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_359 = tensor.pad %424 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_360 = tensor.collapse_shape %cst_191 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %425 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_359, %collapsed_360 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %426 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%425 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %427 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %428 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %426 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %429 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%428, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %430 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %431 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%430, %cst_190 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %431 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%433, %cst_189 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %435 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %428 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_188 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %438 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%437 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %439 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %420 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %440 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%439, %cst_187 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %441 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%440 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %442 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %443 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %441 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_361 = tensor.pad %443 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_362 = tensor.collapse_shape %cst_186 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %444 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_361, %collapsed_362 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %445 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%444 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %446 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %447 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %445 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %448 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %449 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %450 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%449, %cst_185 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %452 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %450 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %453 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%452, %cst_184 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %454 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %455 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %447 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %456 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%455, %cst_183 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %457 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%456 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %458 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %439 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %459 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%458, %cst_182 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %460 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%459 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %461 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %462 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %460 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_363 = tensor.pad %462 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_364 = tensor.collapse_shape %cst_181 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %463 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_363, %collapsed_364 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %464 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%463 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %465 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %466 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %464 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %467 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%466, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %469 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%468, %cst_180 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %470 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %469 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %472 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%471, %cst_179 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %473 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %474 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %466 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %475 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%474, %cst_178 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%475 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %477 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %458 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %478 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%477, %cst_177 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %479 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%478 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %480 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %481 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %479 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_365 = tensor.pad %481 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_366 = tensor.collapse_shape %cst_176 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %482 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_365, %collapsed_366 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %483 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%482 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %484 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %485 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %483 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %486 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%485, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %488 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%487, %cst_175 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %490 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %488 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %491 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%490, %cst_174 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %492 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %493 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %485 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %494 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%493, %cst_173 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %495 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%494 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %496 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495, %477 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%496, %cst_172 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%497 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %500 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499, %498 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_367 = tensor.pad %500 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_368 = tensor.collapse_shape %cst_171 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %501 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_367, %collapsed_368 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %502 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%501 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %503 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %504 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %502 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %505 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%504, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %507 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%506, %cst_170 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %508 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %509 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %507 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %510 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%509, %cst_169 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %512 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %504 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %513 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%512, %cst_168 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %514 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%513 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %515 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %496 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %516 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%515, %cst_167 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %517 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%516 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %518 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %519 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %517 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_369 = tensor.pad %519 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_370 = tensor.collapse_shape %cst_166 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %520 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_369, %collapsed_370 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %521 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%520 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %522 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %523 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %521 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %524 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%523, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %525 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %526 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%525, %cst_165 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %528 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527, %526 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %529 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%528, %cst_164 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %530 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %523 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%531, %cst_163 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%532 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %534 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533, %515 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%534, %cst_162 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %536 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%535 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %537 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %538 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %536 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_371 = tensor.pad %538 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_372 = tensor.collapse_shape %cst_161 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %539 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_371, %collapsed_372 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %540 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%539 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %541 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %542 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %540 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %543 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%542, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %544 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %545 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%544, %cst_160 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %546 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %545 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %548 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%547, %cst_159 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %550 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %542 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %551 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%550, %cst_158 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %552 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%551 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %553 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %534 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %554 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%553, %cst_157 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %555 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%554 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %556 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %557 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %555 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_373 = tensor.pad %557 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_374 = tensor.collapse_shape %cst_156 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %558 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_373, %collapsed_374 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %559 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%558 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %560 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %561 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %559 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %562 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%561, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %563 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %564 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%563, %cst_155 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565, %564 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %567 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%566, %cst_154 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %561 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %570 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%569, %cst_153 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%392 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %571 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %cst_202, %cst_201, %cst_201, %cst_202 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%570 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x160x2x2xf32>
    %572 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571, %553 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%391 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x2x2xf32>
    %573 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%572, %cst_152 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %574 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%573 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %575 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %576 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %574 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_375 = tensor.pad %576 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_376 = tensor.collapse_shape %cst_151 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %577 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_375, %collapsed_376 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%396 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %578 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %cst_199, %cst_198, %cst_198, %cst_199 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%577 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x960x2x2xf32>
    %579 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x2x2xf32>
    %580 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579, %578 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %581 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%580, %382 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%406 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %582 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x1x1xf32>
    %583 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%582, %cst_150 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%410 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %584 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583 : tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x40x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %583 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x40x1x1xf32>
    %586 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%585, %cst_149 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%414 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %587 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x960x1x1xf32>) outs(%405 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x960x1x1xf32>
    %588 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587, %580 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%395 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x960x2x2xf32>
    %589 = tensor.empty() : tensor<1x224x2x2xf32>
    %590 = linalg.fill ins(%cst_313 : f32) outs(%589 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%588, %cst_148 : tensor<1x960x2x2xf32>, tensor<224x960x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %592 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%591 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %593 = tensor.empty() : tensor<1x1344x2x2xf32>
    %594 = linalg.fill ins(%cst_313 : f32) outs(%593 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    %595 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%592, %cst_145 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %596 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%595 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %597 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %598 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597, %596 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_377 = tensor.pad %598 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_378 = tensor.collapse_shape %cst_142 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %599 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_377, %collapsed_378 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %600 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%599 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %601 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %602 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %600 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %603 = tensor.empty() : tensor<1x1344x1x1xf32>
    %604 = linalg.fill ins(%cst_313 : f32) outs(%603 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %605 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%602, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %606 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %607 = tensor.empty() : tensor<1x56x1x1xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_141 : tensor<56xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %609 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%606, %cst_140 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %609 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_143 : tensor<1344xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %613 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%611, %cst_139 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614, %602 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %616 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%615, %cst_138 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %617 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%616 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %618 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %592 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %619 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%618, %cst_137 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %620 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%619 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %621 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %622 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621, %620 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_379 = tensor.pad %622 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_380 = tensor.collapse_shape %cst_136 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %623 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_379, %collapsed_380 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %624 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%623 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %625 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %626 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %624 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %627 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%626, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %628 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %629 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%628, %cst_135 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %630 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %629 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %632 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%631, %cst_134 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %633 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633, %626 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %635 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%634, %cst_133 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %636 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%635, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%635 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %637 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %618 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %638 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%637, %cst_132 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %639 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%638 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %640 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %641 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %639 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_381 = tensor.pad %641 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_382 = tensor.collapse_shape %cst_131 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %642 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_381, %collapsed_382 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %643 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%642 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %644 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %645 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %643 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %646 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%645, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %647 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %648 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%647, %cst_130 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %650 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %648 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %651 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%650, %cst_129 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %645 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %654 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%653, %cst_128 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %655 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%654 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %656 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %637 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %657 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%656, %cst_127 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %658 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%657 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %659 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %660 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659, %658 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_383 = tensor.pad %660 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_384 = tensor.collapse_shape %cst_126 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %661 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_383, %collapsed_384 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %662 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%661 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %663 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %664 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %662 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %665 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%664, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %666 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %667 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%666, %cst_125 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %668 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %667 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %670 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%669, %cst_124 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %671 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %672 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671, %664 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %673 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%672, %cst_123 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %674 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%673 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %675 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674, %656 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %676 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%675, %cst_122 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %677 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%676 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %678 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %679 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %677 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_385 = tensor.pad %679 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_386 = tensor.collapse_shape %cst_121 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %680 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_385, %collapsed_386 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %681 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%680 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %682 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %683 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682, %681 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %684 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%683, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %685 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %686 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%685, %cst_120 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %687 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %688 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %686 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %689 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%688, %cst_119 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %690 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690, %683 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %692 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%691, %cst_118 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %693 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%692 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %694 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %675 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %695 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%694, %cst_117 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %696 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%695, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%695 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %697 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %698 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697, %696 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_387 = tensor.pad %698 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_388 = tensor.collapse_shape %cst_116 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %699 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_387, %collapsed_388 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %700 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%699 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %701 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %702 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %700 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %703 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%702, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %704 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %705 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%704, %cst_115 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %706 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %707 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706, %705 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %708 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%707, %cst_114 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %709 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %710 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709, %702 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %711 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%710, %cst_113 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %712 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%711 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %713 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %694 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %714 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%713, %cst_112 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %715 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%714 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %716 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %717 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716, %715 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_389 = tensor.pad %717 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_390 = tensor.collapse_shape %cst_111 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %718 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_389, %collapsed_390 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %719 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%718 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %720 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %721 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720, %719 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %722 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%721, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %723 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %724 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%723, %cst_110 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %725 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %726 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725, %724 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %727 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%726, %cst_109 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %728 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %729 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728, %721 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %730 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%729, %cst_108 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %731 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%730 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %732 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731, %713 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %733 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%732, %cst_107 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %734 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%733 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %735 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %736 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %734 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_391 = tensor.pad %736 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_392 = tensor.collapse_shape %cst_106 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %737 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_391, %collapsed_392 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %738 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%737 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %739 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%738 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %740 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %738 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %741 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%740, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %742 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %743 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%742, %cst_105 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %744 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%743 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %745 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744, %743 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %746 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%745, %cst_104 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %747 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%746 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %748 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747, %740 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %749 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%748, %cst_103 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %750 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%749 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %751 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750, %732 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %752 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%751, %cst_102 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %753 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%752 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %754 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %755 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754, %753 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_393 = tensor.pad %755 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_394 = tensor.collapse_shape %cst_101 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %756 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_393, %collapsed_394 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %757 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%756 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %758 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %759 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758, %757 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %760 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%759, %382 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %761 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.divf %in, %cst_318 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %762 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%761, %cst_100 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %763 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %764 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763, %762 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %765 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%764, %cst_99 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %766 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%765 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %767 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %759 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %768 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%767, %cst_98 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%590 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %769 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%768 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x224x2x2xf32>
    %770 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %751 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%589 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x224x2x2xf32>
    %771 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%770, %cst_97 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%594 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %772 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%771 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x2x2xf32>
    %773 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x2x2xf32>
    %774 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773, %772 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%593 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_395 = tensor.pad %774 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x6x6xf32>
    %collapsed_396 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %775 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_395, %collapsed_396 : tensor<1x1344x6x6xf32>, tensor<1344x5x5xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %776 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x1344x1x1xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%775 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x1344x1x1xf32>
    %777 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %778 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %776 : tensor<1x1344x1x1xf32>, tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %779 = tensor.empty() : tensor<1x1xf32>
    %780 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%778, %779 : tensor<1x1344x1x1xf32>, tensor<1x1xf32>) outs(%604 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %781 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%780, %cst_95 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %782 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781 : tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x56x1x1xf32>
    %783 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782, %781 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%607 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x56x1x1xf32>
    %784 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%783, %cst_94 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784 : tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x1344x1x1xf32>
    %786 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%785, %778 : tensor<1x1344x1x1xf32>, tensor<1x1344x1x1xf32>) outs(%603 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1344x1x1xf32>
    %787 = tensor.empty() : tensor<1x384x1x1xf32>
    %788 = linalg.fill ins(%cst_313 : f32) outs(%787 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %789 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%786, %cst_93 : tensor<1x1344x1x1xf32>, tensor<384x1344x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %790 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%789 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %791 = tensor.empty() : tensor<1x2304x1x1xf32>
    %792 = linalg.fill ins(%cst_313 : f32) outs(%791 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %793 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%790, %cst_90 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %794 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%793 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %795 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %796 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795, %794 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_397 = tensor.pad %796 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_398 = tensor.collapse_shape %cst_87 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %797 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_397, %collapsed_398 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %798 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%797 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %799 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %800 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %798 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %801 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%800, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %802 = tensor.empty() : tensor<1x96x1x1xf32>
    %803 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_86 : tensor<96xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %804 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%801, %cst_85 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %805 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%804 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %806 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805, %804 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %807 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_88 : tensor<2304xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %808 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%806, %cst_84 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %809 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %810 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%809, %800 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %811 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%810, %cst_83 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %812 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%811 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %813 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812, %790 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %814 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%813, %cst_82 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %815 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%814 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %816 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %817 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %815 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_399 = tensor.pad %817 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_400 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %818 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_399, %collapsed_400 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %819 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%818 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %820 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %821 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %819 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %822 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%821, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %823 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%822, %cst_80 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %824 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %825 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824, %823 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %826 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%825, %cst_79 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %827 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %828 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%827, %821 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %829 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%828, %cst_78 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %830 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%829 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %831 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%830, %813 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %832 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%831, %cst_77 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %833 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%832, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%832 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %834 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %835 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834, %833 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_401 = tensor.pad %835 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_402 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %836 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_401, %collapsed_402 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %837 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%836 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %838 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%837 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %839 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838, %837 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %840 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%839, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %841 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%840, %cst_75 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %842 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%841 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %843 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842, %841 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %844 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%843, %cst_74 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %845 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %846 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%845, %839 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %847 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%846, %cst_73 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %848 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%847 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %849 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848, %831 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %850 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%849, %cst_72 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %851 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%850, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%850 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %852 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %853 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852, %851 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_403 = tensor.pad %853 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_404 = tensor.collapse_shape %cst_71 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %854 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_403, %collapsed_404 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %855 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%854, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%854 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %856 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %857 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856, %855 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %858 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%857, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %859 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%858, %cst_70 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %860 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %861 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%860, %859 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %862 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%861, %cst_69 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %863 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %864 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863, %857 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %865 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%864, %cst_68 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %866 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%865 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %867 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866, %849 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %868 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%867, %cst_67 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %869 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%868, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%868 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %870 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%869 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %871 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%870, %869 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_405 = tensor.pad %871 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_406 = tensor.collapse_shape %cst_66 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %872 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_405, %collapsed_406 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %873 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%872, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%872 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %874 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %875 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %873 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %876 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%875, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %877 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%876, %cst_65 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %878 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%877 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %879 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878, %877 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %880 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%879, %cst_64 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %881 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %882 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881, %875 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %883 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%882, %cst_63 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %884 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%883 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %885 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884, %867 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %886 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%885, %cst_62 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %887 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%886 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %888 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%887 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %889 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%888, %887 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_407 = tensor.pad %889 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_408 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %890 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_407, %collapsed_408 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %891 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%890, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%890 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %892 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %893 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892, %891 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %894 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%893, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %895 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%894, %cst_60 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %896 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%895 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %897 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%896, %895 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %898 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%897, %cst_59 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %899 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %900 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%899, %893 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %901 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%900, %cst_58 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %902 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%901 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %903 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902, %885 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %904 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%903, %cst_57 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %905 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%904 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %906 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%905 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %907 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906, %905 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_409 = tensor.pad %907 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_410 = tensor.collapse_shape %cst_56 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %908 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_409, %collapsed_410 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %909 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%908, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%908 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %910 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %911 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910, %909 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %912 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%911, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %913 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%912, %cst_55 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %914 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%913 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %915 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%914, %913 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %916 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%915, %cst_54 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %917 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%916 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %918 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%917, %911 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %919 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%918, %cst_53 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %920 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%919, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%919 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %921 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%920, %903 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %922 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%921, %cst_52 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %923 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%922 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %924 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%923 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %925 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%924, %923 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_411 = tensor.pad %925 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_412 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %926 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_411, %collapsed_412 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %927 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%926, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%926 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %928 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%927 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %929 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%928, %927 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %930 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%929, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %931 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%930, %cst_50 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %932 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %933 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%932, %931 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %934 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%933, %cst_49 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %935 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %936 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%935, %929 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %937 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%936, %cst_48 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %938 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%937, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%937 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %939 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%938, %921 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %940 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%939, %cst_47 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %941 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%940, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%940 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %942 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %943 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%942, %941 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_413 = tensor.pad %943 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_414 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %944 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_413, %collapsed_414 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %945 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%944 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %946 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %947 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%946, %945 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %948 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%947, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %949 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%948, %cst_45 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %950 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%949 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %951 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%950, %949 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %952 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%951, %cst_44 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %953 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%952 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %954 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%953, %947 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %955 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%954, %cst_43 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %956 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%955, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%955 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %957 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956, %939 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %958 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%957, %cst_42 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %959 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%958, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%958 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %960 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%959 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %961 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%960, %959 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_415 = tensor.pad %961 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_416 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %962 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_415, %collapsed_416 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %963 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%962, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%962 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %964 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%963 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %965 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%964, %963 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %966 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%965, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %967 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%966, %cst_40 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %968 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%967 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %969 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%968, %967 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %970 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%969, %cst_39 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %971 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%970 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %972 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%971, %965 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %973 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%972, %cst_38 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %974 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%973, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%973 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %975 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%974, %957 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %976 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%975, %cst_37 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %977 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%976, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%976 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %978 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%977 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %979 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%978, %977 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_417 = tensor.pad %979 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_418 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %980 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_417, %collapsed_418 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %981 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%980, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%980 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %982 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%981 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %983 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%982, %981 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %984 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%983, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %985 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%984, %cst_35 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %986 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%985 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %987 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%986, %985 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %988 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%987, %cst_34 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %989 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%988 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %990 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%989, %983 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %991 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%990, %cst_33 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %992 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%991 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %993 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%992, %975 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %994 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%993, %cst_32 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %995 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%994 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %996 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%995 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %997 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996, %995 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_419 = tensor.pad %997 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x5x5xf32>
    %collapsed_420 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %998 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_419, %collapsed_420 : tensor<1x2304x5x5xf32>, tensor<2304x5x5xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %999 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%998, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%998 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %1000 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%999 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %1001 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1000, %999 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %1002 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1001, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1003 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1002, %cst_30 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1004 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1003 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %1005 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1004, %1003 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %1006 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1005, %cst_29 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1007 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1006 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %1008 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1007, %1001 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %1009 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1008, %cst_28 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1010 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1009, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1009 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x384x1x1xf32>
    %1011 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1010, %993 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%787 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x384x1x1xf32>
    %1012 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1011, %cst_27 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1013 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1012, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1012 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %1014 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1013 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %1015 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1014, %1013 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_421 = tensor.pad %1015 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_422 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1016 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_421, %collapsed_422 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1017 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1016, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1016 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2304x1x1xf32>
    %1018 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1017 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %1019 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018, %1017 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %1020 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1019, %779 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%792 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1021 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1020, %cst_25 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%803 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1022 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1021 : tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x96x1x1xf32>
    %1023 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022, %1021 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%802 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x96x1x1xf32>
    %1024 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1023, %cst_24 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%807 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1025 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1024 : tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2304x1x1xf32>
    %1026 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1025, %1019 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%791 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2304x1x1xf32>
    %1027 = tensor.empty() : tensor<1x640x1x1xf32>
    %1028 = linalg.fill ins(%cst_313 : f32) outs(%1027 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %1029 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1026, %cst_23 : tensor<1x2304x1x1xf32>, tensor<640x2304x1x1xf32>) outs(%1028 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1030 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1029, %cst_22, %cst_21, %cst_21, %cst_22 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1029 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x640x1x1xf32>
    %1031 = tensor.empty() : tensor<1x3840x1x1xf32>
    %1032 = linalg.fill ins(%cst_313 : f32) outs(%1031 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1033 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1030, %cst_20 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1034 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1033, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1033 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x3840x1x1xf32>
    %1035 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1034 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1036 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1035, %1034 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_423 = tensor.pad %1036 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_424 = tensor.collapse_shape %cst_17 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1037 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_423, %collapsed_424 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1038 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1037, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1037 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x3840x1x1xf32>
    %1039 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1038 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1040 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1039, %1038 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %1041 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1040, %779 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1042 = tensor.empty() : tensor<1x160x1x1xf32>
    %1043 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_201 : tensor<160xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1044 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1041, %cst_16 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1043 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1045 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1044 : tensor<1x160x1x1xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x160x1x1xf32>
    %1046 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1045, %1044 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x1x1xf32>
    %1047 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18 : tensor<3840xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1048 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1046, %cst_15 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1047 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1049 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1050 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1049, %1040 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %1051 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1050, %cst_14 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1028 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1052 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1051, %cst_22, %cst_21, %cst_21, %cst_22 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1051 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x640x1x1xf32>
    %1053 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1052, %1030 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1027 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x640x1x1xf32>
    %1054 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1053, %cst_13 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1055 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1054, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1054 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x3840x1x1xf32>
    %1056 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1055 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1057 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1056, %1055 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_425 = tensor.pad %1057 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_426 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1058 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_425, %collapsed_426 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1059 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1058, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1058 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x3840x1x1xf32>
    %1060 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1059 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1061 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1060, %1059 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %1062 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1061, %779 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1063 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1062, %cst_11 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1043 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1064 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1063 : tensor<1x160x1x1xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x160x1x1xf32>
    %1065 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1064, %1063 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x1x1xf32>
    %1066 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1065, %cst_10 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1047 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1067 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1066 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1068 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1067, %1061 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %1069 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1068, %cst_9 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1028 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1070 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1069, %cst_22, %cst_21, %cst_21, %cst_22 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1069 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x640x1x1xf32>
    %1071 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1070, %1053 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1027 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x640x1x1xf32>
    %1072 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1071, %cst_8 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1073 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1072, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1072 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x3840x1x1xf32>
    %1074 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1073 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1075 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1074, %1073 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_427 = tensor.pad %1075 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_313 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_428 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1076 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_427, %collapsed_428 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1077 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1076, %cst_19, %cst_18, %cst_18, %cst_19 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1076 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x3840x1x1xf32>
    %1078 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1077 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1079 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1078, %1077 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %1080 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1079, %779 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1032 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1081 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1080, %cst_6 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1043 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1082 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1081 : tensor<1x160x1x1xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x160x1x1xf32>
    %1083 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1082, %1081 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1042 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x160x1x1xf32>
    %1084 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1083, %cst_5 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1047 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1085 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1084 : tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x3840x1x1xf32>
    %1086 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1085, %1079 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1031 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x3840x1x1xf32>
    %1087 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1086, %cst_4 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1028 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1088 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1087, %cst_22, %cst_21, %cst_21, %cst_22 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1087 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x640x1x1xf32>
    %1089 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1088, %1071 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1027 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x640x1x1xf32>
    %1090 = tensor.empty() : tensor<1x2560x1x1xf32>
    %1091 = linalg.fill ins(%cst_313 : f32) outs(%1090 : tensor<1x2560x1x1xf32>) -> tensor<1x2560x1x1xf32>
    %1092 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1089, %cst_3 : tensor<1x640x1x1xf32>, tensor<2560x640x1x1xf32>) outs(%1091 : tensor<1x2560x1x1xf32>) -> tensor<1x2560x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1093 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1092, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x2560x1x1xf32>, tensor<2560xf32>, tensor<2560xf32>, tensor<2560xf32>, tensor<2560xf32>) outs(%1092 : tensor<1x2560x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %in_431: f32, %in_432: f32, %in_433: f32, %out: f32):
      %1103 = arith.truncf %cst_314 : f64 to f32
      %1104 = arith.addf %in_433, %1103 : f32
      %1105 = math.rsqrt %1104 : f32
      %1106 = arith.subf %in, %in_432 : f32
      %1107 = arith.mulf %1106, %1105 : f32
      %1108 = arith.mulf %1107, %in_430 : f32
      %1109 = arith.addf %1108, %in_431 : f32
      linalg.yield %1109 : f32
    } -> tensor<1x2560x1x1xf32>
    %1094 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1093 : tensor<1x2560x1x1xf32>) outs(%1090 : tensor<1x2560x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1103 = arith.negf %in : f32
      %1104 = math.exp %1103 : f32
      %1105 = arith.addf %1104, %cst_319 : f32
      %1106 = arith.divf %cst_319, %1105 : f32
      linalg.yield %1106 : f32
    } -> tensor<1x2560x1x1xf32>
    %1095 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1094, %1093 : tensor<1x2560x1x1xf32>, tensor<1x2560x1x1xf32>) outs(%1090 : tensor<1x2560x1x1xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.mulf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x2560x1x1xf32>
    %1096 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1095, %779 : tensor<1x2560x1x1xf32>, tensor<1x1xf32>) outs(%1091 : tensor<1x2560x1x1xf32>) -> tensor<1x2560x1x1xf32>
    %collapsed_429 = tensor.collapse_shape %1096 [[0], [1, 2, 3]] : tensor<1x2560x1x1xf32> into tensor<1x2560xf32>
    %1097 = tensor.empty() : tensor<2560x1000xf32>
    %1098 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2560xf32>) outs(%1097 : tensor<2560x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2560x1000xf32>
    %1099 = tensor.empty() : tensor<1x1000xf32>
    %1100 = linalg.fill ins(%cst_313 : f32) outs(%1099 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1101 = linalg.matmul ins(%collapsed_429, %1098 : tensor<1x2560xf32>, tensor<2560x1000xf32>) outs(%1100 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1102 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%1101, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%1099 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_430: f32, %out: f32):
      %1103 = arith.addf %in, %in_430 : f32
      linalg.yield %1103 : f32
    } -> tensor<1x1000xf32>
    return %1102 : tensor<1x1000xf32>
  }
}
